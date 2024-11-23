`timescale 1ns / 1ps

module top(
    input        clk,
    input        sw,
    input [3:0]  col,
    
    output [3:0] row,
    output [11:0]led,
    output [7:0] seg,
    output [5:0] an,
    
    input        uart_rxd,           //UART接收端口
    output       uart_txd,            //UART发送端口
    
    output    uart2_txd,
    output Hsync,
    output Vsync,
    output [3:0] vgaRed,
    output [3:0] vgaGreen,
    output [3:0] vgaBlue
    );

wire rst_n, key_flag;
wire [7:0] trans_data;
reg [7:0] in_data[31:0];
reg [4:0] addr = 0;
wire [4:0] addr_cal;
wire flag;
wire state;
wire [15:0]result; 
wire tx_busy;
reg flag_reg1,flag_reg2,clean_reg1,clean_reg2;
wire flag_en, clean_en;
wire [10:0]  pixel_xpos;
wire [10:0]  pixel_ypos;
wire         vga_en;
wire [2:0] pixel_data;
wire [3:0] data;

//parameter define
parameter  CLK_FREQ = 50_000_000;         //定义系统时钟频率
parameter  UART_BPS = 115200;           //定义串口波特率

integer i;
initial begin // 数组初始化
    for(i = 0; i < 32; i = i + 1) begin
	   in_data[i] <= 0;
	end
end

//initial begin // 数组初始化
//    in_data[0]  <= 8'd40;
//    in_data[1]  <= 8'd49;
//    in_data[2]  <= 8'd43;
//    in_data[3]  <= 8'd50;
//    in_data[4]  <= 8'd51;
//    in_data[5]  <= 8'd41;
//    in_data[6]  <= 8'd42;
//    in_data[7]  <= 8'd40;
//    in_data[8]  <= 8'd52;
//    in_data[9]  <= 8'd53;
//    in_data[10] <= 8'd43;
//    in_data[11] <= 8'd54;
//    in_data[12] <= 8'd55;
//    in_data[13] <= 8'd41;
//    in_data[14] <= 8'd45;
//    in_data[15] <= 8'd56;
//    in_data[16] <= 8'd57;
//end

//捕获flag上升沿，得到一个时钟周期的脉冲信号
assign flag_en = (~flag_reg2) & flag_reg1;
assign clean_en = (~clean_reg2) & clean_reg1;

//对发送使能信号uart_en延迟两个时钟周期
always @(posedge clk) begin         
    flag_reg1 <= flag;                               
    flag_reg2 <= flag_reg1;    
    clean_reg1 <= state;                               
    clean_reg2 <= clean_reg1;    
end

always @(posedge clk)
begin
//    if(clean_en)begin
//        addr <= 0;
//        for(i = 0; i < 32; i = i + 1) 
//	   in_data[i] <= 0;
//    end
//    else 
    if(flag_en)begin
        in_data[addr] <= trans_data;   
        if(addr == 5'd31)
            addr <= 0;
        else
            addr <= addr + 1;
    end
    else begin
        addr <= addr;
        in_data[addr] <= in_data[addr];
    end
end

//串口发送模块    
uart_send #(                          
    .CLK_FREQ       (CLK_FREQ),         //设置系统时钟频率
    .UART_BPS       (UART_BPS))         //设置串口发送波特率
u_uart_send(                 
    .sys_clk        (clk),
    .sys_rst_n      (1),
    .uart_en        (flag),
    .uart_din       (trans_data),
    .uart_tx_busy   (tx_busy),     //按键输入太慢，没必要busy（不考虑同时按下）
    .uart_txd       (uart_txd)
    );
    
ip_disp i_disp(
    .clk(clk),
    .rst_n(state),
    .dispdata(result),
    .seg(seg),
    .an(an)
    );
    
v_ajxd i_ajxd(        //调用按键消抖动IP
    .clk(clk),
    .col(col),
    .row(row),
    .flag(flag),
    .led(led),
    .data(data),
    .trans_data(trans_data)
    );
    
process1 i_process1(
	.clk       (clk   ),
	.rst_n     (rst_n ),
	.addr      (addr_cal  ),
	.data      (in_data[addr_cal]),
	.calculate_end     (state),
	.data_cal (result),
	.length    (addr)
    );
    
debounce_sw i_debounce_sw(
    .sys_clk        (clk  ),
    .key            (sw      ),         //外部输入的按键值
    .key_value      (rst_n),   //消抖后的按键值
    .key_flag       (key_flag)     //消抖后的按键值的效标志
);

vga_dri i_vga_dri(
    .vga_clk        (clk   ),    //时钟
    .pixel_data     (pixel_data),  //像素数据
    .Hsync          (Hsync),
    .Vsync          (Vsync),
    .pixel_xpos     (pixel_xpos),  //当前像素点横坐标
    .pixel_ypos     (pixel_ypos),  //当前像素点纵坐标   
    .vga_en         (vga_en    ),      //vga 数据使能信号
    .vgaRed         (vgaRed    ),
    .vgaGreen       (vgaGreen  ),
    .vgaBlue        (vgaBlue   )
    );
    
vga_disp i_vga_disp(
    .clk            (clk       ),
    .pixel_xpos     (pixel_xpos),   //像素点横坐标
    .pixel_ypos     (pixel_ypos),   //像素点纵坐标    
    .in_flag        (flag_en   ),    //接收一帧数据完成标志
    .in_data        (data   ),    //接收的数据
    .pixel_data     (pixel_data)    //像素点数据,   
     );

uartsend i_uartsend(
    .sys_clk        (clk  ),
    .sys_rst_n      (state),
    .data           (result),
    .uart_txd       (uart2_txd )
);

endmodule
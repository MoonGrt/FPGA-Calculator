module uartsend(
    input           sys_clk,
    input           sys_rst_n,
    input  [15:0]   data,
    output reg      uart_txd = 0
);

//parameter define
parameter  CLK_FREQ = 50000000;            //系统时钟频率
parameter  UART_BPS = 115200;                //串口波特率
localparam  BPS_CNT  = CLK_FREQ/UART_BPS;   //为得到指定波特率，对系统时钟计数BPS_CNT次

//reg define
reg        uart_en_d0 = 0; 
reg        uart_en_d1 = 0;  
reg [15:0] clk_cnt = 0;                         //系统时钟计数器
reg [ 3:0] tx_cnt = 0;                          //发送数据计数器
reg        tx_flag = 0, flag0 = 0, flag1 = 0;   //发送过程标志信号
reg [ 7:0] tx_data = 0;                         //寄存发送数据
reg   [1:0]    cnt = 0;
reg         send_end;

//wire define
wire         en_flag;
wire [7:0]   data_trans [1:0];

assign data_trans[0] = data[7:0];
assign data_trans[1] = data[15:8];

//*****************************************************
//**                    main code
//*****************************************************

//捕获uart_en上升沿，得到一个时钟周期的脉冲信号
assign en_flag = (~uart_en_d1 & uart_en_d0) || (~flag0 & flag1);

//对发送使能信号uart_en延迟两个时钟周期
always @(posedge sys_clk or negedge sys_rst_n) begin         
    if (!sys_rst_n) begin
        uart_en_d0 <= 1'b0;                                  
        uart_en_d1 <= 1'b0;
    end                                                      
    else begin                                               
        uart_en_d0 <= sys_rst_n;                               
        uart_en_d1 <= uart_en_d0;               
        flag0 <= tx_flag;
        flag1 <= flag0;
    end
end

//当脉冲信号en_flag到达时,寄存待发送的数据，并进入发送过程          
always @(posedge sys_clk or negedge sys_rst_n) begin         
    if (!sys_rst_n) begin                                  
        tx_flag <= 1'b0;
        tx_data <= 8'd0;
        send_end <= 0;
    end 
    else if (en_flag && ~send_end) begin                 //检测到发送使能上升沿                      
            tx_flag <= 1'b1;                //进入发送过程，标志位tx_flag拉高
            tx_data <= data_trans[cnt];            //寄存待发送的数据
            if(cnt == 1)
                send_end <= 1;
            else
                cnt <= cnt + 1;
        end
        else if ((tx_cnt == 4'd9) && (clk_cnt == BPS_CNT -(BPS_CNT/16))) begin                  //计数到停止位结束时，停止发送过程                      
            tx_flag <= 1'b0;                //发送过程结束，标志位tx_flag拉低
            tx_data <= 8'd0;
        end
        else begin
            tx_flag <= tx_flag;
            tx_data <= tx_data;
        end 
end

//进入发送过程后，启动系统时钟计数器
always @(posedge sys_clk or negedge sys_rst_n) begin         
    if (!sys_rst_n)                             
        clk_cnt <= 16'd0;                                  
    else if (tx_flag) begin                 //处于发送过程
        if (clk_cnt < BPS_CNT - 1)
            clk_cnt <= clk_cnt + 1'b1;
        else
            clk_cnt <= 16'd0;               //对系统时钟计数达一个波特率周期后清零
    end
    else                             
        clk_cnt <= 16'd0; 				    //发送过程结束
end

//进入发送过程后，启动发送数据计数器
always @(posedge sys_clk or negedge sys_rst_n) begin         
    if (!sys_rst_n)                             
        tx_cnt <= 4'd0;
    else if (tx_flag) begin                 //处于发送过程
        if (clk_cnt == BPS_CNT - 1)			//对系统时钟计数达一个波特率周期
            tx_cnt <= tx_cnt + 1'b1;		//此时发送数据计数器加1
        else
            tx_cnt <= tx_cnt;       
    end
    else                              
        tx_cnt  <= 4'd0;				    //发送过程结束
end

//根据发送数据计数器来给uart发送端口赋值
always @(posedge sys_clk or negedge sys_rst_n) begin        
    if (!sys_rst_n)  
        uart_txd <= 1'b1;        
    else if (tx_flag)
        case(tx_cnt)
            4'd0: uart_txd <= 1'b0;         //起始位 
            4'd1: uart_txd <= tx_data[0];   //数据位最低位
            4'd2: uart_txd <= tx_data[1];
            4'd3: uart_txd <= tx_data[2];
            4'd4: uart_txd <= tx_data[3];
            4'd5: uart_txd <= tx_data[4];
            4'd6: uart_txd <= tx_data[5];
            4'd7: uart_txd <= tx_data[6];
            4'd8: uart_txd <= tx_data[7];   //数据位最高位
            4'd9: uart_txd <= 1'b1;         //停止位
            default: ;
        endcase
    else 
        uart_txd <= 1'b1;                   //空闲时发送端口为高电平
end

endmodule	          
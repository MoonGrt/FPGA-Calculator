`timescale 1ns / 1ps

module sim_uart;

//parameter define
parameter  CLK_FREQ = 50000000;         //定义系统时钟频率
parameter  UART_BPS = 115200;           //定义串口波特率

reg       clk;
reg [15:0] send_data = 16'h9955;              //UART发送数据
reg       state;
wire      uart_txd;

// Generate the 50.0MHz CPU/AXI clk
initial
begin
   clk <= 1'b0;
   forever
   begin
      clk <= 1'b1;
      #10;
      clk <= 1'b0;
      #10;
   end
end

initial
begin
    state <= 0;
    #1000;
    state <= 1;
end

//串口发送模块    
uart_send #(                          
    .CLK_FREQ       (CLK_FREQ),         //设置系统时钟频率
    .UART_BPS       (UART_BPS))         //设置串口发送波特率
u_uart_send(                 
    .sys_clk        (clk),
    .state        (state),
    .data       (send_data),
    .uart_txd       (uart_txd)
    );
    
endmodule

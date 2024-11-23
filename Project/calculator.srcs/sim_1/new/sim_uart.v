`timescale 1ns / 1ps

module sim_uart;

//parameter define
parameter  CLK_FREQ = 50000000;         //����ϵͳʱ��Ƶ��
parameter  UART_BPS = 115200;           //���崮�ڲ�����

reg       clk;
reg [15:0] send_data = 16'h9955;              //UART��������
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

//���ڷ���ģ��    
uart_send #(                          
    .CLK_FREQ       (CLK_FREQ),         //����ϵͳʱ��Ƶ��
    .UART_BPS       (UART_BPS))         //���ô��ڷ��Ͳ�����
u_uart_send(                 
    .sys_clk        (clk),
    .state        (state),
    .data       (send_data),
    .uart_txd       (uart_txd)
    );
    
endmodule

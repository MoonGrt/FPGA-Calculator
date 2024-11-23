`timescale 1ns / 1ps

module sim_sw;

reg       clk;
reg       sw;
wire      key_value;
wire      key_flag;

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
    sw <= 1'b0;
    #100;
    sw <= 1'b1;
    #1000_0000
    sw <= 0;
end

debounce_sw i_debounce_sw(
    .sys_clk        (clk  ),
    .key            (sw      ),         //�ⲿ����İ���ֵ
    .key_value      (key_value),   //������İ���ֵ
    .key_flag       (key_flag )     //������İ���ֵ��Ч��־
);

endmodule

`timescale 1ns / 1ps

module sim1;

reg             clk;
reg             rst_n;
wire [4:0]      addr;    
reg [4:0]       length = 5'd18;     
reg [7:0]       data_array[31:0];
reg [4:0]       cnt=0;
wire  [15:0]     read_data;
wire            state;

integer i;
//initial begin // 数组初始化
//    for(i = 0; i < 32; i = i + 1) begin
//	   data_array[i] <= 0;
//	end
//    data_array[0]  <= 8'd40;
//    data_array[1]  <= 8'd49;
//    data_array[2]  <= 8'd43;
//    data_array[3]  <= 8'd50;
//    data_array[4]  <= 8'd42;
//    data_array[5]  <= 8'd51;
//    data_array[6]  <= 8'd41;
//end

//initial begin // 数组初始化
//    for(i = 0; i < 32; i = i + 1) begin
//	   data_array[i] <= 0;
//	end
//    data_array[0]  <= 8'd49;
//    data_array[1]  <= 8'd43;
//    data_array[2]  <= 8'd50;
//    data_array[3]  <= 8'd42;
//    data_array[4]  <= 8'd51;
//end

//initial begin // 数组初始化
//    for(i = 0; i < 32; i = i + 1) begin
//	   data_array[i] <= 0;
//	end
//    data_array[0]  <= 8'd40;
//    data_array[1]  <= 8'd49;
//    data_array[2]  <= 8'd43;
//    data_array[3]  <= 8'd50;
//    data_array[4]  <= 8'd51;
//    data_array[5]  <= 8'd41;
//    data_array[6]  <= 8'd42;
//    data_array[7]  <= 8'd40;
//    data_array[8]  <= 8'd52;
//    data_array[9]  <= 8'd53;
//    data_array[10] <= 8'd43;
//    data_array[11] <= 8'd54;
//    data_array[12] <= 8'd55;
//    data_array[13] <= 8'd41;
//    data_array[14] <= 8'd45;
//    data_array[15] <= 8'd56;
//    data_array[16] <= 8'd57;
//end

initial begin // 数组初始化
    for(i = 0; i < 32; i = i + 1) begin
	   data_array[i] <= 0;
	end
    data_array[0]  <= 8'd49;
    data_array[1]  <= 8'd43;
    data_array[2]  <= 8'd40;
    data_array[3]  <= 8'd49;
    data_array[4]  <= 8'd43;
    data_array[5]  <= 8'd50;
    data_array[6]  <= 8'd51;
    data_array[7]  <= 8'd41;
    data_array[8]  <= 8'd42;
    data_array[9]  <= 8'd40;
    data_array[10] <= 8'd52;
    data_array[11] <= 8'd53;
    data_array[12] <= 8'd43;
    data_array[13] <= 8'd54;
    data_array[14] <= 8'd55;
    data_array[15] <= 8'd41;
    data_array[16] <= 8'd45;
    data_array[17] <= 8'd56;
    data_array[18] <= 8'd57;
end

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
    rst_n <= 1'b0;
    #100;
    rst_n <= 1'b1;
    #500;
end

process1 i_process1(
	.clk       (clk   ),
	.rst_n     (rst_n ),
	.addr      (addr  ),
	.data      (data_array[addr]),
	.calculate_end     (state),
	.data_cal (read_data),
	.length    (length)
    );
    
endmodule
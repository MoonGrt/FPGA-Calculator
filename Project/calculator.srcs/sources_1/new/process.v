`timescale 1ns / 1ps

module process(
	input              clk,
	input              rst_n,
	input [7:0]        data,
	output reg [4:0]   addr,
	input  [4:0]       cnt,
	output             proc_end,
	output             cnt3,
	output             cnt4,
	output             data_length,
	output [7:0]        digit_reg,
	output reg [7:0]   data_array = 0,
	input [4:0]        length
    );
	/*
	debounce_explicit
	(
		.clk(clk),
		.rst_n(rst_n),
		.sw(sw),
		.db_level(),
		.db_tick(key_tick)
    );
	*/
	 
//FSM symbolic declaration
localparam[2:0]   idle = 3'd0,
			      copy = 3'd1,
			      recognize = 3'd2,
			      process = 3'd3,
			      calculate = 3'd4;
			      
//FSM symbolic declaration
localparam[2:0]   IDLE = 3'd0;
			      
reg[2:0] state, state_nxt, state_cal, state_cal_nxt;
reg copy_flag, copy_end;
reg recog_flag, recog_end;
reg proc_flag, proc_end;
reg calculate_end;
reg [7:0] data_reg[31:0];
reg [4:0] interval[15:0];
reg [1:0] data_length;
reg [7:0] symbol [15:0];  // 最多支持15个符号
reg [7:0] digit_data   [15:0];        // 单个数最大为255
reg [7:0] digit_reg = 0;
reg [1:0] priority [15:0];
reg [4:0] cnt1, cnt2, cnt3, cnt4, cnt5, cnt6;
reg [3:0] nest;
//reg [7:0] equation[31:0];
//reg [7:0] num_reg;

integer i;
initial begin // 数组初始化
    for(i = 0; i < 32; i = i + 1) begin
	   data_reg[i] <= 0;
	   //equation[i] <= 0;
	end
	for(i = 0; i < 16; i = i + 1) begin
	   symbol[i] <= 0;
	   digit_data[i] <= 0;
	   interval[i] <= 0;
	end
end

//test
always @(*) begin // 读取数据用组合逻辑
    if(!rst_n && !recog_end)
    	data_array<=0;
    else 
    	data_array<=digit_data[cnt];
end

//FSM and timer register
always @(posedge clk or negedge rst_n) begin
if(!rst_n)
	state<=idle;
else 
	state<=state_nxt;
end

//FSM control path next-state logic
always@*
    case(state)
        idle:
            if(rst_n) state_nxt = copy;
            else state_nxt = idle;
        copy:
            if(copy_end) state_nxt = recognize;
            else state_nxt = copy;
        recognize:
            if(recog_end) state_nxt = process;
            else state_nxt = recognize;
        process:
            if(proc_end) state_nxt = calculate;
            else state_nxt = process;
        calculate:
            if(calculate_end) state_nxt = calculate;
            else state_nxt = calculate;
        default: state_nxt = idle;
    endcase

// copy
always@(negedge clk or negedge rst_n) begin
    if(!rst_n) begin
        copy_end <= 0;
        addr <= 0;
    end
    else if(state == copy) begin
        data_reg[addr] <= data; // copy data
        if(addr == length)begin
            copy_end <= 1;
            addr <= 0;    
        end
        else 
            addr <= addr + 1;
    end    
    else begin
        //copy_end <= 0;
        addr <= 0;    
    end
end

// recognize -> 将数字和符号分开
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        recog_end <= 0;
        cnt1 <= 0;
        cnt2 <= 0;
    end
    else if(state == recognize) begin
        if(data_reg[cnt1]==47||data_reg[cnt1]==41||data_reg[cnt1]==40||data_reg[cnt1]==42||data_reg[cnt1]==45||data_reg[cnt1]==43) 
        begin
            interval[cnt2] <= cnt1;
            if(cnt2 == 4'd15)
                cnt2 <= 0;        //数据溢出
            else
                cnt2 <= cnt2 + 1;
        end
        else ;
        if(cnt1 == length)
            recog_end <= 1;
        else 
            cnt1 <= cnt1 + 1;
    end    
    else begin
        //recog_end <= 0;
        cnt1 <= 0;
    end
end

// process -> 将数字和符号分开
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        proc_end <= 0;
        data_length <= 0;
        cnt3 <= 0;
        cnt4 <= 0;
    end
    else if(state == process) begin
        if(cnt3 < cnt2 - 1)
            cnt3 <= cnt3 + 1;
        else
            proc_end <= 1;
    end    
    else begin
        //proc_end <= 0;
        cnt3 <= 0;    
    end
end

always @(*) begin
    if(cnt3 == 0)
        data_length <= interval[cnt3];
    else
        data_length <= interval[cnt3] - interval[cnt3 - 1] - 1;
    symbol[cnt3] <= data_reg[interval[cnt3]];
    if(data_length) begin
        case(data_length) // 对应数字
            2'd1:
                digit_reg = (data_reg[interval[cnt3] - 1] - 8'd48);
            2'd2:
                digit_reg = (data_reg[interval[cnt3] - 1] - 8'd48) + (data_reg[interval[cnt3] - 2] - 8'd48) * 10;
            2'd3:
                digit_reg = (data_reg[interval[cnt3] - 1] - 8'd48) + (data_reg[interval[cnt3] - 2] - 8'd48) * 10 + (data_reg[interval[cnt3] - 3] - 8'd48) * 100;
            default: ;
        endcase
        digit_data[cnt4] = digit_reg;
        if(cnt4 == 4'd15)
            cnt4 = 0;    //数据溢出
        else
            cnt4 = cnt4 + 1; 
    end
end





//// recognize
//always@(posedge clk or negedge rst_n) begin
//    if(!rst_n) begin
//        recog_end <= 0;
//        cnt1 <= 0;
//        cnt2 <= 0;
//        num_reg <= 0;
//    end
//    else if(state == recognize) begin
//        if(data_reg[cnt1]==47||data_reg[cnt1]==41||data_reg[cnt1]==40||data_reg[cnt1]==42||data_reg[cnt1]==45||data_reg[cnt1]==43) 
//        begin
//            equation[cnt2] <= data_reg[cnt1];
//            num_reg <= 0;
//            if(cnt2 == 5'd31)
//                cnt2 <= 0;        //数据溢出
//            else
//                cnt2 <= cnt2 + 1;
//        end
//        else begin
//            num_reg <= num_reg * 10 + (data_reg[cnt1] - 8'd48);
//            if(data_reg[cnt1+1]==47||data_reg[cnt1+1]==41||data_reg[cnt1+1]==40||data_reg[cnt1+1]==42||data_reg[cnt1+1]==45||data_reg[cnt1+1]==43) 
//            begin
//                equation[cnt2] <= num_reg;
//                if(cnt2 == 5'd31)
//                    cnt2 <= 0;        //数据溢出
//                else
//                    cnt2 <= cnt2 + 1;
//            end
//            else
//                cnt2 <= cnt2;
//        end
//        if(cnt1 == length)
//            recog_end <= 1;
//        else 
//            cnt1 <= cnt1 + 1;
//    end    
//    else begin
//        //recog_end <= 0;
//        cnt1 <= 0;
//        cnt2 <= 0;
//        num_reg <= 0;
//    end
//end





function [7:0] COMPUTE;  // + 00; - 01. * 10, / 11
input [7:0] A, B;
input [1:0] operation;
begin 
    case(operation)
        2'b00: COMPUTE = A + B;
        2'b01: COMPUTE = A - B;
        2'b10: COMPUTE = A * B;
        2'b11: COMPUTE = A / B;
        default:;
    endcase
end 
endfunction 



endmodule

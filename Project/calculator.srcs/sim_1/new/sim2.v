`timescale 1ns / 1ps

module sim2;

//FSM symbolic declaration
localparam[2:0]   idle = 3'd0,
			      copy = 3'd1,
			      transfer = 3'd2,
			      transfer1 = 3'd3,
			      calculate = 3'd4,
			      result = 3'd5;
			      
localparam [4:0] length = 5'd18;  

reg       clk;
reg       rst_n;
reg [2:0] state, state_nxt;
reg [7:0] data_array[31:0];
reg       copy_end;
reg [4:0] addr;
reg [7:0] data_reg[31:0];
reg       trans_end, trans_end1;
reg [7:0] stack1[15:0], stack2[15:0];
reg [7:0] digit_reg;
reg [1:0] data_length;
reg       char_int[15:0];
reg [4:0] cnt1, cnt2, cnt3;
reg [4:0] equation_length = 0;
reg       move_end;
reg       calculate_end = 0;
reg [15:0]cal_result[15:0];
reg [15:0]data_cal;
reg [4:0] cnt4, cnt5;

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

//initial begin // 数组初始化
//    for(i = 0; i < 32; i = i + 1) begin
//	   data_array[i] <= 0;
//	end
//    data_array[0]  <= 8'd53;
//    data_array[1]  <= 8'd51;
//    data_array[2]  <= 8'd43;
//    data_array[3]  <= 8'd49;
//    data_array[4]  <= 8'd42;
//    data_array[5]  <= 8'd57;
//    data_array[6]  <= 8'd47;
//    data_array[7]  <= 8'd53;
//end

initial begin // 数组初始化
    for(i = 0; i < 32; i = i + 1) begin
	   data_reg[i] <= 0;
	   stack1[i]   <= 0;
	   stack2[i]   <= 0;
	   char_int[i] <= 0;
	   cal_result[i] <= 0;
	end
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
            if(copy_end) state_nxt = transfer;
            else state_nxt = copy;
        transfer:
            if(trans_end) state_nxt = transfer1;
            else state_nxt = transfer;
        transfer1:
            if(trans_end1) state_nxt = calculate;
            else state_nxt = transfer1;
        calculate:;
        default: state_nxt = idle;
    endcase

// copy
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        copy_end <= 0;
        addr <= 0;
    end
    else if(state == copy) begin
        data_reg[length - addr] <= data_array[addr]; // copy data
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

// transfer 将中缀表达式转换为前缀表达式
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        trans_end <= 0;
        trans_end1 <= 0;
        cnt1 <= 0;
        cnt2 <= 0;
        cnt3 <= 0;
        move_end <= 0;
    end
    else if(state == transfer) begin
        if((data_reg[cnt1] >= 8'd48 && data_reg[cnt1] <= 8'd57 && ~move_end) && ~trans_end) begin
            if(data_reg[cnt1 + 1] >= 8'd48 && data_reg[cnt1 + 1] <= 8'd57)begin
            end
            else begin
                stack2[cnt2] <= digit_reg;
                char_int[cnt2] <= 0;
                cnt2 <= cnt2 + 1; // 注意数据溢出
            end
        end
        else if((data_reg[cnt1]==43||data_reg[cnt1]==45||data_reg[cnt1]==42||data_reg[cnt1]==47) && ~move_end && ~trans_end)begin //处理 + - * /
            if(!cnt3)begin //如果S1为空，或栈顶运算符为右括号")"，则直接将此运算符入栈；
                stack1[cnt3] <= data_reg[cnt1];
                cnt3 <= cnt3 + 1;
            end
            else if((stack1[cnt3-1]==42||stack1[cnt3-1]==47) && (data_reg[cnt1]==43||data_reg[cnt1]==45))begin //将S1栈顶的运算符弹出并压入到S2中，再次转到(4-1)与S1中新的栈顶运算符相比较；
                stack2[cnt2] <= stack1[cnt3 - 1]; 
                char_int[cnt2] <= 1;
                stack1[cnt3 - 1] <= 0; 
                cnt2 <= cnt2 + 1; // 注意数据溢出;
                cnt1 <= cnt1 - 1; //                            没能推一个位！！！！！！！！！！！！！！！
            end
            else begin // 若优先级比栈顶运算符的较高或相等，也将运算符压入S1； 
                stack1[cnt3] <= data_reg[cnt1];
                cnt3 <= cnt3 + 1;
            end               
        end
        else if((data_reg[cnt1]==40||data_reg[cnt1]==41) || move_end) begin //处理 ( )
            if(data_reg[cnt1] == 41)begin //如果是右括号")"，则直接压入S1；
                stack1[cnt3] <= data_reg[cnt1];
                cnt3 <= cnt3 + 1;
            end
            else begin // 如果是左括号"("，则依次弹出S1栈顶的运算符，并压入S2，直到遇到右括号为止，此时将这一对括号丢弃；
                if(stack1[cnt3 - 1] == 41)begin
                    stack1[cnt3 - 1] <= 0;
                    cnt3 <= cnt3 - 1;
                    move_end <= 0;
                end
                else if(cnt3)begin
                    stack2[cnt2] <= stack1[cnt3 - 1];
                    char_int[cnt2] <= 1; 
                    stack1[cnt3 - 1] <= 0;
                    cnt3 <= cnt3 - 1;
                    cnt2 <= cnt2 + 1;
                    move_end <= 1;
                end
                else
                    ;
            end 
        end
        if(cnt1 == length)
            trans_end <= 1;
        else if(~move_end)
            cnt1 <= cnt1 + 1;
        else
            cnt1 <= cnt1;
    end    
    else if(state == transfer1)begin
        if(cnt3)begin
            stack2[cnt2] <= stack1[cnt3 - 1]; 
            char_int[cnt2] <= 1;
            stack1[cnt3 - 1] <= 0;            
            cnt3 <= cnt3 - 1;                 
            cnt2 <= cnt2 + 1;    
        end             
        else 
            trans_end1 <= 1;
    end
    else begin
//        trans_end <= 0;
//        cnt1 <= 0;
//        cnt2 <= 0;
    end
end

always @(negedge clk) begin
    if(!rst_n)
        data_length = 0;
    else if((state == transfer) && ~trans_end) begin
        if(data_reg[cnt1] >= 8'd48 && data_reg[cnt1] <= 8'd57) 
            data_length = data_length + 1;
        else
            data_length = 0;
    end
    else
        data_length = 0;
end

always @(*) begin
    if(!rst_n) 
        digit_reg = 0;
    else if(data_length) begin
        case(data_length) // 对应数字
            2'd1:
                digit_reg = (data_reg[cnt1] - 8'd48);
            2'd2:
                digit_reg = (data_reg[cnt1] - 8'd48) * 10  + (data_reg[cnt1 - 1] - 8'd48);
            2'd3:
                digit_reg = (data_reg[cnt1] - 8'd48) * 100 + (data_reg[cnt1 - 1] - 8'd48) * 10 + (data_reg[cnt1 - 2] - 8'd48);
            default: digit_reg = 0;
        endcase
    end
    else
        digit_reg = 0;
end

// calculate 
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        cnt4 <= 0;
        cnt5 <= 0;
        calculate_end <= 0;
    end
    else if(state == calculate) begin
        if(!char_int[cnt4])begin
            cal_result[cnt5] <= stack2[cnt4];
            cnt5 <= cnt5 + 1;
        end
        else begin
            cal_result[cnt5 - 2] <= data_cal;
            cal_result[cnt5 - 1] <= 0;
            cnt5 <= cnt5 - 1;
        end
        
        if(cnt4 == cnt2 - 1)begin
            calculate_end <= 1;
        end
        else 
            cnt4 <= cnt4 + 1;
    end    
    else begin
           
    end
end

always @(*) begin
    if(!rst_n)
        data_cal = 0;
    else if(state == calculate && ~calculate_end) begin
        case(stack2[cnt4])
            8'd43:
                data_cal = cal_result[cnt5 - 1] + cal_result[cnt5 - 2];
            8'd45:
                data_cal = cal_result[cnt5 - 1] - cal_result[cnt5 - 2];
            8'd42:
                data_cal = cal_result[cnt5 - 1] * cal_result[cnt5 - 2];
            8'd47:
                data_cal = cal_result[cnt5 - 1] / cal_result[cnt5 - 2];
            default: data_cal = 0;
        endcase
    end
end

endmodule
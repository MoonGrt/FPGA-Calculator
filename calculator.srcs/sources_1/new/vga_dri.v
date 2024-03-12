module vga_dri(
    input                vga_clk,    //ʱ��
    input        [2:0]   pixel_data,  //��������
    
    output               Hsync,
    output               Vsync,
    output       [10:0]  pixel_xpos,  //��ǰ���ص������
    output       [10:0]  pixel_ypos,  //��ǰ���ص�������   
    //RGB LCD�ӿ�
    output               vga_en,      //vga ����ʹ���ź�
    output [3:0]         vgaRed,
    output [3:0]         vgaGreen,
    output [3:0]         vgaBlue
    );

//parameter define  800*600
parameter  H_SYNC   =  11'd80;     //��ͬ��
parameter  H_BACK   =  11'd100;      //����ʾ����
parameter  H_DISP   =  11'd800;    //����Ч����
parameter  H_FRONT  =  11'd76;      //����ʾǰ��
parameter  H_TOTAL  =  11'd1056;    //��ɨ������
   
parameter  V_SYNC   =  11'd3;      //��ͬ��
parameter  V_BACK   =  11'd21;     //����ʾ����
parameter  V_DISP   =  11'd600;    //����Ч����
parameter  V_FRONT  =  11'd1;      //����ʾǰ��
parameter  V_TOTAL  =  11'd625;    //��ɨ������

//reg define
reg  [10:0] h_cnt = 0;
reg  [10:0] v_cnt = 0;

//wire define    
wire        data_req;
wire        h_valid;
wire        v_valid;

//ʹ���������
assign Hsync =  !(h_cnt < H_SYNC); 
assign Vsync =  !(v_cnt < V_SYNC);   

assign h_valid =  (h_cnt >= H_SYNC) && (h_cnt < H_SYNC + H_BACK + H_DISP); 
assign v_valid =  (v_cnt >= V_SYNC) && (v_cnt < V_SYNC + V_BACK + V_DISP);   

assign vga_en = ((h_cnt >= H_SYNC) && (h_cnt < H_SYNC + H_BACK + H_DISP)
                  && (v_cnt >= V_SYNC + V_BACK) && (v_cnt < V_SYNC + V_BACK + V_DISP)) 
                  ? 1'b1 : 1'b0;

//�������ص���ɫ��������  
assign data_req = ((h_cnt >= H_SYNC - 1'b1) && (h_cnt < H_SYNC + H_BACK + H_DISP - 1'b1)
                  && (v_cnt >= V_SYNC) && (v_cnt < V_SYNC + V_BACK + V_DISP)) 
                  ? 1'b1 : 1'b0;

//���ص�����  
assign pixel_xpos = data_req ? (h_cnt - (H_SYNC + H_BACK - 1'b1)) : 11'd0;
assign pixel_ypos = data_req ? (v_cnt - (V_SYNC + V_BACK - 1'b1)) : 11'd0;

//�����������
assign  vgaRed   = {4{pixel_data[2]}};                                          
assign  vgaBlue  = {4{pixel_data[0]}};
assign  vgaGreen = {4{pixel_data[1]}};

always @(posedge vga_clk) begin
    if(h_cnt  ==  H_TOTAL ) begin
        h_cnt <= 11'b0;
        v_cnt <= v_cnt + 1'b1;
        end
    else if(v_cnt == V_TOTAL) begin
        h_cnt <= 11'b0;
        v_cnt <= 11'b0;
        end
    else
        h_cnt <= h_cnt + 1'b1;
end

endmodule

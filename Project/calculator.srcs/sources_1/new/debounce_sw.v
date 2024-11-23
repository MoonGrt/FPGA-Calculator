module debounce_sw(
    input        sys_clk ,
    input        key ,         //�ⲿ����İ���ֵ
    output  reg  key_value = 1'b0,   //������İ���ֵ
    output  reg  key_flag = 1'b0      //������İ���ֵ��Ч��־
);

//reg define
reg [19:0] cnt = 20'd0;
reg        key_reg = 1'b1;

//*****************************************************
//**                    main code
//*****************************************************

//����ֵ����
always @ (posedge sys_clk) begin
    key_reg <= key;           //������ֵ�ӳ�һ��
    if(key_reg != key) begin  //�����ǰ����ֵ��ǰһ�ĵİ���ֵ��һ���������������»��ɿ�
        cnt <= 20'd100_0000;  //�򽫼�������Ϊ20'd100_0000��//����ʱ100_0000 * 20ns(1s/50MHz) = 20ms
    end
    else begin                //�����ǰ����ֵ��ǰһ������ֵһ����������û�з����仯
        if(cnt > 20'd0)       //��������ݼ���0
            cnt <= cnt - 1'b1;  
        else
            cnt <= 20'd0;
    end
end

//������������յİ���ֵ�ͳ�ȥ
always @ (posedge sys_clk) begin
    if(cnt == 20'd1) begin
		key_value <= key;
		key_flag  <= 1'b1;
        end
    else begin
		key_value <= key_value;
		key_flag  <= 1'b0;
    end
end

endmodule

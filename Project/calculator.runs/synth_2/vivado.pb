
>
Refreshing IP repositories
234*coregenZ19-234h px� 
�
�Failed to load user IP repository '%s'; %s
If this directory should no longer be in your list of user repositories, go to the IP Settings dialog and remove it.
1318*coregen23
f:/Study/FPGA/Project/p_ip_ajxd2default:default22
Can't find the specified path.2default:defaultZ19-2248h px� 
�
�Failed to load user IP repository '%s'; %s
If this directory should no longer be in your list of user repositories, go to the IP Settings dialog and remove it.
1318*coregen23
f:/Study/FPGA/Project/p_ip_disp2default:default22
Can't find the specified path.2default:defaultZ19-2248h px� 
}
"Loaded Vivado IP repository '%s'.
1332*coregen24
 G:/xilinx1/Vivado/2018.3/data/ip2default:defaultZ19-2313h px� 
p
Command: %s
53*	vivadotcl2?
+synth_design -top top -part xc7a35tftg256-12default:defaultZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-349h px� 
�
,redeclaration of ansi port %s is not allowed2611*oasys2!
calculate_end2default:default2]
GF:/Study/FPGA/Project/cal_test1/cal_test1.srcs/sources_1/new/process1.v2default:default2
242default:default8@Z8-2611h px� 
�
,redeclaration of ansi port %s is not allowed2611*oasys2
data_cal2default:default2]
GF:/Study/FPGA/Project/cal_test1/cal_test1.srcs/sources_1/new/process1.v2default:default2
262default:default8@Z8-2611h px� 
�
%s*synth2�
xStarting RTL Elaboration : Time (s): cpu = 00:00:04 ; elapsed = 00:00:04 . Memory (MB): peak = 399.992 ; gain = 114.562
2default:defaulth px� 
�
synthesizing module '%s'%s4497*oasys2
top2default:default2
 2default:default2W
AF:/Study/FPGA/Project/cal_test1/cal_test1.srcs/sources_1/new/v1.v2default:default2
32default:default8@Z8-6157h px� 
d
%s
*synth2L
8	Parameter CLK_FREQ bound to: 50000000 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter UART_BPS bound to: 115200 - type: integer 
2default:defaulth p
x
� 
�
synthesizing module '%s'%s4497*oasys2
	uart_send2default:default2
 2default:default2^
HF:/Study/FPGA/Project/cal_test1/cal_test1.srcs/sources_1/new/uart_send.v2default:default2
12default:default8@Z8-6157h px� 
d
%s
*synth2L
8	Parameter CLK_FREQ bound to: 50000000 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter UART_BPS bound to: 115200 - type: integer 
2default:defaulth p
x
� 
^
%s
*synth2F
2	Parameter BPS_CNT bound to: 434 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	uart_send2default:default2
 2default:default2
12default:default2
12default:default2^
HF:/Study/FPGA/Project/cal_test1/cal_test1.srcs/sources_1/new/uart_send.v2default:default2
12default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
ip_disp2default:default2
 2default:default2\
FF:/Study/FPGA/Project/cal_test1/cal_test1.srcs/sources_1/new/v_disp1.v2default:default2
32default:default8@Z8-6157h px� 
_
%s
*synth2G
3	Parameter maxcnt bound to: 25000 - type: integer 
2default:defaulth p
x
� 
�
8referenced signal '%s' should be on the sensitivity list567*oasys2
rst_n2default:default2\
FF:/Study/FPGA/Project/cal_test1/cal_test1.srcs/sources_1/new/v_disp1.v2default:default2
1012default:default8@Z8-567h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
ip_disp2default:default2
 2default:default2
22default:default2
12default:default2\
FF:/Study/FPGA/Project/cal_test1/cal_test1.srcs/sources_1/new/v_disp1.v2default:default2
32default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
v_ajxd2default:default2
 2default:default2[
EF:/Study/FPGA/Project/cal_test1/cal_test1.srcs/sources_1/new/v_ajxd.v2default:default2
32default:default8@Z8-6157h px� 
�
default block is never used226*oasys2[
EF:/Study/FPGA/Project/cal_test1/cal_test1.srcs/sources_1/new/v_ajxd.v2default:default2
732default:default8@Z8-226h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
v_ajxd2default:default2
 2default:default2
32default:default2
12default:default2[
EF:/Study/FPGA/Project/cal_test1/cal_test1.srcs/sources_1/new/v_ajxd.v2default:default2
32default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
process12default:default2
 2default:default2]
GF:/Study/FPGA/Project/cal_test1/cal_test1.srcs/sources_1/new/process1.v2default:default2
32default:default8@Z8-6157h px� 
N
%s
*synth26
"	Parameter idle bound to: 3'b000 
2default:defaulth p
x
� 
N
%s
*synth26
"	Parameter copy bound to: 3'b001 
2default:defaulth p
x
� 
R
%s
*synth2:
&	Parameter transfer bound to: 3'b010 
2default:defaulth p
x
� 
S
%s
*synth2;
'	Parameter transfer1 bound to: 3'b011 
2default:defaulth p
x
� 
S
%s
*synth2;
'	Parameter calculate bound to: 3'b100 
2default:defaulth p
x
� 
P
%s
*synth28
$	Parameter result bound to: 3'b101 
2default:defaulth p
x
� 
�
�Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2 
data_reg_reg2default:default2
process12default:defaultZ8-5788h px� 
�
�Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2

stack2_reg2default:default2
process12default:defaultZ8-5788h px� 
�
�Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2 
char_int_reg2default:default2
process12default:defaultZ8-5788h px� 
�
�Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2

stack1_reg2default:default2
process12default:defaultZ8-5788h px� 
�
�Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2"
cal_result_reg2default:default2
process12default:defaultZ8-5788h px� 
�
qTrying to implement RAM '%s' in registers. Block RAM or DRAM implementation is not possible; see log for reasons.3901*oasys2 
data_reg_reg2default:defaultZ8-4767h px� 
U
%s
*synth2=
)Reason is one or more of the following :
2default:defaulth p
x
� 
�
%s
*synth2i
U	1: RAM is sensitive to asynchronous reset signal. this RTL style is not supported. 
2default:defaulth p
x
� 
X
%s
*synth2@
,RAM "data_reg_reg" dissolved into registers
2default:defaulth p
x
� 
�
qTrying to implement RAM '%s' in registers. Block RAM or DRAM implementation is not possible; see log for reasons.3901*oasys2

stack1_reg2default:defaultZ8-4767h px� 
U
%s
*synth2=
)Reason is one or more of the following :
2default:defaulth p
x
� 
G
%s
*synth2/
	1: Invalid write to RAM. 
2default:defaulth p
x
� 
j
%s
*synth2R
>	2: Unable to determine number of words or word size in RAM. 
2default:defaulth p
x
� 
T
%s
*synth2<
(	3: No valid read/write found for RAM. 
2default:defaulth p
x
� 
V
%s
*synth2>
*RAM "stack1_reg" dissolved into registers
2default:defaulth p
x
� 
�
%s
*synth2�
�
Warning: Trying to implement RAM in registers. Block RAM or DRAM implementation is not possible for one or more of the following reasons :
2default:defaulth p
x
� 
R
%s
*synth2:
&	1: Write port has constant address. 
2default:defaulth p
x
� 
j
%s
*synth2R
>	2: Unable to determine number of words or word size in RAM. 
2default:defaulth p
x
� 
T
%s
*synth2<
(	3: No valid read/write found for RAM. 
2default:defaulth p
x
� 
I
%s
*synth21
RAM dissolved into registers
2default:defaulth p
x
� 
�
qTrying to implement RAM '%s' in registers. Block RAM or DRAM implementation is not possible; see log for reasons.3901*oasys2 
char_int_reg2default:defaultZ8-4767h px� 
U
%s
*synth2=
)Reason is one or more of the following :
2default:defaulth p
x
� 
G
%s
*synth2/
	1: Invalid write to RAM. 
2default:defaulth p
x
� 
j
%s
*synth2R
>	2: Unable to determine number of words or word size in RAM. 
2default:defaulth p
x
� 
T
%s
*synth2<
(	3: No valid read/write found for RAM. 
2default:defaulth p
x
� 
X
%s
*synth2@
,RAM "char_int_reg" dissolved into registers
2default:defaulth p
x
� 
�
qTrying to implement RAM '%s' in registers. Block RAM or DRAM implementation is not possible; see log for reasons.3901*oasys2

stack2_reg2default:defaultZ8-4767h px� 
U
%s
*synth2=
)Reason is one or more of the following :
2default:defaulth p
x
� 
G
%s
*synth2/
	1: Invalid write to RAM. 
2default:defaulth p
x
� 
j
%s
*synth2R
>	2: Unable to determine number of words or word size in RAM. 
2default:defaulth p
x
� 
T
%s
*synth2<
(	3: No valid read/write found for RAM. 
2default:defaulth p
x
� 
V
%s
*synth2>
*RAM "stack2_reg" dissolved into registers
2default:defaulth p
x
� 
�
qTrying to implement RAM '%s' in registers. Block RAM or DRAM implementation is not possible; see log for reasons.3901*oasys2"
cal_result_reg2default:defaultZ8-4767h px� 
U
%s
*synth2=
)Reason is one or more of the following :
2default:defaulth p
x
� 
�
%s
*synth2�
~	1: RAM has multiple writes via different ports in same process. If RAM inferencing intended, write to one port per process. 
2default:defaulth p
x
� 
j
%s
*synth2R
>	2: Unable to determine number of words or word size in RAM. 
2default:defaulth p
x
� 
T
%s
*synth2<
(	3: No valid read/write found for RAM. 
2default:defaulth p
x
� 
Z
%s
*synth2B
.RAM "cal_result_reg" dissolved into registers
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
process12default:default2
 2default:default2
42default:default2
12default:default2]
GF:/Study/FPGA/Project/cal_test1/cal_test1.srcs/sources_1/new/process1.v2default:default2
32default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
debounce_sw2default:default2
 2default:default2`
JF:/Study/FPGA/Project/cal_test1/cal_test1.srcs/sources_1/new/debounce_sw.v2default:default2
12default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
debounce_sw2default:default2
 2default:default2
52default:default2
12default:default2`
JF:/Study/FPGA/Project/cal_test1/cal_test1.srcs/sources_1/new/debounce_sw.v2default:default2
12default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
vga_dri2default:default2
 2default:default2\
FF:/Study/FPGA/Project/cal_test1/cal_test1.srcs/sources_1/new/vga_dri.v2default:default2
12default:default8@Z8-6157h px� 
Y
%s
*synth2A
-	Parameter H_SYNC bound to: 11'b00001010000 
2default:defaulth p
x
� 
Y
%s
*synth2A
-	Parameter H_BACK bound to: 11'b00001100100 
2default:defaulth p
x
� 
Y
%s
*synth2A
-	Parameter H_DISP bound to: 11'b01100100000 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	Parameter H_FRONT bound to: 11'b00001001100 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	Parameter H_TOTAL bound to: 11'b10000100000 
2default:defaulth p
x
� 
Y
%s
*synth2A
-	Parameter V_SYNC bound to: 11'b00000000011 
2default:defaulth p
x
� 
Y
%s
*synth2A
-	Parameter V_BACK bound to: 11'b00000010101 
2default:defaulth p
x
� 
Y
%s
*synth2A
-	Parameter V_DISP bound to: 11'b01001011000 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	Parameter V_FRONT bound to: 11'b00000000001 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	Parameter V_TOTAL bound to: 11'b01001110001 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
vga_dri2default:default2
 2default:default2
62default:default2
12default:default2\
FF:/Study/FPGA/Project/cal_test1/cal_test1.srcs/sources_1/new/vga_dri.v2default:default2
12default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
vga_disp2default:default2
 2default:default2]
GF:/Study/FPGA/Project/cal_test1/cal_test1.srcs/sources_1/new/vga_disp.v2default:default2
32default:default8@Z8-6157h px� 
O
%s
*synth27
#	Parameter WHITE bound to: 3'b111 
2default:defaulth p
x
� 
O
%s
*synth27
#	Parameter BLACK bound to: 3'b000 
2default:defaulth p
x
� 
]
%s
*synth2E
1	Parameter CHAR_WIDTH bound to: 11'b00000010000 
2default:defaulth p
x
� 
^
%s
*synth2F
2	Parameter CHAR_HEIGHT bound to: 11'b00000100000 
2default:defaulth p
x
� 
�
8referenced signal '%s' should be on the sensitivity list567*oasys2
char2default:default2]
GF:/Study/FPGA/Project/cal_test1/cal_test1.srcs/sources_1/new/vga_disp.v2default:default2
662default:default8@Z8-567h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
vga_disp2default:default2
 2default:default2
72default:default2
12default:default2]
GF:/Study/FPGA/Project/cal_test1/cal_test1.srcs/sources_1/new/vga_disp.v2default:default2
32default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
uartsend2default:default2
 2default:default2]
GF:/Study/FPGA/Project/cal_test1/cal_test1.srcs/sources_1/new/uartsend.v2default:default2
12default:default8@Z8-6157h px� 
d
%s
*synth2L
8	Parameter CLK_FREQ bound to: 50000000 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter UART_BPS bound to: 115200 - type: integer 
2default:defaulth p
x
� 
^
%s
*synth2F
2	Parameter BPS_CNT bound to: 434 - type: integer 
2default:defaulth p
x
� 
�
�Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2
	flag0_reg2default:default2
uartsend2default:default2]
GF:/Study/FPGA/Project/cal_test1/cal_test1.srcs/sources_1/new/uartsend.v2default:default2
352default:default8@Z8-5788h px� 
�
�Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2
	flag1_reg2default:default2
uartsend2default:default2]
GF:/Study/FPGA/Project/cal_test1/cal_test1.srcs/sources_1/new/uartsend.v2default:default2
352default:default8@Z8-5788h px� 
�
�Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2
cnt_reg2default:default2
uartsend2default:default2]
GF:/Study/FPGA/Project/cal_test1/cal_test1.srcs/sources_1/new/uartsend.v2default:default2
602default:default8@Z8-5788h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
uartsend2default:default2
 2default:default2
82default:default2
12default:default2]
GF:/Study/FPGA/Project/cal_test1/cal_test1.srcs/sources_1/new/uartsend.v2default:default2
12default:default8@Z8-6155h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2"
clean_reg1_reg2default:default2W
AF:/Study/FPGA/Project/cal_test1/cal_test1.srcs/sources_1/new/v1.v2default:default2
712default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2"
clean_reg2_reg2default:default2W
AF:/Study/FPGA/Project/cal_test1/cal_test1.srcs/sources_1/new/v1.v2default:default2
712default:default8@Z8-6014h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
top2default:default2
 2default:default2
92default:default2
12default:default2W
AF:/Study/FPGA/Project/cal_test1/cal_test1.srcs/sources_1/new/v1.v2default:default2
32default:default8@Z8-6155h px� 
z
!design %s has unconnected port %s3331*oasys2
top2default:default2
uart_rxd2default:defaultZ8-3331h px� 
�
%s*synth2�
xFinished RTL Elaboration : Time (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 449.582 ; gain = 164.152
2default:defaulth px� 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 449.582 ; gain = 164.152
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 449.582 ; gain = 164.152
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
V
Loading part %s157*device2#
xc7a35tftg256-12default:defaultZ21-403h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
Parsing XDC File [%s]
179*designutils2\
FF:/Study/FPGA/Project/cal_test1/cal_test1.srcs/constrs_1/new/cons2.xdc2default:default8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2\
FF:/Study/FPGA/Project/cal_test1/cal_test1.srcs/constrs_1/new/cons2.xdc2default:default8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2Z
FF:/Study/FPGA/Project/cal_test1/cal_test1.srcs/constrs_1/new/cons2.xdc2default:default2)
.Xil/top_propImpl.xdc2default:defaultZ1-236h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
793.1522default:default2
0.0002default:defaultZ17-268h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
793.1522default:default2
0.0002default:defaultZ17-268h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
793.1522default:default2
0.0002default:defaultZ17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0092default:default2
793.1522default:default2
0.0002default:defaultZ17-268h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
~Finished Constraint Validation : Time (s): cpu = 00:00:17 ; elapsed = 00:00:19 . Memory (MB): peak = 793.152 ; gain = 507.723
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Loading part: xc7a35tftg256-1
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:17 ; elapsed = 00:00:19 . Memory (MB): peak = 793.152 ; gain = 507.723
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:18 ; elapsed = 00:00:19 . Memory (MB): peak = 793.152 ; gain = 507.723
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
v
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
tx_cnt2default:defaultZ8-5546h px� 
v
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
divclk2default:defaultZ8-5546h px� 
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
clk_ms2default:default2
322default:default2
252default:defaultZ8-5545h px� 
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
cnt2default:default2
322default:default2
252default:defaultZ8-5545h px� 
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
clk_20ms2default:default2
322default:default2
252default:defaultZ8-5545h px� 
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2

btnclk_cnt2default:default2
322default:default2
252default:defaultZ8-5545h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
btn2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
clk_ms2default:default2
322default:default2
252default:defaultZ8-5545h px� 
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
cnt2default:default2
322default:default2
252default:defaultZ8-5545h px� 
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
clk_20ms2default:default2
322default:default2
252default:defaultZ8-5545h px� 
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2

btnclk_cnt2default:default2
322default:default2
252default:defaultZ8-5545h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
btn2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2

trans_data2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
}HDL ADVISOR - The operator resource <%s> is shared. To prevent sharing consider applying a KEEP on the output of the operator4233*oasys2
adder2default:default2]
GF:/Study/FPGA/Project/cal_test1/cal_test1.srcs/sources_1/new/process1.v2default:default2
1592default:default8@Z8-5818h px� 
�
}HDL ADVISOR - The operator resource <%s> is shared. To prevent sharing consider applying a KEEP on the output of the operator4233*oasys2
adder2default:default2]
GF:/Study/FPGA/Project/cal_test1/cal_test1.srcs/sources_1/new/process1.v2default:default2
2232default:default8@Z8-5818h px� 
�
}HDL ADVISOR - The operator resource <%s> is shared. To prevent sharing consider applying a KEEP on the output of the operator4233*oasys2
adder2default:default2]
GF:/Study/FPGA/Project/cal_test1/cal_test1.srcs/sources_1/new/process1.v2default:default2
2482default:default8@Z8-5818h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2

cal_result2default:default2
32default:default2
52default:defaultZ8-5544h px� 
y
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
	key_value2default:defaultZ8-5546h px� 
u
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
v_cnt2default:defaultZ8-5546h px� 
y
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
	char_data2default:defaultZ8-5546h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
send_end2default:default2
22default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
cnt2default:default2
22default:default2
52default:defaultZ8-5544h px� 
v
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
tx_cnt2default:defaultZ8-5546h px� 
�
!inferring latch for variable '%s'327*oasys2
an_reg2default:default2\
FF:/Study/FPGA/Project/cal_test1/cal_test1.srcs/sources_1/new/v_disp1.v2default:default2
592default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2 
disp_dat_reg2default:default2\
FF:/Study/FPGA/Project/cal_test1/cal_test1.srcs/sources_1/new/v_disp1.v2default:default2
582default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2 
data_cal_reg2default:default2]
GF:/Study/FPGA/Project/cal_test1/cal_test1.srcs/sources_1/new/process1.v2default:default2
2462default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2!
state_nxt_reg2default:default2]
GF:/Study/FPGA/Project/cal_test1/cal_test1.srcs/sources_1/new/process1.v2default:default2
602default:default8@Z8-327h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:20 ; elapsed = 00:00:21 . Memory (MB): peak = 793.152 ; gain = 507.723
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit       Adders := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     20 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input     16 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     15 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     11 Bit       Adders := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input     10 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      9 Bit       Adders := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit       Adders := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      5 Bit       Adders := 10    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      5 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      2 Bit       Adders := 2     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               20 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               16 Bit    Registers := 22    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               15 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               12 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               11 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 66    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                5 Bit    Registers := 6     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                4 Bit    Registers := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                3 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                2 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 41    
2default:defaulth p
x
� 
8
%s
*synth2 
+---RAMs : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	              256 Bit         RAMs := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  19 Input    513 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input    256 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input    128 Bit        Muxes := 11    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input    128 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     20 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   5 Input     16 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     16 Bit        Muxes := 37    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input     16 Bit        Muxes := 8     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     15 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     11 Bit        Muxes := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      9 Bit        Muxes := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 86    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  17 Input      7 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   8 Input      6 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      5 Bit        Muxes := 8     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 5     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  16 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      1 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 126   
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  12 Input      1 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  16 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   6 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Y
%s
*synth2A
-Start RTL Hierarchical Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Hierarchical RTL Component report 
2default:defaulth p
x
� 
8
%s
*synth2 
Module top 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      5 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 2     
2default:defaulth p
x
� 
8
%s
*synth2 
+---RAMs : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	              256 Bit         RAMs := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      5 Bit        Muxes := 1     
2default:defaulth p
x
� 
>
%s
*synth2&
Module uart_send 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      9 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               16 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 4     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      9 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  12 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
<
%s
*synth2$
Module ip_disp 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     15 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               15 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                3 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     15 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  17 Input      7 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   8 Input      6 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 2     
2default:defaulth p
x
� 
;
%s
*synth2#
Module v_ajxd 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit       Adders := 2     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               16 Bit    Registers := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               12 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                4 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 3     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   5 Input     16 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  16 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  16 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
Module process1 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input     16 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit       Adders := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      5 Bit       Adders := 7     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      5 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      2 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               16 Bit    Registers := 16    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 64    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                5 Bit    Registers := 6     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                3 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                2 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 21    
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input    256 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input    128 Bit        Muxes := 11    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input    128 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     16 Bit        Muxes := 36    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input     16 Bit        Muxes := 8     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   5 Input     16 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 83    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      5 Bit        Muxes := 6     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 111   
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   6 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
@
%s
*synth2(
Module debounce_sw 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     20 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               20 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 3     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     20 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     16 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
<
%s
*synth2$
Module vga_dri 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     11 Bit       Adders := 4     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               11 Bit    Registers := 2     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     11 Bit        Muxes := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 2     
2default:defaulth p
x
� 
=
%s
*synth2%
Module vga_disp 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input     10 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      5 Bit       Adders := 2     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  19 Input    513 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      5 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
Module uartsend 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      9 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      2 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               16 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                2 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 7     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      9 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 5     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  12 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
[
%s
*synth2C
/Finished RTL Hierarchical Component Statistics
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2j
VPart Resources:
DSPs: 90 (col length:60)
BRAMs: 100 (col length: RAMB18 60 RAMB36 30)
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
]
%s
*synth2E
1Warning: Parallel synthesis criteria is not met 
2default:defaulth p
x
� 
v
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
divclk2default:defaultZ8-5546h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
btn2default:default2
42default:default2
52default:defaultZ8-5544h px� 
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
cnt2default:default2
322default:default2
252default:defaultZ8-5545h px� 
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
clk_ms2default:default2
322default:default2
252default:defaultZ8-5545h px� 
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2

btnclk_cnt2default:default2
322default:default2
252default:defaultZ8-5545h px� 
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
clk_20ms2default:default2
322default:default2
252default:defaultZ8-5545h px� 
j
%s
*synth2R
>DSP Report: Generating DSP data_cal0, operation Mode is: A*B.
2default:defaulth p
x
� 
k
%s
*synth2S
?DSP Report: operator data_cal0 is absorbed into DSP data_cal0.
2default:defaulth p
x
� 
y
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
	key_value2default:defaultZ8-5546h px� 
u
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
v_cnt2default:defaultZ8-5546h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
cnt2default:default2
22default:default2
52default:defaultZ8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
send_end2default:default2
22default:default2
52default:defaultZ8-5544h px� 
z
!design %s has unconnected port %s3331*oasys2
top2default:default2
uart_rxd2default:defaultZ8-3331h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2.
i_uartsend/clk_cnt_reg[14]2default:default2
FDC2default:default2-
i_uartsend/clk_cnt_reg[9]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2.
i_uartsend/clk_cnt_reg[15]2default:default2
FDC2default:default2-
i_uartsend/clk_cnt_reg[9]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2.
i_uartsend/clk_cnt_reg[13]2default:default2
FDC2default:default2-
i_uartsend/clk_cnt_reg[9]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2.
i_uartsend/clk_cnt_reg[12]2default:default2
FDC2default:default2-
i_uartsend/clk_cnt_reg[9]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2.
i_uartsend/clk_cnt_reg[11]2default:default2
FDC2default:default2-
i_uartsend/clk_cnt_reg[9]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2.
i_uartsend/clk_cnt_reg[10]2default:default2
FDC2default:default2-
i_uartsend/clk_cnt_reg[9]2default:defaultZ8-3886h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2/
\i_uartsend/clk_cnt_reg[9] 2default:defaultZ8-3333h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2/
u_uart_send/clk_cnt_reg[14]2default:default2
FDC2default:default2.
u_uart_send/clk_cnt_reg[9]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2/
u_uart_send/clk_cnt_reg[15]2default:default2
FDC2default:default2.
u_uart_send/clk_cnt_reg[9]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2/
u_uart_send/clk_cnt_reg[13]2default:default2
FDC2default:default2.
u_uart_send/clk_cnt_reg[9]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2/
u_uart_send/clk_cnt_reg[12]2default:default2
FDC2default:default2.
u_uart_send/clk_cnt_reg[9]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2/
u_uart_send/clk_cnt_reg[11]2default:default2
FDC2default:default2.
u_uart_send/clk_cnt_reg[9]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2/
u_uart_send/clk_cnt_reg[10]2default:default2
FDC2default:default2.
u_uart_send/clk_cnt_reg[9]2default:defaultZ8-3886h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default20
\u_uart_send/clk_cnt_reg[9] 2default:defaultZ8-3333h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2.
u_uart_send/tx_data_reg[7]2default:default2
FDCE2default:default2.
u_uart_send/tx_data_reg[6]2default:defaultZ8-3886h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default20
\u_uart_send/tx_data_reg[6] 2default:defaultZ8-3333h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
i_disp/an_reg[5]2default:default2
top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
i_disp/an_reg[4]2default:default2
top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
i_disp/an_reg[3]2default:default2
top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
i_disp/an_reg[2]2default:default2
top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
i_disp/an_reg[1]2default:default2
top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
i_disp/an_reg[0]2default:default2
top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2*
i_disp/disp_dat_reg[3]2default:default2
top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2*
i_disp/disp_dat_reg[2]2default:default2
top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2*
i_disp/disp_dat_reg[1]2default:default2
top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2*
i_disp/disp_dat_reg[0]2default:default2
top2default:defaultZ8-3332h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:57 ; elapsed = 00:00:59 . Memory (MB): peak = 833.512 ; gain = 548.082
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP and Shift Register Reporting
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
k
%s*synth2S
?
Distributed RAM: Preliminary Mapping  Report (see note below)
2default:defaulth px� 
{
%s*synth2c
O+------------+-------------+-----------+----------------------+--------------+
2default:defaulth px� 
|
%s*synth2d
P|Module Name | RTL Object  | Inference | Size (Depth x Width) | Primitives   | 
2default:defaulth px� 
{
%s*synth2c
O+------------+-------------+-----------+----------------------+--------------+
2default:defaulth px� 
|
%s*synth2d
P|i_vga_disp  | map_reg     | Implied   | 32 x 5               | RAM32M x 1   | 
2default:defaulth px� 
|
%s*synth2d
P|top         | in_data_reg | Implied   | 32 x 8               | RAM32M x 2   | 
2default:defaulth px� 
|
%s*synth2d
P+------------+-------------+-----------+----------------------+--------------+

2default:defaulth px� 
�
%s*synth2�
�Note: The table above is a preliminary report that shows the Distributed RAMs at the current stage of the synthesis flow. Some Distributed RAMs may be reimplemented as non Distributed RAM primitives later in the synthesis flow. Multiple instantiated RAMs are reported only once.
2default:defaulth px� 
_
%s*synth2G
3
DSP: Preliminary Mapping  Report (see note below)
2default:defaulth px� 
�
%s*synth2�
|+------------+-------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
2default:defaulth px� 
�
%s*synth2�
}|Module Name | DSP Mapping | A Size | B Size | C Size | D Size | P Size | AREG | BREG | CREG | DREG | ADREG | MREG | PREG | 
2default:defaulth px� 
�
%s*synth2�
|+------------+-------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
2default:defaulth px� 
�
%s*synth2�
}|process1    | A*B         | 16     | 16     | -      | -      | 32     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
}+------------+-------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+

2default:defaulth px� 
�
%s*synth2�
�Note: The table above is a preliminary report that shows the DSPs inferred at the current stage of the synthesis flow. Some DSP may be reimplemented as non DSP primitives later in the synthesis flow. Multiple instantiated DSPs are reported only once.
2default:defaulth px� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP and Shift Register Reporting
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:01:16 ; elapsed = 00:01:18 . Memory (MB): peak = 841.238 ; gain = 555.809
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
|Finished Timing Optimization : Time (s): cpu = 00:01:17 ; elapsed = 00:01:19 . Memory (MB): peak = 845.117 ; gain = 559.688
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP and Shift Register Reporting
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
T
%s
*synth2<
(
Distributed RAM: Final Mapping  Report
2default:defaulth p
x
� 
{
%s
*synth2c
O+------------+-------------+-----------+----------------------+--------------+
2default:defaulth p
x
� 
|
%s
*synth2d
P|Module Name | RTL Object  | Inference | Size (Depth x Width) | Primitives   | 
2default:defaulth p
x
� 
{
%s
*synth2c
O+------------+-------------+-----------+----------------------+--------------+
2default:defaulth p
x
� 
|
%s
*synth2d
P|i_vga_disp  | map_reg     | Implied   | 32 x 5               | RAM32M x 1   | 
2default:defaulth p
x
� 
|
%s
*synth2d
P|top         | in_data_reg | Implied   | 32 x 8               | RAM32M x 2   | 
2default:defaulth p
x
� 
|
%s
*synth2d
P+------------+-------------+-----------+----------------------+--------------+

2default:defaulth p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP and Shift Register Reporting
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2.
u_uart_send/tx_data_reg[5]2default:default2
FDCE2default:default2+
u_uart_send/tx_flag_reg2default:defaultZ8-3886h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
{Finished Technology Mapping : Time (s): cpu = 00:01:20 ; elapsed = 00:01:23 . Memory (MB): peak = 981.129 ; gain = 695.699
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
uFinished IO Insertion : Time (s): cpu = 00:01:22 ; elapsed = 00:01:25 . Memory (MB): peak = 981.129 ; gain = 695.699
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:01:22 ; elapsed = 00:01:25 . Memory (MB): peak = 981.129 ; gain = 695.699
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:01:22 ; elapsed = 00:01:25 . Memory (MB): peak = 981.129 ; gain = 695.699
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:01:22 ; elapsed = 00:01:25 . Memory (MB): peak = 981.129 ; gain = 695.699
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:01:23 ; elapsed = 00:01:25 . Memory (MB): peak = 981.129 ; gain = 695.699
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:01:23 ; elapsed = 00:01:25 . Memory (MB): peak = 981.129 ; gain = 695.699
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px� 
E
%s*synth2-
+------+--------+------+
2default:defaulth px� 
E
%s*synth2-
|      |Cell    |Count |
2default:defaulth px� 
E
%s*synth2-
+------+--------+------+
2default:defaulth px� 
E
%s*synth2-
|1     |BUFG    |     3|
2default:defaulth px� 
E
%s*synth2-
|2     |CARRY4  |   166|
2default:defaulth px� 
E
%s*synth2-
|3     |DSP48E1 |     1|
2default:defaulth px� 
E
%s*synth2-
|4     |LUT1    |    73|
2default:defaulth px� 
E
%s*synth2-
|5     |LUT2    |   253|
2default:defaulth px� 
E
%s*synth2-
|6     |LUT3    |   386|
2default:defaulth px� 
E
%s*synth2-
|7     |LUT4    |   432|
2default:defaulth px� 
E
%s*synth2-
|8     |LUT5    |   660|
2default:defaulth px� 
E
%s*synth2-
|9     |LUT6    |  1329|
2default:defaulth px� 
E
%s*synth2-
|10    |MUXF7   |   235|
2default:defaulth px� 
E
%s*synth2-
|11    |MUXF8   |    63|
2default:defaulth px� 
E
%s*synth2-
|12    |RAM32M  |     3|
2default:defaulth px� 
E
%s*synth2-
|13    |FDCE    |    68|
2default:defaulth px� 
E
%s*synth2-
|14    |FDPE    |     1|
2default:defaulth px� 
E
%s*synth2-
|15    |FDRE    |  1015|
2default:defaulth px� 
E
%s*synth2-
|16    |FDSE    |     7|
2default:defaulth px� 
E
%s*synth2-
|17    |LD      |     3|
2default:defaulth px� 
E
%s*synth2-
|18    |LDC     |    16|
2default:defaulth px� 
E
%s*synth2-
|19    |IBUF    |     6|
2default:defaulth px� 
E
%s*synth2-
|20    |OBUF    |    46|
2default:defaulth px� 
E
%s*synth2-
+------+--------+------+
2default:defaulth px� 
E
%s
*synth2-

Report Instance Areas: 
2default:defaulth p
x
� 
Z
%s
*synth2B
.+------+----------------+------------+------+
2default:defaulth p
x
� 
Z
%s
*synth2B
.|      |Instance        |Module      |Cells |
2default:defaulth p
x
� 
Z
%s
*synth2B
.+------+----------------+------------+------+
2default:defaulth p
x
� 
Z
%s
*synth2B
.|1     |top             |            |  4766|
2default:defaulth p
x
� 
Z
%s
*synth2B
.|2     |  i_ajxd        |v_ajxd      |   246|
2default:defaulth p
x
� 
Z
%s
*synth2B
.|3     |  i_debounce_sw |debounce_sw |    63|
2default:defaulth p
x
� 
Z
%s
*synth2B
.|4     |  i_disp        |ip_disp     |   206|
2default:defaulth p
x
� 
Z
%s
*synth2B
.|5     |  i_process1    |process1    |  3627|
2default:defaulth p
x
� 
Z
%s
*synth2B
.|6     |  i_uartsend    |uartsend    |    65|
2default:defaulth p
x
� 
Z
%s
*synth2B
.|7     |  i_vga_disp    |vga_disp    |   290|
2default:defaulth p
x
� 
Z
%s
*synth2B
.|8     |  i_vga_dri     |vga_dri     |   148|
2default:defaulth p
x
� 
Z
%s
*synth2B
.|9     |  u_uart_send   |uart_send   |    51|
2default:defaulth p
x
� 
Z
%s
*synth2B
.+------+----------------+------------+------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:01:23 ; elapsed = 00:01:25 . Memory (MB): peak = 981.129 ; gain = 695.699
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
s
%s
*synth2[
GSynthesis finished with 0 errors, 0 critical warnings and 15 warnings.
2default:defaulth p
x
� 
�
%s
*synth2�
~Synthesis Optimization Runtime : Time (s): cpu = 00:01:09 ; elapsed = 00:01:17 . Memory (MB): peak = 981.129 ; gain = 352.129
2default:defaulth p
x
� 
�
%s
*synth2�
Synthesis Optimization Complete : Time (s): cpu = 00:01:23 ; elapsed = 00:01:26 . Memory (MB): peak = 981.129 ; gain = 695.699
2default:defaulth p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
g
-Analyzing %s Unisim elements for replacement
17*netlist2
4872default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0022default:default2
981.1292default:default2
0.0002default:defaultZ17-268h px� 
�
!Unisim Transformation Summary:
%s111*project2�
�  A total of 22 instances were transformed.
  LD => LDCE: 3 instances
  LDC => LDCE: 16 instances
  RAM32M => RAM32M (RAMD32, RAMD32, RAMD32, RAMD32, RAMD32, RAMD32, RAMS32, RAMS32): 3 instances
2default:defaultZ1-111h px� 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
832default:default2
372default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:01:272default:default2
00:01:302default:default2
981.1292default:default2
708.8162default:defaultZ17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0022default:default2
981.1292default:default2
0.0002default:defaultZ17-268h px� 
K
"No constraints selected for write.1103*constraintsZ18-5210h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2R
>F:/Study/FPGA/Project/cal_test1/cal_test1.runs/synth_2/top.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2p
\Executing : report_utilization -file top_utilization_synth.rpt -pb top_utilization_synth.pb
2default:defaulth px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Tue Apr 11 19:52:31 20232default:defaultZ17-206h px� 


End Record
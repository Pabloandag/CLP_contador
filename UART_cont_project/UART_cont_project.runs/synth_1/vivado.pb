
v
Command: %s
53*	vivadotcl2E
1synth_design -top uart_cont -part xc7z010clg400-12default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7z0102default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7z0102default:defaultZ17-349h px? 
?
%s*synth2?
wStarting RTL Elaboration : Time (s): cpu = 00:00:04 ; elapsed = 00:00:05 . Memory (MB): peak = 410.836 ; gain = 98.535
2default:defaulth px? 
?
synthesizing module '%s'638*oasys2
	uart_cont2default:default2R
<C:/Users/aguir/Documents/CESE/CLP/contador/uart_cont_VIO.vhd2default:default2
422default:default8@Z8-638h px? 
c
%s
*synth2K
7	Parameter BAUD_RATE bound to: 115200 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter CLOCK_RATE bound to: 150000000 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter CONT_N bound to: 4 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter BAUD_RATE bound to: 115200 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter CLOCK_RATE bound to: 150000000 - type: integer 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
uart_rx2default:default2J
6C:/Users/aguir/Documents/CESE/CLP/contador/uart_rx.vhd2default:default2
382default:default2

uart_rx_i02default:default2
uart_rx2default:default2R
<C:/Users/aguir/Documents/CESE/CLP/contador/uart_cont_VIO.vhd2default:default2
1002default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2
uart_rx2default:default2L
6C:/Users/aguir/Documents/CESE/CLP/contador/uart_rx.vhd2default:default2
582default:default8@Z8-638h px? 
c
%s
*synth2K
7	Parameter BAUD_RATE bound to: 115200 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter CLOCK_RATE bound to: 150000000 - type: integer 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
meta_harden2default:default2N
:C:/Users/aguir/Documents/CESE/CLP/contador/meta_harden.vhd2default:default2
272default:default2&
meta_harden_rxd_i02default:default2
meta_harden2default:default2L
6C:/Users/aguir/Documents/CESE/CLP/contador/uart_rx.vhd2default:default2
1082default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2
meta_harden2default:default2P
:C:/Users/aguir/Documents/CESE/CLP/contador/meta_harden.vhd2default:default2
362default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
meta_harden2default:default2
12default:default2
12default:default2P
:C:/Users/aguir/Documents/CESE/CLP/contador/meta_harden.vhd2default:default2
362default:default8@Z8-256h px? 
c
%s
*synth2K
7	Parameter BAUD_RATE bound to: 115200 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter CLOCK_RATE bound to: 150000000 - type: integer 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2!
uart_baud_gen2default:default2P
<C:/Users/aguir/Documents/CESE/CLP/contador/uart_baud_gen.vhd2default:default2
362default:default2'
uart_baud_gen_rx_i02default:default2!
uart_baud_gen2default:default2L
6C:/Users/aguir/Documents/CESE/CLP/contador/uart_rx.vhd2default:default2
1162default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2!
uart_baud_gen2default:default2R
<C:/Users/aguir/Documents/CESE/CLP/contador/uart_baud_gen.vhd2default:default2
502default:default8@Z8-638h px? 
c
%s
*synth2K
7	Parameter BAUD_RATE bound to: 115200 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter CLOCK_RATE bound to: 150000000 - type: integer 
2default:defaulth p
x
? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2!
uart_baud_gen2default:default2
22default:default2
12default:default2R
<C:/Users/aguir/Documents/CESE/CLP/contador/uart_baud_gen.vhd2default:default2
502default:default8@Z8-256h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
uart_rx_ctl2default:default2N
:C:/Users/aguir/Documents/CESE/CLP/contador/uart_rx_ctl.vhd2default:default2
532default:default2"
uart_rx_ctl_i02default:default2
uart_rx_ctl2default:default2L
6C:/Users/aguir/Documents/CESE/CLP/contador/uart_rx.vhd2default:default2
1272default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2
uart_rx_ctl2default:default2P
:C:/Users/aguir/Documents/CESE/CLP/contador/uart_rx_ctl.vhd2default:default2
702default:default8@Z8-638h px? 
?
default block is never used226*oasys2P
:C:/Users/aguir/Documents/CESE/CLP/contador/uart_rx_ctl.vhd2default:default2
952default:default8@Z8-226h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
uart_rx_ctl2default:default2
32default:default2
12default:default2P
:C:/Users/aguir/Documents/CESE/CLP/contador/uart_rx_ctl.vhd2default:default2
702default:default8@Z8-256h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
uart_rx2default:default2
42default:default2
12default:default2L
6C:/Users/aguir/Documents/CESE/CLP/contador/uart_rx.vhd2default:default2
582default:default8@Z8-256h px? 
V
%s
*synth2>
*	Parameter N bound to: 4 - type: integer 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2

contNb_ctl2default:default2M
9C:/Users/aguir/Documents/CESE/CLP/contador/contNb_ctl.vhd2default:default2
272default:default2!
contNb_ctl_i02default:default2

contNb_ctl2default:default2R
<C:/Users/aguir/Documents/CESE/CLP/contador/uart_cont_VIO.vhd2default:default2
1172default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2

contNb_ctl2default:default2O
9C:/Users/aguir/Documents/CESE/CLP/contador/contNb_ctl.vhd2default:default2
392default:default8@Z8-638h px? 
V
%s
*synth2>
*	Parameter N bound to: 4 - type: integer 
2default:defaulth p
x
? 
V
%s
*synth2>
*	Parameter N bound to: 4 - type: integer 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
contNb2default:default2I
5C:/Users/aguir/Documents/CESE/CLP/contador/contNb.vhd2default:default2
52default:default2
	contNb_i02default:default2
contNb2default:default2O
9C:/Users/aguir/Documents/CESE/CLP/contador/contNb_ctl.vhd2default:default2
582default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2
contNb2default:default2K
5C:/Users/aguir/Documents/CESE/CLP/contador/contNb.vhd2default:default2
162default:default8@Z8-638h px? 
V
%s
*synth2>
*	Parameter N bound to: 4 - type: integer 
2default:defaulth p
x
? 
?
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
aux2default:default2K
5C:/Users/aguir/Documents/CESE/CLP/contador/contNb.vhd2default:default2
202default:default8@Z8-614h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
contNb2default:default2
52default:default2
12default:default2K
5C:/Users/aguir/Documents/CESE/CLP/contador/contNb.vhd2default:default2
162default:default8@Z8-256h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2!
char_data_reg2default:default2O
9C:/Users/aguir/Documents/CESE/CLP/contador/contNb_ctl.vhd2default:default2
732default:default8@Z8-6014h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2

contNb_ctl2default:default2
62default:default2
12default:default2O
9C:/Users/aguir/Documents/CESE/CLP/contador/contNb_ctl.vhd2default:default2
392default:default8@Z8-256h px? 
?
synthesizing module '%s'638*oasys2
gen_ena2default:default2L
6C:/Users/aguir/Documents/CESE/CLP/contador/gen_ena.vhd2default:default2
152default:default8@Z8-638h px? 
^
%s
*synth2F
2	Parameter N bound to: 150000000 - type: integer 
2default:defaulth p
x
? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
gen_ena2default:default2
72default:default2
12default:default2L
6C:/Users/aguir/Documents/CESE/CLP/contador/gen_ena.vhd2default:default2
152default:default8@Z8-256h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
vio_02default:default2?
?C:/Users/aguir/Documents/CESE/CLP/contador/UART_cont_project/UART_cont_project.runs/synth_1/.Xil/Vivado-16632-DESKTOP-JPVMG1I/realtime/vio_0_stub.vhdl2default:default2
52default:default2
VIO_i02default:default2
vio_02default:default2R
<C:/Users/aguir/Documents/CESE/CLP/contador/uart_cont_VIO.vhd2default:default2
1362default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2
vio_02default:default2?
?C:/Users/aguir/Documents/CESE/CLP/contador/UART_cont_project/UART_cont_project.runs/synth_1/.Xil/Vivado-16632-DESKTOP-JPVMG1I/realtime/vio_0_stub.vhdl2default:default2
162default:default8@Z8-638h px? 
?
fMark debug on the nets applies keep_hierarchy on instance '%s'. This will prevent further optimization4399*oasys2!
contNb_ctl_i02default:default2R
<C:/Users/aguir/Documents/CESE/CLP/contador/uart_cont_VIO.vhd2default:default2
1172default:default8@Z8-6071h px? 
?
fMark debug on the nets applies keep_hierarchy on instance '%s'. This will prevent further optimization4399*oasys2

uart_rx_i02default:default2R
<C:/Users/aguir/Documents/CESE/CLP/contador/uart_cont_VIO.vhd2default:default2
1002default:default8@Z8-6071h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
	uart_cont2default:default2
82default:default2
12default:default2R
<C:/Users/aguir/Documents/CESE/CLP/contador/uart_cont_VIO.vhd2default:default2
422default:default8@Z8-256h px? 
?
!design %s has unconnected port %s3331*oasys2

contNb_ctl2default:default2

rx_data[7]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2

contNb_ctl2default:default2

rx_data[6]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2

contNb_ctl2default:default2

rx_data[5]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2

contNb_ctl2default:default2

rx_data[4]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2

contNb_ctl2default:default2

rx_data[3]2default:defaultZ8-3331h px? 
?
%s*synth2?
xFinished RTL Elaboration : Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 466.012 ; gain = 153.711
2default:defaulth px? 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 466.012 ; gain = 153.711
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 466.012 ; gain = 153.711
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
Loading part %s157*device2#
xc7z010clg400-12default:defaultZ21-403h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
>

Processing XDC Constraints
244*projectZ1-262h px? 
=
Initializing timing engine
348*projectZ1-569h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?c:/Users/aguir/Documents/CESE/CLP/contador/UART_cont_project/UART_cont_project.srcs/sources_1/ip/vio_0/vio_0/vio_0_in_context.xdc2default:default2
VIO_i0	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?c:/Users/aguir/Documents/CESE/CLP/contador/UART_cont_project/UART_cont_project.srcs/sources_1/ip/vio_0/vio_0/vio_0_in_context.xdc2default:default2
VIO_i0	2default:default8Z20-847h px? 
?
Parsing XDC File [%s]
179*designutils2V
@C:/Users/aguir/Documents/CESE/CLP/contador/Arty-Z7-10-Master.xdc2default:default8Z20-179h px? 
?
Finished Parsing XDC File [%s]
178*designutils2V
@C:/Users/aguir/Documents/CESE/CLP/contador/Arty-Z7-10-Master.xdc2default:default8Z20-178h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2T
@C:/Users/aguir/Documents/CESE/CLP/contador/Arty-Z7-10-Master.xdc2default:default2/
.Xil/uart_cont_propImpl.xdc2default:defaultZ1-236h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0022default:default2
795.9382default:default2
0.0002default:defaultZ17-268h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
~Finished Constraint Validation : Time (s): cpu = 00:00:16 ; elapsed = 00:00:19 . Memory (MB): peak = 795.938 ; gain = 483.637
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Loading part: xc7z010clg400-1
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:16 ; elapsed = 00:00:19 . Memory (MB): peak = 795.938 ; gain = 483.637
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:16 ; elapsed = 00:00:19 . Memory (MB): peak = 795.938 ; gain = 483.637
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 

8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2#
baud_x16_en_reg2default:defaultZ8-5546h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2
uart_rx_ctl2default:defaultZ8-802h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2(
over_sample_cnt_done2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2 
bit_cnt_done2default:default2
32default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
bit_cnt2default:default2
22default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
bit_cnt2default:default2
22default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
state2default:default2
12default:default2
52default:defaultZ8-5544h px? 
?
}HDL ADVISOR - The operator resource <%s> is shared. To prevent sharing consider applying a KEEP on the output of the operator4233*oasys2
adder2default:default2K
5C:/Users/aguir/Documents/CESE/CLP/contador/contNb.vhd2default:default2
282default:default8@Z8-5818h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_                 iSTATE1 |                               00 |                               00
2default:defaulth p
x
? 
?
%s
*synth2s
_                  iSTATE |                               01 |                               01
2default:defaulth p
x
? 
?
%s
*synth2s
_                 iSTATE0 |                               10 |                               10
2default:defaulth p
x
? 
?
%s
*synth2s
_                 iSTATE2 |                               11 |                               11
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2default:default2

sequential2default:default2
uart_rx_ctl2default:defaultZ8-3354h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:16 ; elapsed = 00:00:19 . Memory (MB): peak = 795.938 ; gain = 483.637
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     28 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      7 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      3 Bit       Adders := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                7 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                3 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                2 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 10    
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   6 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 11    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Y
%s
*synth2A
-Start RTL Hierarchical Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Hierarchical RTL Component report 
2default:defaulth p
x
? 
@
%s
*synth2(
Module meta_harden 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 2     
2default:defaulth p
x
? 
B
%s
*synth2*
Module uart_baud_gen 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      7 Bit       Adders := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                7 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
@
%s
*synth2(
Module uart_rx_ctl 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      3 Bit       Adders := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                3 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                2 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 2     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   6 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 9     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
;
%s
*synth2#
Module contNb 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
? 
?
%s
*synth2'
Module contNb_ctl 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 4     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
<
%s
*synth2$
Module gen_ena 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     28 Bit       Adders := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
[
%s
*synth2C
/Finished RTL Hierarchical Component Statistics
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2j
VPart Resources:
DSPs: 80 (col length:40)
BRAMs: 120 (col length: RAMB18 40 RAMB36 20)
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
]
%s
*synth2E
1Warning: Parallel synthesis criteria is not met 
2default:defaulth p
x
? 
?
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys27
#uart_baud_gen_rx_i0/baud_x16_en_reg2default:defaultZ8-5546h px? 
?
!design %s has unconnected port %s3331*oasys2

contNb_ctl2default:default2

rx_data[7]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2

contNb_ctl2default:default2

rx_data[6]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2

contNb_ctl2default:default2

rx_data[5]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2

contNb_ctl2default:default2

rx_data[4]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2

contNb_ctl2default:default2

rx_data[3]2default:defaultZ8-3331h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:17 ; elapsed = 00:00:19 . Memory (MB): peak = 795.938 ; gain = 483.637
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:25 ; elapsed = 00:00:29 . Memory (MB): peak = 797.980 ; gain = 485.680
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
|Finished Timing Optimization : Time (s): cpu = 00:00:25 ; elapsed = 00:00:29 . Memory (MB): peak = 798.055 ; gain = 485.754
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
{Finished Technology Mapping : Time (s): cpu = 00:00:25 ; elapsed = 00:00:29 . Memory (MB): peak = 817.684 ; gain = 505.383
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
uFinished IO Insertion : Time (s): cpu = 00:00:26 ; elapsed = 00:00:30 . Memory (MB): peak = 817.684 ; gain = 505.383
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Instances : Time (s): cpu = 00:00:26 ; elapsed = 00:00:30 . Memory (MB): peak = 817.684 ; gain = 505.383
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:26 ; elapsed = 00:00:30 . Memory (MB): peak = 817.684 ; gain = 505.383
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Ports : Time (s): cpu = 00:00:26 ; elapsed = 00:00:30 . Memory (MB): peak = 817.684 ; gain = 505.383
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:26 ; elapsed = 00:00:30 . Memory (MB): peak = 817.684 ; gain = 505.383
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Nets : Time (s): cpu = 00:00:26 ; elapsed = 00:00:30 . Memory (MB): peak = 817.684 ; gain = 505.383
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
? 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
? 
O
%s
*synth27
#|      |BlackBox name |Instances |
2default:defaulth p
x
? 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
? 
O
%s
*synth27
#|1     |vio_0         |         1|
2default:defaulth p
x
? 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
? 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px? 
J
%s*synth22
+------+-------------+------+
2default:defaulth px? 
J
%s*synth22
|      |Cell         |Count |
2default:defaulth px? 
J
%s*synth22
+------+-------------+------+
2default:defaulth px? 
J
%s*synth22
|1     |vio_0_bbox_0 |     1|
2default:defaulth px? 
J
%s*synth22
|2     |BUFG         |     1|
2default:defaulth px? 
J
%s*synth22
|3     |CARRY4       |    14|
2default:defaulth px? 
J
%s*synth22
|4     |LUT1         |     3|
2default:defaulth px? 
J
%s*synth22
|5     |LUT2         |     4|
2default:defaulth px? 
J
%s*synth22
|6     |LUT3         |     6|
2default:defaulth px? 
J
%s*synth22
|7     |LUT4         |     7|
2default:defaulth px? 
J
%s*synth22
|8     |LUT5         |    33|
2default:defaulth px? 
J
%s*synth22
|9     |LUT6         |    15|
2default:defaulth px? 
J
%s*synth22
|10    |FDRE         |    66|
2default:defaulth px? 
J
%s*synth22
|11    |FDSE         |     2|
2default:defaulth px? 
J
%s*synth22
|12    |IBUF         |     2|
2default:defaulth px? 
J
%s*synth22
+------+-------------+------+
2default:defaulth px? 
E
%s
*synth2-

Report Instance Areas: 
2default:defaulth p
x
? 
d
%s
*synth2L
8+------+------------------------+--------------+------+
2default:defaulth p
x
? 
d
%s
*synth2L
8|      |Instance                |Module        |Cells |
2default:defaulth p
x
? 
d
%s
*synth2L
8+------+------------------------+--------------+------+
2default:defaulth p
x
? 
d
%s
*synth2L
8|1     |top                     |              |   155|
2default:defaulth p
x
? 
d
%s
*synth2L
8|2     |  uart_rx_i0            |uart_rx       |    81|
2default:defaulth p
x
? 
d
%s
*synth2L
8|3     |    meta_harden_rxd_i0  |meta_harden   |     2|
2default:defaulth p
x
? 
d
%s
*synth2L
8|4     |    uart_baud_gen_rx_i0 |uart_baud_gen |    19|
2default:defaulth p
x
? 
d
%s
*synth2L
8|5     |    uart_rx_ctl_i0      |uart_rx_ctl   |    60|
2default:defaulth p
x
? 
d
%s
*synth2L
8|6     |  contNb_ctl_i0         |contNb_ctl    |    17|
2default:defaulth p
x
? 
d
%s
*synth2L
8|7     |    contNb_i0           |contNb        |     9|
2default:defaulth p
x
? 
d
%s
*synth2L
8|8     |  gen_ena_i0            |gen_ena       |    52|
2default:defaulth p
x
? 
d
%s
*synth2L
8+------+------------------------+--------------+------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Writing Synthesis Report : Time (s): cpu = 00:00:26 ; elapsed = 00:00:30 . Memory (MB): peak = 817.684 ; gain = 505.383
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 5 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
~Synthesis Optimization Runtime : Time (s): cpu = 00:00:15 ; elapsed = 00:00:22 . Memory (MB): peak = 817.684 ; gain = 175.457
2default:defaulth p
x
? 
?
%s
*synth2?
Synthesis Optimization Complete : Time (s): cpu = 00:00:26 ; elapsed = 00:00:30 . Memory (MB): peak = 817.684 ; gain = 505.383
2default:defaulth p
x
? 
B
 Translating synthesized netlist
350*projectZ1-571h px? 
f
-Analyzing %s Unisim elements for replacement
17*netlist2
162default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
492default:default2
122default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:282default:default2
00:00:332default:default2
817.6842default:default2
514.0472default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2}
iC:/Users/aguir/Documents/CESE/CLP/contador/UART_cont_project/UART_cont_project.runs/synth_1/uart_cont.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2|
hExecuting : report_utilization -file uart_cont_utilization_synth.rpt -pb uart_cont_utilization_synth.pb
2default:defaulth px? 
?
sreport_utilization: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.016 . Memory (MB): peak = 817.684 ; gain = 0.000
*commonh px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Tue Apr 20 16:26:58 20212default:defaultZ17-206h px? 


End Record
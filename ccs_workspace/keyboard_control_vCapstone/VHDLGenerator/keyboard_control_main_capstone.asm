;******************************************************************************
;* MSP430 G3 C/C++ Codegen                                              PC v20.2.5.LTS *
;* Date/Time created: Thu Apr 28 19:58:33 2022                                *
;******************************************************************************
	.compiler_opts --abi=eabi --diag_wrap=off --hll_source=on --mem_model:code=small --mem_model:data=small --object_format=elf --silicon_version=msp --symdebug:dwarf --symdebug:dwarf_version=3 

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../keyboard_control_main_capstone.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI MSP430 G3 C/C++ Codegen PC v20.2.5.LTS Copyright (c) 2003-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\Users\wward\Documents\GitHub\Raytheon_VHDL_Generator\ccs_workspace\keyboard_control_vCapstone\VHDLGenerator")
;	Interrupt vector table mappings
	.intvec	".int43",	ISR_TB0CCR0
	.intvec	".int42",	ISR_TB0CCR1
	.intvec	".int32",	ISR_EUSCI_A1
$C$DW$1	.dwtag  DW_TAG_variable
	.dwattr $C$DW$1, DW_AT_name("OUT *")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("P3OUT")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_decl_file("C:\ti\ccs1040\ccs\ccs_base\msp430\include\msp430fr2355.h")
	.dwattr $C$DW$1, DW_AT_decl_line(0x71d)
	.dwattr $C$DW$1, DW_AT_decl_column(0x01)

$C$DW$2	.dwtag  DW_TAG_variable
	.dwattr $C$DW$2, DW_AT_name("DIR *")
	.dwattr $C$DW$2, DW_AT_TI_symbol_name("P3DIR")
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$2, DW_AT_declaration
	.dwattr $C$DW$2, DW_AT_external
	.dwattr $C$DW$2, DW_AT_decl_file("C:\ti\ccs1040\ccs\ccs_base\msp430\include\msp430fr2355.h")
	.dwattr $C$DW$2, DW_AT_decl_line(0x71f)
	.dwattr $C$DW$2, DW_AT_decl_column(0x01)

$C$DW$3	.dwtag  DW_TAG_variable
	.dwattr $C$DW$3, DW_AT_name("SEL0 *")
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("P4SEL0")
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$3, DW_AT_declaration
	.dwattr $C$DW$3, DW_AT_external
	.dwattr $C$DW$3, DW_AT_decl_file("C:\ti\ccs1040\ccs\ccs_base\msp430\include\msp430fr2355.h")
	.dwattr $C$DW$3, DW_AT_decl_line(0x723)
	.dwattr $C$DW$3, DW_AT_decl_column(0x01)

$C$DW$4	.dwtag  DW_TAG_variable
	.dwattr $C$DW$4, DW_AT_name("SEL1 *")
	.dwattr $C$DW$4, DW_AT_TI_symbol_name("P4SEL1")
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$4, DW_AT_declaration
	.dwattr $C$DW$4, DW_AT_external
	.dwattr $C$DW$4, DW_AT_decl_file("C:\ti\ccs1040\ccs\ccs_base\msp430\include\msp430fr2355.h")
	.dwattr $C$DW$4, DW_AT_decl_line(0x726)
	.dwattr $C$DW$4, DW_AT_decl_column(0x01)

$C$DW$5	.dwtag  DW_TAG_variable
	.dwattr $C$DW$5, DW_AT_name("PM5CTL0")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("PM5CTL0")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$5, DW_AT_declaration
	.dwattr $C$DW$5, DW_AT_external
	.dwattr $C$DW$5, DW_AT_decl_file("C:\ti\ccs1040\ccs\ccs_base\msp430\include\msp430fr2355.h")
	.dwattr $C$DW$5, DW_AT_decl_line(0xc56)
	.dwattr $C$DW$5, DW_AT_decl_column(0x01)

$C$DW$6	.dwtag  DW_TAG_variable
	.dwattr $C$DW$6, DW_AT_name("TB0CTL")
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("TB0CTL")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$6, DW_AT_declaration
	.dwattr $C$DW$6, DW_AT_external
	.dwattr $C$DW$6, DW_AT_decl_file("C:\ti\ccs1040\ccs\ccs_base\msp430\include\msp430fr2355.h")
	.dwattr $C$DW$6, DW_AT_decl_line(0x1220)
	.dwattr $C$DW$6, DW_AT_decl_column(0x01)

$C$DW$7	.dwtag  DW_TAG_variable
	.dwattr $C$DW$7, DW_AT_name("TB0CCTL0")
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("TB0CCTL0")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$7, DW_AT_declaration
	.dwattr $C$DW$7, DW_AT_external
	.dwattr $C$DW$7, DW_AT_decl_file("C:\ti\ccs1040\ccs\ccs_base\msp430\include\msp430fr2355.h")
	.dwattr $C$DW$7, DW_AT_decl_line(0x1223)
	.dwattr $C$DW$7, DW_AT_decl_column(0x01)

$C$DW$8	.dwtag  DW_TAG_variable
	.dwattr $C$DW$8, DW_AT_name("TB0CCTL1")
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("TB0CCTL1")
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$8, DW_AT_declaration
	.dwattr $C$DW$8, DW_AT_external
	.dwattr $C$DW$8, DW_AT_decl_file("C:\ti\ccs1040\ccs\ccs_base\msp430\include\msp430fr2355.h")
	.dwattr $C$DW$8, DW_AT_decl_line(0x1226)
	.dwattr $C$DW$8, DW_AT_decl_column(0x01)

$C$DW$9	.dwtag  DW_TAG_variable
	.dwattr $C$DW$9, DW_AT_name("TB0CCR0")
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("TB0CCR0")
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$9, DW_AT_declaration
	.dwattr $C$DW$9, DW_AT_external
	.dwattr $C$DW$9, DW_AT_decl_file("C:\ti\ccs1040\ccs\ccs_base\msp430\include\msp430fr2355.h")
	.dwattr $C$DW$9, DW_AT_decl_line(0x122f)
	.dwattr $C$DW$9, DW_AT_decl_column(0x01)

$C$DW$10	.dwtag  DW_TAG_variable
	.dwattr $C$DW$10, DW_AT_name("TB0CCR1")
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("TB0CCR1")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$10, DW_AT_declaration
	.dwattr $C$DW$10, DW_AT_external
	.dwattr $C$DW$10, DW_AT_decl_file("C:\ti\ccs1040\ccs\ccs_base\msp430\include\msp430fr2355.h")
	.dwattr $C$DW$10, DW_AT_decl_line(0x1232)
	.dwattr $C$DW$10, DW_AT_decl_column(0x01)

$C$DW$11	.dwtag  DW_TAG_variable
	.dwattr $C$DW$11, DW_AT_name("WDTCTL")
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("WDTCTL")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$11, DW_AT_declaration
	.dwattr $C$DW$11, DW_AT_external
	.dwattr $C$DW$11, DW_AT_decl_file("C:\ti\ccs1040\ccs\ccs_base\msp430\include\msp430fr2355.h")
	.dwattr $C$DW$11, DW_AT_decl_line(0x14e1)
	.dwattr $C$DW$11, DW_AT_decl_column(0x01)

$C$DW$12	.dwtag  DW_TAG_variable
	.dwattr $C$DW$12, DW_AT_name("UCA1CTLW0")
	.dwattr $C$DW$12, DW_AT_TI_symbol_name("UCA1CTLW0")
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$12, DW_AT_declaration
	.dwattr $C$DW$12, DW_AT_external
	.dwattr $C$DW$12, DW_AT_decl_file("C:\ti\ccs1040\ccs\ccs_base\msp430\include\msp430fr2355.h")
	.dwattr $C$DW$12, DW_AT_decl_line(0x19ff)
	.dwattr $C$DW$12, DW_AT_decl_column(0x01)

$C$DW$13	.dwtag  DW_TAG_variable
	.dwattr $C$DW$13, DW_AT_name("UCA1BRW")
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("UCA1BRW")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$13, DW_AT_declaration
	.dwattr $C$DW$13, DW_AT_external
	.dwattr $C$DW$13, DW_AT_decl_file("C:\ti\ccs1040\ccs\ccs_base\msp430\include\msp430fr2355.h")
	.dwattr $C$DW$13, DW_AT_decl_line(0x1a05)
	.dwattr $C$DW$13, DW_AT_decl_column(0x01)

$C$DW$14	.dwtag  DW_TAG_variable
	.dwattr $C$DW$14, DW_AT_name("UCA1MCTLW")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("UCA1MCTLW")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$14, DW_AT_declaration
	.dwattr $C$DW$14, DW_AT_external
	.dwattr $C$DW$14, DW_AT_decl_file("C:\ti\ccs1040\ccs\ccs_base\msp430\include\msp430fr2355.h")
	.dwattr $C$DW$14, DW_AT_decl_line(0x1a08)
	.dwattr $C$DW$14, DW_AT_decl_column(0x01)

$C$DW$15	.dwtag  DW_TAG_variable
	.dwattr $C$DW$15, DW_AT_name("UCA1RXBUF")
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("UCA1RXBUF")
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$15, DW_AT_declaration
	.dwattr $C$DW$15, DW_AT_external
	.dwattr $C$DW$15, DW_AT_decl_file("C:\ti\ccs1040\ccs\ccs_base\msp430\include\msp430fr2355.h")
	.dwattr $C$DW$15, DW_AT_decl_line(0x1a0e)
	.dwattr $C$DW$15, DW_AT_decl_column(0x01)

$C$DW$16	.dwtag  DW_TAG_variable
	.dwattr $C$DW$16, DW_AT_name("UCA1IE")
	.dwattr $C$DW$16, DW_AT_TI_symbol_name("UCA1IE")
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$16, DW_AT_declaration
	.dwattr $C$DW$16, DW_AT_external
	.dwattr $C$DW$16, DW_AT_decl_file("C:\ti\ccs1040\ccs\ccs_base\msp430\include\msp430fr2355.h")
	.dwattr $C$DW$16, DW_AT_decl_line(0x1a1a)
	.dwattr $C$DW$16, DW_AT_decl_column(0x01)

$C$DW$17	.dwtag  DW_TAG_variable
	.dwattr $C$DW$17, DW_AT_name("UCA1IFG")
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("UCA1IFG")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$17, DW_AT_declaration
	.dwattr $C$DW$17, DW_AT_external
	.dwattr $C$DW$17, DW_AT_decl_file("C:\ti\ccs1040\ccs\ccs_base\msp430\include\msp430fr2355.h")
	.dwattr $C$DW$17, DW_AT_decl_line(0x1a1d)
	.dwattr $C$DW$17, DW_AT_decl_column(0x01)

	.global	min_duty_cycle
	.sect	".const"
	.align	2
	.elfsym	min_duty_cycle,SYM_SIZE(2)
min_duty_cycle:
	.bits		0x2bc,16
			; min_duty_cycle @ 0

$C$DW$18	.dwtag  DW_TAG_variable
	.dwattr $C$DW$18, DW_AT_name("min_duty_cycle")
	.dwattr $C$DW$18, DW_AT_TI_symbol_name("min_duty_cycle")
	.dwattr $C$DW$18, DW_AT_location[DW_OP_addr min_duty_cycle]
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$18, DW_AT_external
	.dwattr $C$DW$18, DW_AT_decl_file("../keyboard_control_main_capstone.c")
	.dwattr $C$DW$18, DW_AT_decl_line(0x0a)
	.dwattr $C$DW$18, DW_AT_decl_column(0x14)

	.global	max_duty_cycle
	.sect	".const"
	.align	2
	.elfsym	max_duty_cycle,SYM_SIZE(2)
max_duty_cycle:
	.bits		0x8fc,16
			; max_duty_cycle @ 0

$C$DW$19	.dwtag  DW_TAG_variable
	.dwattr $C$DW$19, DW_AT_name("max_duty_cycle")
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("max_duty_cycle")
	.dwattr $C$DW$19, DW_AT_location[DW_OP_addr max_duty_cycle]
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$19, DW_AT_external
	.dwattr $C$DW$19, DW_AT_decl_file("../keyboard_control_main_capstone.c")
	.dwattr $C$DW$19, DW_AT_decl_line(0x0b)
	.dwattr $C$DW$19, DW_AT_decl_column(0x14)

	.global	step_size_duty_cycle
	.sect	".const"
	.align	2
	.elfsym	step_size_duty_cycle,SYM_SIZE(2)
step_size_duty_cycle:
	.bits		0x64,16
			; step_size_duty_cycle @ 0

$C$DW$20	.dwtag  DW_TAG_variable
	.dwattr $C$DW$20, DW_AT_name("step_size_duty_cycle")
	.dwattr $C$DW$20, DW_AT_TI_symbol_name("step_size_duty_cycle")
	.dwattr $C$DW$20, DW_AT_location[DW_OP_addr step_size_duty_cycle]
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$20, DW_AT_external
	.dwattr $C$DW$20, DW_AT_decl_file("../keyboard_control_main_capstone.c")
	.dwattr $C$DW$20, DW_AT_decl_line(0x0e)
	.dwattr $C$DW$20, DW_AT_decl_column(0x0b)

	.global	period_T
	.data
	.align	2
	.elfsym	period_T,SYM_SIZE(2)
period_T:
	.bits		0x8fc,16
			; period_T @ 0

$C$DW$21	.dwtag  DW_TAG_variable
	.dwattr $C$DW$21, DW_AT_name("period_T")
	.dwattr $C$DW$21, DW_AT_TI_symbol_name("period_T")
	.dwattr $C$DW$21, DW_AT_location[DW_OP_addr period_T]
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$21, DW_AT_external
	.dwattr $C$DW$21, DW_AT_decl_file("../keyboard_control_main_capstone.c")
	.dwattr $C$DW$21, DW_AT_decl_line(0x0f)
	.dwattr $C$DW$21, DW_AT_decl_column(0x0e)

	.global	duty_cycle
	.data
	.align	2
	.elfsym	duty_cycle,SYM_SIZE(2)
duty_cycle:
	.bits		0x5dc,16
			; duty_cycle @ 0

$C$DW$22	.dwtag  DW_TAG_variable
	.dwattr $C$DW$22, DW_AT_name("duty_cycle")
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("duty_cycle")
	.dwattr $C$DW$22, DW_AT_location[DW_OP_addr duty_cycle]
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$22, DW_AT_external
	.dwattr $C$DW$22, DW_AT_decl_file("../keyboard_control_main_capstone.c")
	.dwattr $C$DW$22, DW_AT_decl_line(0x10)
	.dwattr $C$DW$22, DW_AT_decl_column(0x0e)

	.global	last
	.sect	".const"
	.align	2
	.elfsym	last,SYM_SIZE(2)
last:
	.bits		0x7,16
			; last @ 0

$C$DW$23	.dwtag  DW_TAG_variable
	.dwattr $C$DW$23, DW_AT_name("last")
	.dwattr $C$DW$23, DW_AT_TI_symbol_name("last")
	.dwattr $C$DW$23, DW_AT_location[DW_OP_addr last]
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$23, DW_AT_external
	.dwattr $C$DW$23, DW_AT_decl_file("../keyboard_control_main_capstone.c")
	.dwattr $C$DW$23, DW_AT_decl_line(0x13)
	.dwattr $C$DW$23, DW_AT_decl_column(0x14)

	.global	position
	.common	position,2,2
$C$DW$24	.dwtag  DW_TAG_variable
	.dwattr $C$DW$24, DW_AT_name("position")
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("position")
	.dwattr $C$DW$24, DW_AT_location[DW_OP_addr position]
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$24, DW_AT_external
	.dwattr $C$DW$24, DW_AT_decl_file("../keyboard_control_main_capstone.c")
	.dwattr $C$DW$24, DW_AT_decl_line(0x14)
	.dwattr $C$DW$24, DW_AT_decl_column(0x0e)

	.global	message_length
	.common	message_length,2,2
$C$DW$25	.dwtag  DW_TAG_variable
	.dwattr $C$DW$25, DW_AT_name("message_length")
	.dwattr $C$DW$25, DW_AT_TI_symbol_name("message_length")
	.dwattr $C$DW$25, DW_AT_location[DW_OP_addr message_length]
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$25, DW_AT_external
	.dwattr $C$DW$25, DW_AT_decl_file("../keyboard_control_main_capstone.c")
	.dwattr $C$DW$25, DW_AT_decl_line(0x15)
	.dwattr $C$DW$25, DW_AT_decl_column(0x0e)

;	C:\ti\ccs1040\ccs\tools\compiler\ti-cgt-msp430_20.2.5.LTS\bin\acpia430.exe -@C:\\Users\\wward\\AppData\\Local\\Temp\\{2F0F0C13-E36D-4F7C-BAB9-9533424A9A6D} 
	.sect	".text:configTimer"
	.clink
	.global	configTimer

$C$DW$26	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$26, DW_AT_name("configTimer")
	.dwattr $C$DW$26, DW_AT_low_pc(configTimer)
	.dwattr $C$DW$26, DW_AT_high_pc(0x00)
	.dwattr $C$DW$26, DW_AT_TI_symbol_name("configTimer")
	.dwattr $C$DW$26, DW_AT_external
	.dwattr $C$DW$26, DW_AT_TI_begin_file("../keyboard_control_main_capstone.c")
	.dwattr $C$DW$26, DW_AT_TI_begin_line(0x17)
	.dwattr $C$DW$26, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$26, DW_AT_decl_file("../keyboard_control_main_capstone.c")
	.dwattr $C$DW$26, DW_AT_decl_line(0x17)
	.dwattr $C$DW$26, DW_AT_decl_column(0x06)
	.dwattr $C$DW$26, DW_AT_TI_max_frame_size(0x02)
	.dwpsn	file "../keyboard_control_main_capstone.c",line 23,column 24,is_stmt,address configTimer,isa 0

	.dwfde $C$DW$CIE, configTimer

;*****************************************************************************
;* FUNCTION NAME: configTimer                                                *
;*                                                                           *
;*   Regs Modified     : SP                                                  *
;*   Regs Used         : SP                                                  *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
configTimer:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
	.dwpsn	file "../keyboard_control_main_capstone.c",line 26,column 5,is_stmt,isa 0
        OR.W      #4,&TB0CTL+0          ; [] |26| 
	.dwpsn	file "../keyboard_control_main_capstone.c",line 27,column 5,is_stmt,isa 0
        OR.W      #512,&TB0CTL+0        ; [] |27| 
	.dwpsn	file "../keyboard_control_main_capstone.c",line 28,column 5,is_stmt,isa 0
        OR.W      #16,&TB0CTL+0         ; [] |28| 
	.dwpsn	file "../keyboard_control_main_capstone.c",line 29,column 5,is_stmt,isa 0
        MOV.W     &TB0CTL+0,&TB0CTL+0   ; [] |29| 
	.dwpsn	file "../keyboard_control_main_capstone.c",line 30,column 5,is_stmt,isa 0
        MOV.W     #2300,&TB0CCR0+0      ; [] |30| 
	.dwpsn	file "../keyboard_control_main_capstone.c",line 31,column 5,is_stmt,isa 0
        MOV.W     #1500,&TB0CCR1+0      ; [] |31| 
	.dwpsn	file "../keyboard_control_main_capstone.c",line 32,column 1,is_stmt,isa 0
$C$DW$27	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$27, DW_AT_low_pc(0x00)
	.dwattr $C$DW$27, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$26, DW_AT_TI_end_file("../keyboard_control_main_capstone.c")
	.dwattr $C$DW$26, DW_AT_TI_end_line(0x20)
	.dwattr $C$DW$26, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$26

	.sect	".text:configUART"
	.clink
	.global	configUART

$C$DW$28	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$28, DW_AT_name("configUART")
	.dwattr $C$DW$28, DW_AT_low_pc(configUART)
	.dwattr $C$DW$28, DW_AT_high_pc(0x00)
	.dwattr $C$DW$28, DW_AT_TI_symbol_name("configUART")
	.dwattr $C$DW$28, DW_AT_external
	.dwattr $C$DW$28, DW_AT_TI_begin_file("../keyboard_control_main_capstone.c")
	.dwattr $C$DW$28, DW_AT_TI_begin_line(0x24)
	.dwattr $C$DW$28, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$28, DW_AT_decl_file("../keyboard_control_main_capstone.c")
	.dwattr $C$DW$28, DW_AT_decl_line(0x24)
	.dwattr $C$DW$28, DW_AT_decl_column(0x06)
	.dwattr $C$DW$28, DW_AT_TI_max_frame_size(0x02)
	.dwpsn	file "../keyboard_control_main_capstone.c",line 36,column 23,is_stmt,address configUART,isa 0

	.dwfde $C$DW$CIE, configUART

;*****************************************************************************
;* FUNCTION NAME: configUART                                                 *
;*                                                                           *
;*   Regs Modified     : SP                                                  *
;*   Regs Used         : SP                                                  *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
configUART:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
	.dwpsn	file "../keyboard_control_main_capstone.c",line 39,column 5,is_stmt,isa 0
        OR.W      #1,&UCA1CTLW0+0       ; [] |39| 
	.dwpsn	file "../keyboard_control_main_capstone.c",line 42,column 5,is_stmt,isa 0
        OR.W      #128,&UCA1CTLW0+0     ; [] |42| 
	.dwpsn	file "../keyboard_control_main_capstone.c",line 43,column 5,is_stmt,isa 0
        MOV.W     #8,&UCA1BRW+0         ; [] |43| 
	.dwpsn	file "../keyboard_control_main_capstone.c",line 44,column 5,is_stmt,isa 0
        OR.W      #54784,&UCA1MCTLW+0   ; [] |44| 
	.dwpsn	file "../keyboard_control_main_capstone.c",line 47,column 5,is_stmt,isa 0
        BIC.B     #8,&P4SEL1+0          ; [] |47| 
	.dwpsn	file "../keyboard_control_main_capstone.c",line 48,column 5,is_stmt,isa 0
        OR.B      #8,&P4SEL0+0          ; [] |48| 
	.dwpsn	file "../keyboard_control_main_capstone.c",line 51,column 5,is_stmt,isa 0
        BIC.B     #4,&P4SEL1+0          ; [] |51| 
	.dwpsn	file "../keyboard_control_main_capstone.c",line 52,column 5,is_stmt,isa 0
        OR.B      #4,&P4SEL0+0          ; [] |52| 
	.dwpsn	file "../keyboard_control_main_capstone.c",line 56,column 5,is_stmt,isa 0
        BIC.W     #1,&UCA1CTLW0+0       ; [] |56| 
	.dwpsn	file "../keyboard_control_main_capstone.c",line 58,column 1,is_stmt,isa 0
$C$DW$29	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$29, DW_AT_low_pc(0x00)
	.dwattr $C$DW$29, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$28, DW_AT_TI_end_file("../keyboard_control_main_capstone.c")
	.dwattr $C$DW$28, DW_AT_TI_end_line(0x3a)
	.dwattr $C$DW$28, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$28

	.sect	".text:main"
	.clink
	.global	main

$C$DW$30	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$30, DW_AT_name("main")
	.dwattr $C$DW$30, DW_AT_low_pc(main)
	.dwattr $C$DW$30, DW_AT_high_pc(0x00)
	.dwattr $C$DW$30, DW_AT_TI_symbol_name("main")
	.dwattr $C$DW$30, DW_AT_external
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$30, DW_AT_TI_begin_file("../keyboard_control_main_capstone.c")
	.dwattr $C$DW$30, DW_AT_TI_begin_line(0x3e)
	.dwattr $C$DW$30, DW_AT_TI_begin_column(0x05)
	.dwattr $C$DW$30, DW_AT_decl_file("../keyboard_control_main_capstone.c")
	.dwattr $C$DW$30, DW_AT_decl_line(0x3e)
	.dwattr $C$DW$30, DW_AT_decl_column(0x05)
	.dwattr $C$DW$30, DW_AT_TI_max_frame_size(0x02)
	.dwpsn	file "../keyboard_control_main_capstone.c",line 63,column 1,is_stmt,address main,isa 0

	.dwfde $C$DW$CIE, main

;*****************************************************************************
;* FUNCTION NAME: main                                                       *
;*                                                                           *
;*   Regs Modified     : SP                                                  *
;*   Regs Used         : SP                                                  *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
main:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
	.dwpsn	file "../keyboard_control_main_capstone.c",line 64,column 2,is_stmt,isa 0
        MOV.W     #23168,&WDTCTL+0      ; [] |64| 
	.dwpsn	file "../keyboard_control_main_capstone.c",line 67,column 2,is_stmt,isa 0
        OR.B      #1,&P3DIR+0           ; [] |67| 
	.dwpsn	file "../keyboard_control_main_capstone.c",line 68,column 2,is_stmt,isa 0
        BIC.B     #1,&P3OUT+0           ; [] |68| 
	.dwpsn	file "../keyboard_control_main_capstone.c",line 70,column 2,is_stmt,isa 0
$C$DW$31	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$31, DW_AT_low_pc(0x00)
	.dwattr $C$DW$31, DW_AT_name("configTimer")
	.dwattr $C$DW$31, DW_AT_TI_call

        CALL      #configTimer          ; [] |70| 
                                          ; [] |70| 
	.dwpsn	file "../keyboard_control_main_capstone.c",line 72,column 2,is_stmt,isa 0
$C$DW$32	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$32, DW_AT_low_pc(0x00)
	.dwattr $C$DW$32, DW_AT_name("configUART")
	.dwattr $C$DW$32, DW_AT_TI_call

        CALL      #configUART           ; [] |72| 
                                          ; [] |72| 
	.dwpsn	file "../keyboard_control_main_capstone.c",line 74,column 5,is_stmt,isa 0
        BIC.W     #1,&PM5CTL0+0         ; [] |74| 
	.dwpsn	file "../keyboard_control_main_capstone.c",line 77,column 5,is_stmt,isa 0
        OR.W      #1,&UCA1IE+0          ; [] |77| 
	.dwpsn	file "../keyboard_control_main_capstone.c",line 80,column 5,is_stmt,isa 0
        OR.W      #16,&TB0CCTL0+0       ; [] |80| 
	.dwpsn	file "../keyboard_control_main_capstone.c",line 81,column 5,is_stmt,isa 0
        BIC.W     #1,&TB0CCTL0+0        ; [] |81| 
	.dwpsn	file "../keyboard_control_main_capstone.c",line 82,column 5,is_stmt,isa 0
        OR.W      #16,&TB0CCTL1+0       ; [] |82| 
	.dwpsn	file "../keyboard_control_main_capstone.c",line 83,column 5,is_stmt,isa 0
        BIC.W     #1,&TB0CCTL1+0        ; [] |83| 
	.dwpsn	file "../keyboard_control_main_capstone.c",line 85,column 5,is_stmt,isa 0
        EINT      ; [] |85| 
	.dwpsn	file "../keyboard_control_main_capstone.c",line 87,column 11,is_stmt,isa 0
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP $C$L1
;*
;*   Loop source line                : 87
;*   Loop closing brace source line  : 89
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
$C$L1:    
        JMP       $C$L1                 ; [] |87| 
                                          ; [] |87| 
;* --------------------------------------------------------------------------*
	.dwattr $C$DW$30, DW_AT_TI_end_file("../keyboard_control_main_capstone.c")
	.dwattr $C$DW$30, DW_AT_TI_end_line(0x5c)
	.dwattr $C$DW$30, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$30

	.sect	".text:ISR_TB0CCR0"
	.clink
	.global	ISR_TB0CCR0

$C$DW$33	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$33, DW_AT_name("ISR_TB0CCR0")
	.dwattr $C$DW$33, DW_AT_low_pc(ISR_TB0CCR0)
	.dwattr $C$DW$33, DW_AT_high_pc(0x00)
	.dwattr $C$DW$33, DW_AT_TI_symbol_name("ISR_TB0CCR0")
	.dwattr $C$DW$33, DW_AT_external
	.dwattr $C$DW$33, DW_AT_TI_begin_file("../keyboard_control_main_capstone.c")
	.dwattr $C$DW$33, DW_AT_TI_begin_line(0x61)
	.dwattr $C$DW$33, DW_AT_TI_begin_column(0x12)
	.dwattr $C$DW$33, DW_AT_decl_file("../keyboard_control_main_capstone.c")
	.dwattr $C$DW$33, DW_AT_decl_line(0x61)
	.dwattr $C$DW$33, DW_AT_decl_column(0x12)
	.dwattr $C$DW$33, DW_AT_TI_interrupt
	.dwattr $C$DW$33, DW_AT_TI_max_frame_size(0x02)
	.dwpsn	file "../keyboard_control_main_capstone.c",line 97,column 36,is_stmt,address ISR_TB0CCR0,isa 0

	.dwfde $C$DW$CIE, ISR_TB0CCR0

;*****************************************************************************
;* FUNCTION NAME: ISR_TB0CCR0                                                *
;*                                                                           *
;*   Regs Modified     : SP                                                  *
;*   Regs Used         : SP                                                  *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
ISR_TB0CCR0:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
	.dwpsn	file "../keyboard_control_main_capstone.c",line 98,column 5,is_stmt,isa 0
        OR.B      #1,&P3OUT+0           ; [] |98| 
	.dwpsn	file "../keyboard_control_main_capstone.c",line 99,column 5,is_stmt,isa 0
        BIC.W     #1,&TB0CCTL0+0        ; [] |99| 
	.dwpsn	file "../keyboard_control_main_capstone.c",line 100,column 1,is_stmt,isa 0
$C$DW$34	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$34, DW_AT_low_pc(0x00)
	.dwattr $C$DW$34, DW_AT_TI_return

        RETI      ; [] 
        ; [] 
	.dwattr $C$DW$33, DW_AT_TI_end_file("../keyboard_control_main_capstone.c")
	.dwattr $C$DW$33, DW_AT_TI_end_line(0x64)
	.dwattr $C$DW$33, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$33

	.sect	".text:ISR_TB0CCR1"
	.clink
	.global	ISR_TB0CCR1

$C$DW$35	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$35, DW_AT_name("ISR_TB0CCR1")
	.dwattr $C$DW$35, DW_AT_low_pc(ISR_TB0CCR1)
	.dwattr $C$DW$35, DW_AT_high_pc(0x00)
	.dwattr $C$DW$35, DW_AT_TI_symbol_name("ISR_TB0CCR1")
	.dwattr $C$DW$35, DW_AT_external
	.dwattr $C$DW$35, DW_AT_TI_begin_file("../keyboard_control_main_capstone.c")
	.dwattr $C$DW$35, DW_AT_TI_begin_line(0x67)
	.dwattr $C$DW$35, DW_AT_TI_begin_column(0x12)
	.dwattr $C$DW$35, DW_AT_decl_file("../keyboard_control_main_capstone.c")
	.dwattr $C$DW$35, DW_AT_decl_line(0x67)
	.dwattr $C$DW$35, DW_AT_decl_column(0x12)
	.dwattr $C$DW$35, DW_AT_TI_interrupt
	.dwattr $C$DW$35, DW_AT_TI_max_frame_size(0x02)
	.dwpsn	file "../keyboard_control_main_capstone.c",line 103,column 36,is_stmt,address ISR_TB0CCR1,isa 0

	.dwfde $C$DW$CIE, ISR_TB0CCR1

;*****************************************************************************
;* FUNCTION NAME: ISR_TB0CCR1                                                *
;*                                                                           *
;*   Regs Modified     : SP                                                  *
;*   Regs Used         : SP                                                  *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
ISR_TB0CCR1:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
	.dwpsn	file "../keyboard_control_main_capstone.c",line 104,column 5,is_stmt,isa 0
        MOV.W     &duty_cycle+0,&TB0CCR1+0 ; [] |104| 
	.dwpsn	file "../keyboard_control_main_capstone.c",line 105,column 5,is_stmt,isa 0
        BIC.B     #1,&P3OUT+0           ; [] |105| 
	.dwpsn	file "../keyboard_control_main_capstone.c",line 106,column 5,is_stmt,isa 0
        BIC.W     #1,&TB0CCTL1+0        ; [] |106| 
	.dwpsn	file "../keyboard_control_main_capstone.c",line 107,column 1,is_stmt,isa 0
$C$DW$36	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$36, DW_AT_low_pc(0x00)
	.dwattr $C$DW$36, DW_AT_TI_return

        RETI      ; [] 
        ; [] 
	.dwattr $C$DW$35, DW_AT_TI_end_file("../keyboard_control_main_capstone.c")
	.dwattr $C$DW$35, DW_AT_TI_end_line(0x6b)
	.dwattr $C$DW$35, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$35

	.sect	".text:ISR_EUSCI_A1"
	.clink
	.global	ISR_EUSCI_A1

$C$DW$37	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$37, DW_AT_name("ISR_EUSCI_A1")
	.dwattr $C$DW$37, DW_AT_low_pc(ISR_EUSCI_A1)
	.dwattr $C$DW$37, DW_AT_high_pc(0x00)
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("ISR_EUSCI_A1")
	.dwattr $C$DW$37, DW_AT_external
	.dwattr $C$DW$37, DW_AT_TI_begin_file("../keyboard_control_main_capstone.c")
	.dwattr $C$DW$37, DW_AT_TI_begin_line(0x6f)
	.dwattr $C$DW$37, DW_AT_TI_begin_column(0x12)
	.dwattr $C$DW$37, DW_AT_decl_file("../keyboard_control_main_capstone.c")
	.dwattr $C$DW$37, DW_AT_decl_line(0x6f)
	.dwattr $C$DW$37, DW_AT_decl_column(0x12)
	.dwattr $C$DW$37, DW_AT_TI_interrupt
	.dwattr $C$DW$37, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "../keyboard_control_main_capstone.c",line 111,column 37,is_stmt,address ISR_EUSCI_A1,isa 0

	.dwfde $C$DW$CIE, ISR_EUSCI_A1

;*****************************************************************************
;* FUNCTION NAME: ISR_EUSCI_A1                                               *
;*                                                                           *
;*   Regs Modified     : SP,SR                                               *
;*   Regs Used         : SP,SR                                               *
;*   Local Frame Size  : 0 Args + 4 Auto + 0 Save = 4 byte                   *
;*****************************************************************************
ISR_EUSCI_A1:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
        SUB.W     #4,SP                 ; [] 
	.dwcfi	cfa_offset, 6
$C$DW$38	.dwtag  DW_TAG_variable
	.dwattr $C$DW$38, DW_AT_name("recieve")
	.dwattr $C$DW$38, DW_AT_TI_symbol_name("recieve")
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$38, DW_AT_location[DW_OP_breg1 0]

	.dwpsn	file "../keyboard_control_main_capstone.c",line 114,column 5,is_stmt,isa 0
        MOV.W     &UCA1IFG+0,0(SP)      ; [] |114| 
	.dwpsn	file "../keyboard_control_main_capstone.c",line 115,column 5,is_stmt,isa 0
        AND.W     #1,0(SP)              ; [] |115| 
	.dwpsn	file "../keyboard_control_main_capstone.c",line 116,column 1,is_stmt,isa 0
        ADD.W     #32767,0(SP)          ; [] |116| 
	.dwpsn	file "../keyboard_control_main_capstone.c",line 119,column 5,is_stmt,isa 0
        CMP.W     #1,0(SP)              ; [] |119| 
        JNE       $C$L5                 ; [] |119| 
                                          ; [] |119| 
;* --------------------------------------------------------------------------*

$C$DW$39	.dwtag  DW_TAG_lexical_block
	.dwattr $C$DW$39, DW_AT_low_pc(0x00)
	.dwattr $C$DW$39, DW_AT_high_pc(0x00)
$C$DW$40	.dwtag  DW_TAG_variable
	.dwattr $C$DW$40, DW_AT_name("reciever")
	.dwattr $C$DW$40, DW_AT_TI_symbol_name("reciever")
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$40, DW_AT_location[DW_OP_breg1 2]

	.dwpsn	file "../keyboard_control_main_capstone.c",line 120,column 22,is_stmt,isa 0
        MOV.W     &UCA1RXBUF+0,2(SP)    ; [] |120| 
	.dwpsn	file "../keyboard_control_main_capstone.c",line 121,column 9,is_stmt,isa 0
        CMP.W     #49,&UCA1RXBUF+0      ; [] |121| 
        JNE       $C$L2                 ; [] |121| 
                                          ; [] |121| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../keyboard_control_main_capstone.c",line 122,column 13,is_stmt,isa 0
        MOV.W     #700,&duty_cycle+0    ; [] |122| 
        JMP       $C$L4                 ; [] 
                                          ; [] 
;* --------------------------------------------------------------------------*
$C$L2:    
	.dwpsn	file "../keyboard_control_main_capstone.c",line 123,column 16,is_stmt,isa 0
        CMP.W     #50,&UCA1RXBUF+0      ; [] |123| 
        JNE       $C$L3                 ; [] |123| 
                                          ; [] |123| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../keyboard_control_main_capstone.c",line 124,column 13,is_stmt,isa 0
        MOV.W     #1500,&duty_cycle+0   ; [] |124| 
        JMP       $C$L4                 ; [] 
                                          ; [] 
;* --------------------------------------------------------------------------*
$C$L3:    
	.dwpsn	file "../keyboard_control_main_capstone.c",line 125,column 16,is_stmt,isa 0
        CMP.W     #51,&UCA1RXBUF+0      ; [] |125| 
        JNE       $C$L4                 ; [] |125| 
                                          ; [] |125| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../keyboard_control_main_capstone.c",line 126,column 13,is_stmt,isa 0
        MOV.W     #2000,&duty_cycle+0   ; [] |126| 
;* --------------------------------------------------------------------------*
$C$L4:    
	.dwpsn	file "../keyboard_control_main_capstone.c",line 128,column 9,is_stmt,isa 0
        BIC.W     #1,&UCA1IFG+0         ; [] |128| 
	.dwendtag $C$DW$39

	.dwpsn	file "../keyboard_control_main_capstone.c",line 131,column 1,is_stmt,isa 0
;* --------------------------------------------------------------------------*
$C$L5:    
        ADD.W     #4,SP                 ; [] 
	.dwcfi	cfa_offset, 2
$C$DW$41	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$41, DW_AT_low_pc(0x00)
	.dwattr $C$DW$41, DW_AT_TI_return

        RETI      ; [] 
        ; [] 
	.dwattr $C$DW$37, DW_AT_TI_end_file("../keyboard_control_main_capstone.c")
	.dwattr $C$DW$37, DW_AT_TI_end_line(0x83)
	.dwattr $C$DW$37, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$37

;*****************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                             *
;*****************************************************************************
	.global	P3OUT
	.global	P3DIR
	.global	P4SEL0
	.global	P4SEL1
	.global	PM5CTL0
	.global	TB0CTL
	.global	TB0CCTL0
	.global	TB0CCTL1
	.global	TB0CCR0
	.global	TB0CCR1
	.global	WDTCTL
	.global	UCA1CTLW0
	.global	UCA1BRW
	.global	UCA1MCTLW
	.global	UCA1RXBUF
	.global	UCA1IE
	.global	UCA1IFG

;******************************************************************************
;* BUILD ATTRIBUTES                                                           *
;******************************************************************************
	.battr "TI", Tag_File, 1, Tag_LPM_INFO(1)
	.battr "TI", Tag_File, 1, Tag_PORTS_INIT_INFO("012345678901ABCDEFGHIJ01111110000011100000000001000000000000000000")
	.battr "TI", Tag_File, 1, Tag_LEA_INFO(1)
	.battr "TI", Tag_File, 1, Tag_HW_MPY32_INFO(2)
	.battr "TI", Tag_File, 1, Tag_HW_MPY_ISR_INFO(1)
	.battr "TI", Tag_File, 1, Tag_HW_MPY_INLINE_INFO(1)
	.battr "mspabi", Tag_File, 1, Tag_enum_size(3)

;******************************************************************************
;* TYPE INFORMATION                                                           *
;******************************************************************************
$C$DW$T$2	.dwtag  DW_TAG_unspecified_type
	.dwattr $C$DW$T$2, DW_AT_name("void")


$C$DW$T$21	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$21, DW_AT_language(DW_LANG_C)
	.dwendtag $C$DW$T$21

$C$DW$T$22	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$22, DW_AT_address_class(0x10)

$C$DW$T$23	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$23, DW_AT_name("__SFR_FARPTR")
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$23, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$23, DW_AT_decl_file("C:\ti\ccs1040\ccs\ccs_base\msp430\include\msp430fr2355.h")
	.dwattr $C$DW$T$23, DW_AT_decl_line(0x43)
	.dwattr $C$DW$T$23, DW_AT_decl_column(0x11)

$C$DW$T$4	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$4, DW_AT_encoding(DW_ATE_boolean)
	.dwattr $C$DW$T$4, DW_AT_name("bool")
	.dwattr $C$DW$T$4, DW_AT_byte_size(0x01)

$C$DW$T$5	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$5, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$5, DW_AT_name("signed char")
	.dwattr $C$DW$T$5, DW_AT_byte_size(0x01)

$C$DW$T$6	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$6, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$6, DW_AT_byte_size(0x01)

$C$DW$T$24	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$6)

$C$DW$T$7	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$7, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$7, DW_AT_name("wchar_t")
	.dwattr $C$DW$T$7, DW_AT_byte_size(0x02)

$C$DW$T$8	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$8, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$8, DW_AT_name("short")
	.dwattr $C$DW$T$8, DW_AT_byte_size(0x02)

$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x02)

$C$DW$T$10	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$10, DW_AT_name("int")
	.dwattr $C$DW$T$10, DW_AT_byte_size(0x02)

$C$DW$T$26	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$10)

$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x02)

$C$DW$T$27	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$11)

$C$DW$T$28	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$11)

$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x04)

$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x04)

$C$DW$T$14	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$14, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$14, DW_AT_name("long long")
	.dwattr $C$DW$T$14, DW_AT_byte_size(0x08)

$C$DW$T$15	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$15, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$15, DW_AT_name("unsigned long long")
	.dwattr $C$DW$T$15, DW_AT_byte_size(0x08)

$C$DW$T$16	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$16, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$16, DW_AT_name("float")
	.dwattr $C$DW$T$16, DW_AT_byte_size(0x04)

$C$DW$T$17	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$17, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$17, DW_AT_name("double")
	.dwattr $C$DW$T$17, DW_AT_byte_size(0x08)

$C$DW$T$18	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$18, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$18, DW_AT_name("long double")
	.dwattr $C$DW$T$18, DW_AT_byte_size(0x08)

	.dwattr $C$DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF CIE ENTRIES                                           *
;***************************************************************

$C$DW$CIE	.dwcie 16
	.dwcfi	cfa_register, 1
	.dwcfi	cfa_offset, 0
	.dwcfi	same_value, 0
	.dwcfi	same_value, 1
	.dwcfi	same_value, 3
	.dwcfi	same_value, 4
	.dwcfi	same_value, 5
	.dwcfi	same_value, 6
	.dwcfi	same_value, 7
	.dwcfi	same_value, 8
	.dwcfi	same_value, 9
	.dwcfi	same_value, 10
	.dwendentry

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

$C$DW$42	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$42, DW_AT_name("PC")
	.dwattr $C$DW$42, DW_AT_location[DW_OP_reg0]

$C$DW$43	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$43, DW_AT_name("SP")
	.dwattr $C$DW$43, DW_AT_location[DW_OP_reg1]

$C$DW$44	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$44, DW_AT_name("SR")
	.dwattr $C$DW$44, DW_AT_location[DW_OP_reg2]

$C$DW$45	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$45, DW_AT_name("CG")
	.dwattr $C$DW$45, DW_AT_location[DW_OP_reg3]

$C$DW$46	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$46, DW_AT_name("r4")
	.dwattr $C$DW$46, DW_AT_location[DW_OP_reg4]

$C$DW$47	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$47, DW_AT_name("r5")
	.dwattr $C$DW$47, DW_AT_location[DW_OP_reg5]

$C$DW$48	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$48, DW_AT_name("r6")
	.dwattr $C$DW$48, DW_AT_location[DW_OP_reg6]

$C$DW$49	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$49, DW_AT_name("r7")
	.dwattr $C$DW$49, DW_AT_location[DW_OP_reg7]

$C$DW$50	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$50, DW_AT_name("r8")
	.dwattr $C$DW$50, DW_AT_location[DW_OP_reg8]

$C$DW$51	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$51, DW_AT_name("r9")
	.dwattr $C$DW$51, DW_AT_location[DW_OP_reg9]

$C$DW$52	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$52, DW_AT_name("r10")
	.dwattr $C$DW$52, DW_AT_location[DW_OP_reg10]

$C$DW$53	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$53, DW_AT_name("r11")
	.dwattr $C$DW$53, DW_AT_location[DW_OP_reg11]

$C$DW$54	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$54, DW_AT_name("r12")
	.dwattr $C$DW$54, DW_AT_location[DW_OP_reg12]

$C$DW$55	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$55, DW_AT_name("r13")
	.dwattr $C$DW$55, DW_AT_location[DW_OP_reg13]

$C$DW$56	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$56, DW_AT_name("r14")
	.dwattr $C$DW$56, DW_AT_location[DW_OP_reg14]

$C$DW$57	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$57, DW_AT_name("r15")
	.dwattr $C$DW$57, DW_AT_location[DW_OP_reg15]

$C$DW$58	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$58, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$58, DW_AT_location[DW_OP_reg16]

	.dwendtag $C$DW$CU


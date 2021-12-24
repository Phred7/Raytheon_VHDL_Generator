;******************************************************************************
;* MSP430 G3 C/C++ Codegen                                              PC v20.2.5.LTS *
;* Date/Time created: Tue Nov  9 15:10:37 2021                                *
;******************************************************************************
	.compiler_opts --abi=eabi --diag_wrap=off --hll_source=on --mem_model:code=small --mem_model:data=small --object_format=elf --silicon_version=msp --symdebug:dwarf --symdebug:dwarf_version=3 

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../driverlib/MSP430FR2xx_4xx/timer_b.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI MSP430 G3 C/C++ Codegen PC v20.2.5.LTS Copyright (c) 2003-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\Users\wward\Documents\GitHub\Raytheon_VHDL_Generator\ccs_workspace\test_C\Debug")
;	C:\ti\ccs1040\ccs\tools\compiler\ti-cgt-msp430_20.2.5.LTS\bin\acpia430.exe -@C:\\Users\\wward\\AppData\\Local\\Temp\\{B5292B6D-98CB-49A6-B056-54E56917599D} 
	.sect	".text:Timer_B_startCounter"
	.clink
	.global	Timer_B_startCounter

$C$DW$1	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$1, DW_AT_name("Timer_B_startCounter")
	.dwattr $C$DW$1, DW_AT_low_pc(Timer_B_startCounter)
	.dwattr $C$DW$1, DW_AT_high_pc(0x00)
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("Timer_B_startCounter")
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_TI_begin_file("../driverlib/MSP430FR2xx_4xx/timer_b.c")
	.dwattr $C$DW$1, DW_AT_TI_begin_line(0x15)
	.dwattr $C$DW$1, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$1, DW_AT_decl_file("../driverlib/MSP430FR2xx_4xx/timer_b.c")
	.dwattr $C$DW$1, DW_AT_decl_line(0x15)
	.dwattr $C$DW$1, DW_AT_decl_column(0x06)
	.dwattr $C$DW$1, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 24,column 1,is_stmt,address Timer_B_startCounter,isa 0

	.dwfde $C$DW$CIE, Timer_B_startCounter
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_name("baseAddress")
	.dwattr $C$DW$2, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$2, DW_AT_location[DW_OP_reg12]

$C$DW$3	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$3, DW_AT_name("timerMode")
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("timerMode")
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$3, DW_AT_location[DW_OP_reg13]


;*****************************************************************************
;* FUNCTION NAME: Timer_B_startCounter                                       *
;*                                                                           *
;*   Regs Modified     : SP,SR,r15                                           *
;*   Regs Used         : SP,SR,r12,r13,r15                                   *
;*   Local Frame Size  : 0 Args + 4 Auto + 0 Save = 4 byte                   *
;*****************************************************************************
Timer_B_startCounter:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
        SUB.W     #4,SP                 ; [] 
	.dwcfi	cfa_offset, 6
$C$DW$4	.dwtag  DW_TAG_variable
	.dwattr $C$DW$4, DW_AT_name("baseAddress")
	.dwattr $C$DW$4, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$4, DW_AT_location[DW_OP_breg1 0]

$C$DW$5	.dwtag  DW_TAG_variable
	.dwattr $C$DW$5, DW_AT_name("timerMode")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("timerMode")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$5, DW_AT_location[DW_OP_breg1 2]

        MOV.W     r13,2(SP)             ; [] |24| 
        MOV.W     r12,0(SP)             ; [] |24| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 25,column 5,is_stmt,isa 0
        MOV.W     0(SP),r15             ; [] |25| 
        OR.W      2(SP),0(r15)          ; [] |25| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 26,column 1,is_stmt,isa 0
        ADD.W     #4,SP                 ; [] 
	.dwcfi	cfa_offset, 2
$C$DW$6	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$6, DW_AT_low_pc(0x00)
	.dwattr $C$DW$6, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$1, DW_AT_TI_end_file("../driverlib/MSP430FR2xx_4xx/timer_b.c")
	.dwattr $C$DW$1, DW_AT_TI_end_line(0x1a)
	.dwattr $C$DW$1, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$1

	.sect	".text:Timer_B_initContinuousMode"
	.clink
	.global	Timer_B_initContinuousMode

$C$DW$7	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$7, DW_AT_name("Timer_B_initContinuousMode")
	.dwattr $C$DW$7, DW_AT_low_pc(Timer_B_initContinuousMode)
	.dwattr $C$DW$7, DW_AT_high_pc(0x00)
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("Timer_B_initContinuousMode")
	.dwattr $C$DW$7, DW_AT_external
	.dwattr $C$DW$7, DW_AT_TI_begin_file("../driverlib/MSP430FR2xx_4xx/timer_b.c")
	.dwattr $C$DW$7, DW_AT_TI_begin_line(0x1c)
	.dwattr $C$DW$7, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$7, DW_AT_decl_file("../driverlib/MSP430FR2xx_4xx/timer_b.c")
	.dwattr $C$DW$7, DW_AT_decl_line(0x1c)
	.dwattr $C$DW$7, DW_AT_decl_column(0x06)
	.dwattr $C$DW$7, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 30,column 1,is_stmt,address Timer_B_initContinuousMode,isa 0

	.dwfde $C$DW$CIE, Timer_B_initContinuousMode
$C$DW$8	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$8, DW_AT_name("baseAddress")
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$8, DW_AT_location[DW_OP_reg12]

$C$DW$9	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$9, DW_AT_name("param")
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("param")
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$9, DW_AT_location[DW_OP_reg13]


;*****************************************************************************
;* FUNCTION NAME: Timer_B_initContinuousMode                                 *
;*                                                                           *
;*   Regs Modified     : SP,SR,r12,r13,r14,r15                               *
;*   Regs Used         : SP,SR,r12,r13,r14,r15                               *
;*   Local Frame Size  : 0 Args + 4 Auto + 0 Save = 4 byte                   *
;*****************************************************************************
Timer_B_initContinuousMode:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
        SUB.W     #4,SP                 ; [] 
	.dwcfi	cfa_offset, 6
$C$DW$10	.dwtag  DW_TAG_variable
	.dwattr $C$DW$10, DW_AT_name("baseAddress")
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$10, DW_AT_location[DW_OP_breg1 0]

$C$DW$11	.dwtag  DW_TAG_variable
	.dwattr $C$DW$11, DW_AT_name("param")
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("param")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$11, DW_AT_location[DW_OP_breg1 2]

        MOV.W     r13,2(SP)             ; [] |30| 
        MOV.W     r12,0(SP)             ; [] |30| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 32,column 5,is_stmt,isa 0
        MOV.W     0(SP),r15             ; [] |32| 
        AND.W     #58377,0(r15)         ; [] |32| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 40,column 5,is_stmt,isa 0
        MOV.W     #32,r15               ; [] |40| 
        ADD.W     0(SP),r15             ; [] |40| 
        AND.W     #65528,0(r15)         ; [] |40| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 42,column 5,is_stmt,isa 0
        MOV.W     #32,r15               ; [] |42| 
        ADD.W     0(SP),r15             ; [] |42| 
        MOV.W     2(SP),r13             ; [] |42| 
        MOV.W     #7,r14                ; [] |42| 
        AND.W     2(r13),r14            ; [] |42| 
        OR.W      r14,0(r15)            ; [] |42| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 44,column 5,is_stmt,isa 0
        MOV.W     0(SP),r13             ; [] |44| 
        MOV.W     2(SP),r15             ; [] |44| 
        MOV.W     2(r15),r12            ; [] |44| 
$C$DW$12	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$12, DW_AT_low_pc(0x00)
	.dwattr $C$DW$12, DW_AT_name("__mspabi_srli_3")
	.dwattr $C$DW$12, DW_AT_TI_call

        CALL      #__mspabi_srli_3      ; [] |44| 
                                          ; [] |44| 
$C$DW$13	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$13, DW_AT_low_pc(0x00)
	.dwattr $C$DW$13, DW_AT_name("__mspabi_slli_6")
	.dwattr $C$DW$13, DW_AT_TI_call

        CALL      #__mspabi_slli_6      ; [] |44| 
                                          ; [] |44| 
        MOV.W     2(SP),r14             ; [] |44| 
        MOV.W     6(r14),r15            ; [] |44| 
        ADD.W     @r14,r15              ; [] |44| 
        ADD.W     4(r14),r15            ; [] |44| 
        ADD.W     r15,r12               ; [] |44| 
        OR.W      r12,0(r13)            ; [] |44| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 49,column 5,is_stmt,isa 0
        MOV.W     2(SP),r15             ; [] |49| 
        TST.B     8(r15)                ; [] |49| 
        JEQ       $C$L1                 ; [] |49| 
                                          ; [] |49| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 50,column 9,is_stmt,isa 0
        MOV.W     0(SP),r15             ; [] |50| 
        OR.W      #32,0(r15)            ; [] |50| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 52,column 1,is_stmt,isa 0
;* --------------------------------------------------------------------------*
$C$L1:    
        ADD.W     #4,SP                 ; [] 
	.dwcfi	cfa_offset, 2
$C$DW$14	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$14, DW_AT_low_pc(0x00)
	.dwattr $C$DW$14, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$7, DW_AT_TI_end_file("../driverlib/MSP430FR2xx_4xx/timer_b.c")
	.dwattr $C$DW$7, DW_AT_TI_end_line(0x34)
	.dwattr $C$DW$7, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$7

	.sect	".text:Timer_B_initUpMode"
	.clink
	.global	Timer_B_initUpMode

$C$DW$15	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$15, DW_AT_name("Timer_B_initUpMode")
	.dwattr $C$DW$15, DW_AT_low_pc(Timer_B_initUpMode)
	.dwattr $C$DW$15, DW_AT_high_pc(0x00)
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("Timer_B_initUpMode")
	.dwattr $C$DW$15, DW_AT_external
	.dwattr $C$DW$15, DW_AT_TI_begin_file("../driverlib/MSP430FR2xx_4xx/timer_b.c")
	.dwattr $C$DW$15, DW_AT_TI_begin_line(0x36)
	.dwattr $C$DW$15, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$15, DW_AT_decl_file("../driverlib/MSP430FR2xx_4xx/timer_b.c")
	.dwattr $C$DW$15, DW_AT_decl_line(0x36)
	.dwattr $C$DW$15, DW_AT_decl_column(0x06)
	.dwattr $C$DW$15, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 56,column 1,is_stmt,address Timer_B_initUpMode,isa 0

	.dwfde $C$DW$CIE, Timer_B_initUpMode
$C$DW$16	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$16, DW_AT_name("baseAddress")
	.dwattr $C$DW$16, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$16, DW_AT_location[DW_OP_reg12]

$C$DW$17	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$17, DW_AT_name("param")
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("param")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$17, DW_AT_location[DW_OP_reg13]


;*****************************************************************************
;* FUNCTION NAME: Timer_B_initUpMode                                         *
;*                                                                           *
;*   Regs Modified     : SP,SR,r12,r13,r14,r15                               *
;*   Regs Used         : SP,SR,r12,r13,r14,r15                               *
;*   Local Frame Size  : 0 Args + 4 Auto + 0 Save = 4 byte                   *
;*****************************************************************************
Timer_B_initUpMode:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
        SUB.W     #4,SP                 ; [] 
	.dwcfi	cfa_offset, 6
$C$DW$18	.dwtag  DW_TAG_variable
	.dwattr $C$DW$18, DW_AT_name("baseAddress")
	.dwattr $C$DW$18, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$18, DW_AT_location[DW_OP_breg1 0]

$C$DW$19	.dwtag  DW_TAG_variable
	.dwattr $C$DW$19, DW_AT_name("param")
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("param")
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$19, DW_AT_location[DW_OP_breg1 2]

        MOV.W     r13,2(SP)             ; [] |56| 
        MOV.W     r12,0(SP)             ; [] |56| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 58,column 5,is_stmt,isa 0
        MOV.W     0(SP),r15             ; [] |58| 
        AND.W     #58569,0(r15)         ; [] |58| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 65,column 5,is_stmt,isa 0
        MOV.W     #32,r15               ; [] |65| 
        ADD.W     0(SP),r15             ; [] |65| 
        AND.W     #65528,0(r15)         ; [] |65| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 67,column 5,is_stmt,isa 0
        MOV.W     #32,r15               ; [] |67| 
        ADD.W     0(SP),r15             ; [] |67| 
        MOV.W     2(SP),r13             ; [] |67| 
        MOV.W     #7,r14                ; [] |67| 
        AND.W     2(r13),r14            ; [] |67| 
        OR.W      r14,0(r15)            ; [] |67| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 69,column 5,is_stmt,isa 0
        MOV.W     0(SP),r13             ; [] |69| 
        MOV.W     2(SP),r15             ; [] |69| 
        MOV.W     2(r15),r12            ; [] |69| 
$C$DW$20	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$20, DW_AT_low_pc(0x00)
	.dwattr $C$DW$20, DW_AT_name("__mspabi_srli_3")
	.dwattr $C$DW$20, DW_AT_TI_call

        CALL      #__mspabi_srli_3      ; [] |69| 
                                          ; [] |69| 
$C$DW$21	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$21, DW_AT_low_pc(0x00)
	.dwattr $C$DW$21, DW_AT_name("__mspabi_slli_6")
	.dwattr $C$DW$21, DW_AT_TI_call

        CALL      #__mspabi_slli_6      ; [] |69| 
                                          ; [] |69| 
        MOV.W     2(SP),r14             ; [] |69| 
        MOV.W     10(r14),r15           ; [] |69| 
        ADD.W     @r14,r15              ; [] |69| 
        ADD.W     6(r14),r15            ; [] |69| 
        ADD.W     r15,r12               ; [] |69| 
        OR.W      r12,0(r13)            ; [] |69| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 74,column 5,is_stmt,isa 0
        MOV.W     2(SP),r15             ; [] |74| 
        TST.B     12(r15)               ; [] |74| 
        JEQ       $C$L2                 ; [] |74| 
                                          ; [] |74| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 75,column 9,is_stmt,isa 0
        MOV.W     0(SP),r15             ; [] |75| 
        OR.W      #16,0(r15)            ; [] |75| 
;* --------------------------------------------------------------------------*
$C$L2:    
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 78,column 5,is_stmt,isa 0
        MOV.W     2(SP),r15             ; [] |78| 
        CMP.W     #16,8(r15)            ; [] |78| 
        JNE       $C$L3                 ; [] |78| 
                                          ; [] |78| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 80,column 9,is_stmt,isa 0
        MOV.W     #2,r15                ; [] |80| 
        ADD.W     0(SP),r15             ; [] |80| 
        OR.W      #16,0(r15)            ; [] |80| 
        JMP       $C$L4                 ; [] 
                                          ; [] 
;* --------------------------------------------------------------------------*
$C$L3:    
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 82,column 9,is_stmt,isa 0
        MOV.W     #2,r15                ; [] |82| 
        ADD.W     0(SP),r15             ; [] |82| 
        AND.W     #65519,0(r15)         ; [] |82| 
;* --------------------------------------------------------------------------*
$C$L4:    
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 85,column 5,is_stmt,isa 0
        MOV.W     2(SP),r15             ; [] |85| 
        MOV.W     0(SP),r14             ; [] |85| 
        MOV.W     4(r15),18(r14)        ; [] |85| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 86,column 1,is_stmt,isa 0
        ADD.W     #4,SP                 ; [] 
	.dwcfi	cfa_offset, 2
$C$DW$22	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$22, DW_AT_low_pc(0x00)
	.dwattr $C$DW$22, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$15, DW_AT_TI_end_file("../driverlib/MSP430FR2xx_4xx/timer_b.c")
	.dwattr $C$DW$15, DW_AT_TI_end_line(0x56)
	.dwattr $C$DW$15, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$15

	.sect	".text:Timer_B_initUpDownMode"
	.clink
	.global	Timer_B_initUpDownMode

$C$DW$23	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$23, DW_AT_name("Timer_B_initUpDownMode")
	.dwattr $C$DW$23, DW_AT_low_pc(Timer_B_initUpDownMode)
	.dwattr $C$DW$23, DW_AT_high_pc(0x00)
	.dwattr $C$DW$23, DW_AT_TI_symbol_name("Timer_B_initUpDownMode")
	.dwattr $C$DW$23, DW_AT_external
	.dwattr $C$DW$23, DW_AT_TI_begin_file("../driverlib/MSP430FR2xx_4xx/timer_b.c")
	.dwattr $C$DW$23, DW_AT_TI_begin_line(0x58)
	.dwattr $C$DW$23, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$23, DW_AT_decl_file("../driverlib/MSP430FR2xx_4xx/timer_b.c")
	.dwattr $C$DW$23, DW_AT_decl_line(0x58)
	.dwattr $C$DW$23, DW_AT_decl_column(0x06)
	.dwattr $C$DW$23, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 90,column 1,is_stmt,address Timer_B_initUpDownMode,isa 0

	.dwfde $C$DW$CIE, Timer_B_initUpDownMode
$C$DW$24	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$24, DW_AT_name("baseAddress")
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$24, DW_AT_location[DW_OP_reg12]

$C$DW$25	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$25, DW_AT_name("param")
	.dwattr $C$DW$25, DW_AT_TI_symbol_name("param")
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$25, DW_AT_location[DW_OP_reg13]


;*****************************************************************************
;* FUNCTION NAME: Timer_B_initUpDownMode                                     *
;*                                                                           *
;*   Regs Modified     : SP,SR,r12,r13,r14,r15                               *
;*   Regs Used         : SP,SR,r12,r13,r14,r15                               *
;*   Local Frame Size  : 0 Args + 4 Auto + 0 Save = 4 byte                   *
;*****************************************************************************
Timer_B_initUpDownMode:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
        SUB.W     #4,SP                 ; [] 
	.dwcfi	cfa_offset, 6
$C$DW$26	.dwtag  DW_TAG_variable
	.dwattr $C$DW$26, DW_AT_name("baseAddress")
	.dwattr $C$DW$26, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$26, DW_AT_location[DW_OP_breg1 0]

$C$DW$27	.dwtag  DW_TAG_variable
	.dwattr $C$DW$27, DW_AT_name("param")
	.dwattr $C$DW$27, DW_AT_TI_symbol_name("param")
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$27, DW_AT_location[DW_OP_breg1 2]

        MOV.W     r13,2(SP)             ; [] |90| 
        MOV.W     r12,0(SP)             ; [] |90| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 91,column 5,is_stmt,isa 0
        MOV.W     0(SP),r15             ; [] |91| 
        AND.W     #58569,0(r15)         ; [] |91| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 98,column 5,is_stmt,isa 0
        MOV.W     #32,r15               ; [] |98| 
        ADD.W     0(SP),r15             ; [] |98| 
        AND.W     #65528,0(r15)         ; [] |98| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 100,column 5,is_stmt,isa 0
        MOV.W     #32,r15               ; [] |100| 
        ADD.W     0(SP),r15             ; [] |100| 
        MOV.W     2(SP),r13             ; [] |100| 
        MOV.W     #7,r14                ; [] |100| 
        AND.W     2(r13),r14            ; [] |100| 
        OR.W      r14,0(r15)            ; [] |100| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 102,column 5,is_stmt,isa 0
        MOV.W     0(SP),r13             ; [] |102| 
        MOV.W     2(SP),r15             ; [] |102| 
        MOV.W     2(r15),r12            ; [] |102| 
$C$DW$28	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$28, DW_AT_low_pc(0x00)
	.dwattr $C$DW$28, DW_AT_name("__mspabi_srli_3")
	.dwattr $C$DW$28, DW_AT_TI_call

        CALL      #__mspabi_srli_3      ; [] |102| 
                                          ; [] |102| 
$C$DW$29	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$29, DW_AT_low_pc(0x00)
	.dwattr $C$DW$29, DW_AT_name("__mspabi_slli_6")
	.dwattr $C$DW$29, DW_AT_TI_call

        CALL      #__mspabi_slli_6      ; [] |102| 
                                          ; [] |102| 
        MOV.W     2(SP),r14             ; [] |102| 
        MOV.W     10(r14),r15           ; [] |102| 
        ADD.W     @r14,r15              ; [] |102| 
        ADD.W     6(r14),r15            ; [] |102| 
        ADD.W     r15,r12               ; [] |102| 
        OR.W      r12,0(r13)            ; [] |102| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 108,column 5,is_stmt,isa 0
        MOV.W     2(SP),r15             ; [] |108| 
        TST.B     12(r15)               ; [] |108| 
        JEQ       $C$L5                 ; [] |108| 
                                          ; [] |108| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 109,column 9,is_stmt,isa 0
        MOV.W     0(SP),r15             ; [] |109| 
        OR.W      #48,0(r15)            ; [] |109| 
;* --------------------------------------------------------------------------*
$C$L5:    
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 112,column 5,is_stmt,isa 0
        MOV.W     2(SP),r15             ; [] |112| 
        CMP.W     #16,8(r15)            ; [] |112| 
        JNE       $C$L6                 ; [] |112| 
                                          ; [] |112| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 114,column 9,is_stmt,isa 0
        MOV.W     #2,r15                ; [] |114| 
        ADD.W     0(SP),r15             ; [] |114| 
        OR.W      #16,0(r15)            ; [] |114| 
        JMP       $C$L7                 ; [] 
                                          ; [] 
;* --------------------------------------------------------------------------*
$C$L6:    
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 116,column 9,is_stmt,isa 0
        MOV.W     #2,r15                ; [] |116| 
        ADD.W     0(SP),r15             ; [] |116| 
        AND.W     #65519,0(r15)         ; [] |116| 
;* --------------------------------------------------------------------------*
$C$L7:    
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 119,column 5,is_stmt,isa 0
        MOV.W     2(SP),r15             ; [] |119| 
        MOV.W     0(SP),r14             ; [] |119| 
        MOV.W     4(r15),18(r14)        ; [] |119| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 120,column 1,is_stmt,isa 0
        ADD.W     #4,SP                 ; [] 
	.dwcfi	cfa_offset, 2
$C$DW$30	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$30, DW_AT_low_pc(0x00)
	.dwattr $C$DW$30, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$23, DW_AT_TI_end_file("../driverlib/MSP430FR2xx_4xx/timer_b.c")
	.dwattr $C$DW$23, DW_AT_TI_end_line(0x78)
	.dwattr $C$DW$23, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$23

	.sect	".text:Timer_B_initCaptureMode"
	.clink
	.global	Timer_B_initCaptureMode

$C$DW$31	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$31, DW_AT_name("Timer_B_initCaptureMode")
	.dwattr $C$DW$31, DW_AT_low_pc(Timer_B_initCaptureMode)
	.dwattr $C$DW$31, DW_AT_high_pc(0x00)
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("Timer_B_initCaptureMode")
	.dwattr $C$DW$31, DW_AT_external
	.dwattr $C$DW$31, DW_AT_TI_begin_file("../driverlib/MSP430FR2xx_4xx/timer_b.c")
	.dwattr $C$DW$31, DW_AT_TI_begin_line(0x7a)
	.dwattr $C$DW$31, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$31, DW_AT_decl_file("../driverlib/MSP430FR2xx_4xx/timer_b.c")
	.dwattr $C$DW$31, DW_AT_decl_line(0x7a)
	.dwattr $C$DW$31, DW_AT_decl_column(0x06)
	.dwattr $C$DW$31, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 124,column 1,is_stmt,address Timer_B_initCaptureMode,isa 0

	.dwfde $C$DW$CIE, Timer_B_initCaptureMode
$C$DW$32	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$32, DW_AT_name("baseAddress")
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$32, DW_AT_location[DW_OP_reg12]

$C$DW$33	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$33, DW_AT_name("param")
	.dwattr $C$DW$33, DW_AT_TI_symbol_name("param")
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$33, DW_AT_location[DW_OP_reg13]


;*****************************************************************************
;* FUNCTION NAME: Timer_B_initCaptureMode                                    *
;*                                                                           *
;*   Regs Modified     : SP,SR,r13,r14,r15                                   *
;*   Regs Used         : SP,SR,r12,r13,r14,r15                               *
;*   Local Frame Size  : 0 Args + 4 Auto + 0 Save = 4 byte                   *
;*****************************************************************************
Timer_B_initCaptureMode:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
        SUB.W     #4,SP                 ; [] 
	.dwcfi	cfa_offset, 6
$C$DW$34	.dwtag  DW_TAG_variable
	.dwattr $C$DW$34, DW_AT_name("baseAddress")
	.dwattr $C$DW$34, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$34, DW_AT_location[DW_OP_breg1 0]

$C$DW$35	.dwtag  DW_TAG_variable
	.dwattr $C$DW$35, DW_AT_name("param")
	.dwattr $C$DW$35, DW_AT_TI_symbol_name("param")
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$35, DW_AT_location[DW_OP_breg1 2]

        MOV.W     r13,2(SP)             ; [] |124| 
        MOV.W     r12,0(SP)             ; [] |124| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 126,column 5,is_stmt,isa 0
        MOV.W     @r13,r15              ; [] |126| 
        ADD.W     0(SP),r15             ; [] |126| 
        OR.W      #256,0(r15)           ; [] |126| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 128,column 5,is_stmt,isa 0
        MOV.W     2(SP),r15             ; [] |128| 
        MOV.W     @r15,r15              ; [] |128| 
        ADD.W     0(SP),r15             ; [] |128| 
        AND.W     #18425,0(r15)         ; [] |128| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 137,column 5,is_stmt,isa 0
        MOV.W     2(SP),r15             ; [] |137| 
        MOV.W     @r15,r14              ; [] |137| 
        ADD.W     0(SP),r14             ; [] |137| 
        MOV.W     4(r15),r13            ; [] |137| 
        ADD.W     2(r15),r13            ; [] |137| 
        ADD.W     6(r15),r13            ; [] |137| 
        ADD.W     8(r15),r13            ; [] |137| 
        ADD.W     10(r15),r13           ; [] |137| 
        OR.W      r13,0(r14)            ; [] |137| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 143,column 1,is_stmt,isa 0
        ADD.W     #4,SP                 ; [] 
	.dwcfi	cfa_offset, 2
$C$DW$36	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$36, DW_AT_low_pc(0x00)
	.dwattr $C$DW$36, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$31, DW_AT_TI_end_file("../driverlib/MSP430FR2xx_4xx/timer_b.c")
	.dwattr $C$DW$31, DW_AT_TI_end_line(0x8f)
	.dwattr $C$DW$31, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$31

	.sect	".text:Timer_B_initCompareMode"
	.clink
	.global	Timer_B_initCompareMode

$C$DW$37	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$37, DW_AT_name("Timer_B_initCompareMode")
	.dwattr $C$DW$37, DW_AT_low_pc(Timer_B_initCompareMode)
	.dwattr $C$DW$37, DW_AT_high_pc(0x00)
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("Timer_B_initCompareMode")
	.dwattr $C$DW$37, DW_AT_external
	.dwattr $C$DW$37, DW_AT_TI_begin_file("../driverlib/MSP430FR2xx_4xx/timer_b.c")
	.dwattr $C$DW$37, DW_AT_TI_begin_line(0x91)
	.dwattr $C$DW$37, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$37, DW_AT_decl_file("../driverlib/MSP430FR2xx_4xx/timer_b.c")
	.dwattr $C$DW$37, DW_AT_decl_line(0x91)
	.dwattr $C$DW$37, DW_AT_decl_column(0x06)
	.dwattr $C$DW$37, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 147,column 1,is_stmt,address Timer_B_initCompareMode,isa 0

	.dwfde $C$DW$CIE, Timer_B_initCompareMode
$C$DW$38	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$38, DW_AT_name("baseAddress")
	.dwattr $C$DW$38, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$38, DW_AT_location[DW_OP_reg12]

$C$DW$39	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$39, DW_AT_name("param")
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("param")
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$39, DW_AT_location[DW_OP_reg13]


;*****************************************************************************
;* FUNCTION NAME: Timer_B_initCompareMode                                    *
;*                                                                           *
;*   Regs Modified     : SP,SR,r13,r14,r15                                   *
;*   Regs Used         : SP,SR,r12,r13,r14,r15                               *
;*   Local Frame Size  : 0 Args + 4 Auto + 0 Save = 4 byte                   *
;*****************************************************************************
Timer_B_initCompareMode:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
        SUB.W     #4,SP                 ; [] 
	.dwcfi	cfa_offset, 6
$C$DW$40	.dwtag  DW_TAG_variable
	.dwattr $C$DW$40, DW_AT_name("baseAddress")
	.dwattr $C$DW$40, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$40, DW_AT_location[DW_OP_breg1 0]

$C$DW$41	.dwtag  DW_TAG_variable
	.dwattr $C$DW$41, DW_AT_name("param")
	.dwattr $C$DW$41, DW_AT_TI_symbol_name("param")
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$41, DW_AT_location[DW_OP_breg1 2]

        MOV.W     r13,2(SP)             ; [] |147| 
        MOV.W     r12,0(SP)             ; [] |147| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 149,column 5,is_stmt,isa 0
        MOV.W     @r13,r15              ; [] |149| 
        ADD.W     0(SP),r15             ; [] |149| 
        AND.W     #65279,0(r15)         ; [] |149| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 151,column 5,is_stmt,isa 0
        MOV.W     2(SP),r15             ; [] |151| 
        MOV.W     @r15,r15              ; [] |151| 
        ADD.W     0(SP),r15             ; [] |151| 
        AND.W     #65295,0(r15)         ; [] |151| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 156,column 5,is_stmt,isa 0
        MOV.W     2(SP),r14             ; [] |156| 
        MOV.W     @r14,r15              ; [] |156| 
        ADD.W     0(SP),r15             ; [] |156| 
        MOV.W     4(r14),r13            ; [] |156| 
        ADD.W     2(r14),r13            ; [] |156| 
        OR.W      r13,0(r15)            ; [] |156| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 160,column 5,is_stmt,isa 0
        MOV.W     2(SP),r15             ; [] |160| 
        MOV.W     @r15,r14              ; [] |160| 
        ADD.W     0(SP),r14             ; [] |160| 
        MOV.W     6(r15),16(r14)        ; [] |160| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 161,column 1,is_stmt,isa 0
        ADD.W     #4,SP                 ; [] 
	.dwcfi	cfa_offset, 2
$C$DW$42	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$42, DW_AT_low_pc(0x00)
	.dwattr $C$DW$42, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$37, DW_AT_TI_end_file("../driverlib/MSP430FR2xx_4xx/timer_b.c")
	.dwattr $C$DW$37, DW_AT_TI_end_line(0xa1)
	.dwattr $C$DW$37, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$37

	.sect	".text:Timer_B_enableInterrupt"
	.clink
	.global	Timer_B_enableInterrupt

$C$DW$43	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$43, DW_AT_name("Timer_B_enableInterrupt")
	.dwattr $C$DW$43, DW_AT_low_pc(Timer_B_enableInterrupt)
	.dwattr $C$DW$43, DW_AT_high_pc(0x00)
	.dwattr $C$DW$43, DW_AT_TI_symbol_name("Timer_B_enableInterrupt")
	.dwattr $C$DW$43, DW_AT_external
	.dwattr $C$DW$43, DW_AT_TI_begin_file("../driverlib/MSP430FR2xx_4xx/timer_b.c")
	.dwattr $C$DW$43, DW_AT_TI_begin_line(0xa3)
	.dwattr $C$DW$43, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$43, DW_AT_decl_file("../driverlib/MSP430FR2xx_4xx/timer_b.c")
	.dwattr $C$DW$43, DW_AT_decl_line(0xa3)
	.dwattr $C$DW$43, DW_AT_decl_column(0x06)
	.dwattr $C$DW$43, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 164,column 1,is_stmt,address Timer_B_enableInterrupt,isa 0

	.dwfde $C$DW$CIE, Timer_B_enableInterrupt
$C$DW$44	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$44, DW_AT_name("baseAddress")
	.dwattr $C$DW$44, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$44, DW_AT_location[DW_OP_reg12]


;*****************************************************************************
;* FUNCTION NAME: Timer_B_enableInterrupt                                    *
;*                                                                           *
;*   Regs Modified     : SP,SR,r15                                           *
;*   Regs Used         : SP,SR,r12,r15                                       *
;*   Local Frame Size  : 0 Args + 2 Auto + 0 Save = 2 byte                   *
;*****************************************************************************
Timer_B_enableInterrupt:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
        SUB.W     #2,SP                 ; [] 
	.dwcfi	cfa_offset, 4
$C$DW$45	.dwtag  DW_TAG_variable
	.dwattr $C$DW$45, DW_AT_name("baseAddress")
	.dwattr $C$DW$45, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$45, DW_AT_location[DW_OP_breg1 0]

        MOV.W     r12,0(SP)             ; [] |164| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 165,column 5,is_stmt,isa 0
        MOV.W     0(SP),r15             ; [] |165| 
        OR.W      #2,0(r15)             ; [] |165| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 166,column 1,is_stmt,isa 0
        ADD.W     #2,SP                 ; [] 
	.dwcfi	cfa_offset, 2
$C$DW$46	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$46, DW_AT_low_pc(0x00)
	.dwattr $C$DW$46, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$43, DW_AT_TI_end_file("../driverlib/MSP430FR2xx_4xx/timer_b.c")
	.dwattr $C$DW$43, DW_AT_TI_end_line(0xa6)
	.dwattr $C$DW$43, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$43

	.sect	".text:Timer_B_disableInterrupt"
	.clink
	.global	Timer_B_disableInterrupt

$C$DW$47	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$47, DW_AT_name("Timer_B_disableInterrupt")
	.dwattr $C$DW$47, DW_AT_low_pc(Timer_B_disableInterrupt)
	.dwattr $C$DW$47, DW_AT_high_pc(0x00)
	.dwattr $C$DW$47, DW_AT_TI_symbol_name("Timer_B_disableInterrupt")
	.dwattr $C$DW$47, DW_AT_external
	.dwattr $C$DW$47, DW_AT_TI_begin_file("../driverlib/MSP430FR2xx_4xx/timer_b.c")
	.dwattr $C$DW$47, DW_AT_TI_begin_line(0xa8)
	.dwattr $C$DW$47, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$47, DW_AT_decl_file("../driverlib/MSP430FR2xx_4xx/timer_b.c")
	.dwattr $C$DW$47, DW_AT_decl_line(0xa8)
	.dwattr $C$DW$47, DW_AT_decl_column(0x06)
	.dwattr $C$DW$47, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 169,column 1,is_stmt,address Timer_B_disableInterrupt,isa 0

	.dwfde $C$DW$CIE, Timer_B_disableInterrupt
$C$DW$48	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$48, DW_AT_name("baseAddress")
	.dwattr $C$DW$48, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$48, DW_AT_location[DW_OP_reg12]


;*****************************************************************************
;* FUNCTION NAME: Timer_B_disableInterrupt                                   *
;*                                                                           *
;*   Regs Modified     : SP,SR,r15                                           *
;*   Regs Used         : SP,SR,r12,r15                                       *
;*   Local Frame Size  : 0 Args + 2 Auto + 0 Save = 2 byte                   *
;*****************************************************************************
Timer_B_disableInterrupt:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
        SUB.W     #2,SP                 ; [] 
	.dwcfi	cfa_offset, 4
$C$DW$49	.dwtag  DW_TAG_variable
	.dwattr $C$DW$49, DW_AT_name("baseAddress")
	.dwattr $C$DW$49, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$49, DW_AT_location[DW_OP_breg1 0]

        MOV.W     r12,0(SP)             ; [] |169| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 170,column 5,is_stmt,isa 0
        MOV.W     0(SP),r15             ; [] |170| 
        BIC.W     #2,0(r15)             ; [] |170| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 171,column 1,is_stmt,isa 0
        ADD.W     #2,SP                 ; [] 
	.dwcfi	cfa_offset, 2
$C$DW$50	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$50, DW_AT_low_pc(0x00)
	.dwattr $C$DW$50, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$47, DW_AT_TI_end_file("../driverlib/MSP430FR2xx_4xx/timer_b.c")
	.dwattr $C$DW$47, DW_AT_TI_end_line(0xab)
	.dwattr $C$DW$47, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$47

	.sect	".text:Timer_B_getInterruptStatus"
	.clink
	.global	Timer_B_getInterruptStatus

$C$DW$51	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$51, DW_AT_name("Timer_B_getInterruptStatus")
	.dwattr $C$DW$51, DW_AT_low_pc(Timer_B_getInterruptStatus)
	.dwattr $C$DW$51, DW_AT_high_pc(0x00)
	.dwattr $C$DW$51, DW_AT_TI_symbol_name("Timer_B_getInterruptStatus")
	.dwattr $C$DW$51, DW_AT_external
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$143)
	.dwattr $C$DW$51, DW_AT_TI_begin_file("../driverlib/MSP430FR2xx_4xx/timer_b.c")
	.dwattr $C$DW$51, DW_AT_TI_begin_line(0xad)
	.dwattr $C$DW$51, DW_AT_TI_begin_column(0x0a)
	.dwattr $C$DW$51, DW_AT_decl_file("../driverlib/MSP430FR2xx_4xx/timer_b.c")
	.dwattr $C$DW$51, DW_AT_decl_line(0xad)
	.dwattr $C$DW$51, DW_AT_decl_column(0x0a)
	.dwattr $C$DW$51, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 174,column 1,is_stmt,address Timer_B_getInterruptStatus,isa 0

	.dwfde $C$DW$CIE, Timer_B_getInterruptStatus
$C$DW$52	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$52, DW_AT_name("baseAddress")
	.dwattr $C$DW$52, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$52, DW_AT_location[DW_OP_reg12]


;*****************************************************************************
;* FUNCTION NAME: Timer_B_getInterruptStatus                                 *
;*                                                                           *
;*   Regs Modified     : SP,SR,r12,r13,r15                                   *
;*   Regs Used         : SP,SR,r12,r13,r15                                   *
;*   Local Frame Size  : 0 Args + 2 Auto + 0 Save = 2 byte                   *
;*****************************************************************************
Timer_B_getInterruptStatus:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
        SUB.W     #2,SP                 ; [] 
	.dwcfi	cfa_offset, 4
$C$DW$53	.dwtag  DW_TAG_variable
	.dwattr $C$DW$53, DW_AT_name("baseAddress")
	.dwattr $C$DW$53, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$53, DW_AT_location[DW_OP_breg1 0]

        MOV.W     r12,0(SP)             ; [] |174| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 175,column 5,is_stmt,isa 0
        MOV.W     0(SP),r15             ; [] |175| 
        MOV.W     #1,r12                ; [] |175| 
        AND.W     @r15,r12              ; [] |175| 
        MOV.W     #0,r13                ; [] |175| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 176,column 1,is_stmt,isa 0
        ADD.W     #2,SP                 ; [] 
	.dwcfi	cfa_offset, 2
$C$DW$54	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$54, DW_AT_low_pc(0x00)
	.dwattr $C$DW$54, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$51, DW_AT_TI_end_file("../driverlib/MSP430FR2xx_4xx/timer_b.c")
	.dwattr $C$DW$51, DW_AT_TI_end_line(0xb0)
	.dwattr $C$DW$51, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$51

	.sect	".text:Timer_B_enableCaptureCompareInterrupt"
	.clink
	.global	Timer_B_enableCaptureCompareInterrupt

$C$DW$55	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$55, DW_AT_name("Timer_B_enableCaptureCompareInterrupt")
	.dwattr $C$DW$55, DW_AT_low_pc(Timer_B_enableCaptureCompareInterrupt)
	.dwattr $C$DW$55, DW_AT_high_pc(0x00)
	.dwattr $C$DW$55, DW_AT_TI_symbol_name("Timer_B_enableCaptureCompareInterrupt")
	.dwattr $C$DW$55, DW_AT_external
	.dwattr $C$DW$55, DW_AT_TI_begin_file("../driverlib/MSP430FR2xx_4xx/timer_b.c")
	.dwattr $C$DW$55, DW_AT_TI_begin_line(0xb2)
	.dwattr $C$DW$55, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$55, DW_AT_decl_file("../driverlib/MSP430FR2xx_4xx/timer_b.c")
	.dwattr $C$DW$55, DW_AT_decl_line(0xb2)
	.dwattr $C$DW$55, DW_AT_decl_column(0x06)
	.dwattr $C$DW$55, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 181,column 1,is_stmt,address Timer_B_enableCaptureCompareInterrupt,isa 0

	.dwfde $C$DW$CIE, Timer_B_enableCaptureCompareInterrupt
$C$DW$56	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$56, DW_AT_name("baseAddress")
	.dwattr $C$DW$56, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$56, DW_AT_location[DW_OP_reg12]

$C$DW$57	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$57, DW_AT_name("captureCompareRegister")
	.dwattr $C$DW$57, DW_AT_TI_symbol_name("captureCompareRegister")
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$57, DW_AT_location[DW_OP_reg13]


;*****************************************************************************
;* FUNCTION NAME: Timer_B_enableCaptureCompareInterrupt                      *
;*                                                                           *
;*   Regs Modified     : SP,SR,r13                                           *
;*   Regs Used         : SP,SR,r12,r13                                       *
;*   Local Frame Size  : 0 Args + 4 Auto + 0 Save = 4 byte                   *
;*****************************************************************************
Timer_B_enableCaptureCompareInterrupt:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
        SUB.W     #4,SP                 ; [] 
	.dwcfi	cfa_offset, 6
$C$DW$58	.dwtag  DW_TAG_variable
	.dwattr $C$DW$58, DW_AT_name("baseAddress")
	.dwattr $C$DW$58, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$58, DW_AT_location[DW_OP_breg1 0]

$C$DW$59	.dwtag  DW_TAG_variable
	.dwattr $C$DW$59, DW_AT_name("captureCompareRegister")
	.dwattr $C$DW$59, DW_AT_TI_symbol_name("captureCompareRegister")
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$59, DW_AT_location[DW_OP_breg1 2]

        MOV.W     r13,2(SP)             ; [] |181| 
        MOV.W     r12,0(SP)             ; [] |181| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 182,column 5,is_stmt,isa 0
        ADD.W     0(SP),r13             ; [] |182| 
        OR.W      #16,0(r13)            ; [] |182| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 183,column 1,is_stmt,isa 0
        ADD.W     #4,SP                 ; [] 
	.dwcfi	cfa_offset, 2
$C$DW$60	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$60, DW_AT_low_pc(0x00)
	.dwattr $C$DW$60, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$55, DW_AT_TI_end_file("../driverlib/MSP430FR2xx_4xx/timer_b.c")
	.dwattr $C$DW$55, DW_AT_TI_end_line(0xb7)
	.dwattr $C$DW$55, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$55

	.sect	".text:Timer_B_disableCaptureCompareInterrupt"
	.clink
	.global	Timer_B_disableCaptureCompareInterrupt

$C$DW$61	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$61, DW_AT_name("Timer_B_disableCaptureCompareInterrupt")
	.dwattr $C$DW$61, DW_AT_low_pc(Timer_B_disableCaptureCompareInterrupt)
	.dwattr $C$DW$61, DW_AT_high_pc(0x00)
	.dwattr $C$DW$61, DW_AT_TI_symbol_name("Timer_B_disableCaptureCompareInterrupt")
	.dwattr $C$DW$61, DW_AT_external
	.dwattr $C$DW$61, DW_AT_TI_begin_file("../driverlib/MSP430FR2xx_4xx/timer_b.c")
	.dwattr $C$DW$61, DW_AT_TI_begin_line(0xb9)
	.dwattr $C$DW$61, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$61, DW_AT_decl_file("../driverlib/MSP430FR2xx_4xx/timer_b.c")
	.dwattr $C$DW$61, DW_AT_decl_line(0xb9)
	.dwattr $C$DW$61, DW_AT_decl_column(0x06)
	.dwattr $C$DW$61, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 188,column 1,is_stmt,address Timer_B_disableCaptureCompareInterrupt,isa 0

	.dwfde $C$DW$CIE, Timer_B_disableCaptureCompareInterrupt
$C$DW$62	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$62, DW_AT_name("baseAddress")
	.dwattr $C$DW$62, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$62, DW_AT_location[DW_OP_reg12]

$C$DW$63	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$63, DW_AT_name("captureCompareRegister")
	.dwattr $C$DW$63, DW_AT_TI_symbol_name("captureCompareRegister")
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$63, DW_AT_location[DW_OP_reg13]


;*****************************************************************************
;* FUNCTION NAME: Timer_B_disableCaptureCompareInterrupt                     *
;*                                                                           *
;*   Regs Modified     : SP,SR,r13                                           *
;*   Regs Used         : SP,SR,r12,r13                                       *
;*   Local Frame Size  : 0 Args + 4 Auto + 0 Save = 4 byte                   *
;*****************************************************************************
Timer_B_disableCaptureCompareInterrupt:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
        SUB.W     #4,SP                 ; [] 
	.dwcfi	cfa_offset, 6
$C$DW$64	.dwtag  DW_TAG_variable
	.dwattr $C$DW$64, DW_AT_name("baseAddress")
	.dwattr $C$DW$64, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$64, DW_AT_location[DW_OP_breg1 0]

$C$DW$65	.dwtag  DW_TAG_variable
	.dwattr $C$DW$65, DW_AT_name("captureCompareRegister")
	.dwattr $C$DW$65, DW_AT_TI_symbol_name("captureCompareRegister")
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$65, DW_AT_location[DW_OP_breg1 2]

        MOV.W     r13,2(SP)             ; [] |188| 
        MOV.W     r12,0(SP)             ; [] |188| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 189,column 5,is_stmt,isa 0
        ADD.W     0(SP),r13             ; [] |189| 
        AND.W     #65519,0(r13)         ; [] |189| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 190,column 1,is_stmt,isa 0
        ADD.W     #4,SP                 ; [] 
	.dwcfi	cfa_offset, 2
$C$DW$66	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$66, DW_AT_low_pc(0x00)
	.dwattr $C$DW$66, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$61, DW_AT_TI_end_file("../driverlib/MSP430FR2xx_4xx/timer_b.c")
	.dwattr $C$DW$61, DW_AT_TI_end_line(0xbe)
	.dwattr $C$DW$61, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$61

	.sect	".text:Timer_B_getCaptureCompareInterruptStatus"
	.clink
	.global	Timer_B_getCaptureCompareInterruptStatus

$C$DW$67	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$67, DW_AT_name("Timer_B_getCaptureCompareInterruptStatus")
	.dwattr $C$DW$67, DW_AT_low_pc(Timer_B_getCaptureCompareInterruptStatus)
	.dwattr $C$DW$67, DW_AT_high_pc(0x00)
	.dwattr $C$DW$67, DW_AT_TI_symbol_name("Timer_B_getCaptureCompareInterruptStatus")
	.dwattr $C$DW$67, DW_AT_external
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$143)
	.dwattr $C$DW$67, DW_AT_TI_begin_file("../driverlib/MSP430FR2xx_4xx/timer_b.c")
	.dwattr $C$DW$67, DW_AT_TI_begin_line(0xc0)
	.dwattr $C$DW$67, DW_AT_TI_begin_column(0x0a)
	.dwattr $C$DW$67, DW_AT_decl_file("../driverlib/MSP430FR2xx_4xx/timer_b.c")
	.dwattr $C$DW$67, DW_AT_decl_line(0xc0)
	.dwattr $C$DW$67, DW_AT_decl_column(0x0a)
	.dwattr $C$DW$67, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 196,column 1,is_stmt,address Timer_B_getCaptureCompareInterruptStatus,isa 0

	.dwfde $C$DW$CIE, Timer_B_getCaptureCompareInterruptStatus
$C$DW$68	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$68, DW_AT_name("baseAddress")
	.dwattr $C$DW$68, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$68, DW_AT_location[DW_OP_reg12]

$C$DW$69	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$69, DW_AT_name("captureCompareRegister")
	.dwattr $C$DW$69, DW_AT_TI_symbol_name("captureCompareRegister")
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$69, DW_AT_location[DW_OP_reg13]

$C$DW$70	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$70, DW_AT_name("mask")
	.dwattr $C$DW$70, DW_AT_TI_symbol_name("mask")
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$70, DW_AT_location[DW_OP_reg14]


;*****************************************************************************
;* FUNCTION NAME: Timer_B_getCaptureCompareInterruptStatus                   *
;*                                                                           *
;*   Regs Modified     : SP,SR,r12,r13                                       *
;*   Regs Used         : SP,SR,r12,r13,r14                                   *
;*   Local Frame Size  : 0 Args + 6 Auto + 0 Save = 6 byte                   *
;*****************************************************************************
Timer_B_getCaptureCompareInterruptStatus:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
        SUB.W     #6,SP                 ; [] 
	.dwcfi	cfa_offset, 8
$C$DW$71	.dwtag  DW_TAG_variable
	.dwattr $C$DW$71, DW_AT_name("baseAddress")
	.dwattr $C$DW$71, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$71, DW_AT_location[DW_OP_breg1 0]

$C$DW$72	.dwtag  DW_TAG_variable
	.dwattr $C$DW$72, DW_AT_name("captureCompareRegister")
	.dwattr $C$DW$72, DW_AT_TI_symbol_name("captureCompareRegister")
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$72, DW_AT_location[DW_OP_breg1 2]

$C$DW$73	.dwtag  DW_TAG_variable
	.dwattr $C$DW$73, DW_AT_name("mask")
	.dwattr $C$DW$73, DW_AT_TI_symbol_name("mask")
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$73, DW_AT_location[DW_OP_breg1 4]

        MOV.W     r14,4(SP)             ; [] |196| 
        MOV.W     r13,2(SP)             ; [] |196| 
        MOV.W     r12,0(SP)             ; [] |196| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 197,column 5,is_stmt,isa 0
        ADD.W     0(SP),r13             ; [] |197| 
        MOV.W     r14,r12               ; [] 
        AND.W     @r13,r12              ; [] |197| 
        MOV.W     #0,r13                ; [] |197| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 198,column 1,is_stmt,isa 0
        ADD.W     #6,SP                 ; [] 
	.dwcfi	cfa_offset, 2
$C$DW$74	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$74, DW_AT_low_pc(0x00)
	.dwattr $C$DW$74, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$67, DW_AT_TI_end_file("../driverlib/MSP430FR2xx_4xx/timer_b.c")
	.dwattr $C$DW$67, DW_AT_TI_end_line(0xc6)
	.dwattr $C$DW$67, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$67

	.sect	".text:Timer_B_clear"
	.clink
	.global	Timer_B_clear

$C$DW$75	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$75, DW_AT_name("Timer_B_clear")
	.dwattr $C$DW$75, DW_AT_low_pc(Timer_B_clear)
	.dwattr $C$DW$75, DW_AT_high_pc(0x00)
	.dwattr $C$DW$75, DW_AT_TI_symbol_name("Timer_B_clear")
	.dwattr $C$DW$75, DW_AT_external
	.dwattr $C$DW$75, DW_AT_TI_begin_file("../driverlib/MSP430FR2xx_4xx/timer_b.c")
	.dwattr $C$DW$75, DW_AT_TI_begin_line(0xc8)
	.dwattr $C$DW$75, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$75, DW_AT_decl_file("../driverlib/MSP430FR2xx_4xx/timer_b.c")
	.dwattr $C$DW$75, DW_AT_decl_line(0xc8)
	.dwattr $C$DW$75, DW_AT_decl_column(0x06)
	.dwattr $C$DW$75, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 201,column 1,is_stmt,address Timer_B_clear,isa 0

	.dwfde $C$DW$CIE, Timer_B_clear
$C$DW$76	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$76, DW_AT_name("baseAddress")
	.dwattr $C$DW$76, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$76, DW_AT_location[DW_OP_reg12]


;*****************************************************************************
;* FUNCTION NAME: Timer_B_clear                                              *
;*                                                                           *
;*   Regs Modified     : SP,SR,r15                                           *
;*   Regs Used         : SP,SR,r12,r15                                       *
;*   Local Frame Size  : 0 Args + 2 Auto + 0 Save = 2 byte                   *
;*****************************************************************************
Timer_B_clear:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
        SUB.W     #2,SP                 ; [] 
	.dwcfi	cfa_offset, 4
$C$DW$77	.dwtag  DW_TAG_variable
	.dwattr $C$DW$77, DW_AT_name("baseAddress")
	.dwattr $C$DW$77, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$77, DW_AT_location[DW_OP_breg1 0]

        MOV.W     r12,0(SP)             ; [] |201| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 202,column 5,is_stmt,isa 0
        MOV.W     0(SP),r15             ; [] |202| 
        OR.W      #4,0(r15)             ; [] |202| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 203,column 1,is_stmt,isa 0
        ADD.W     #2,SP                 ; [] 
	.dwcfi	cfa_offset, 2
$C$DW$78	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$78, DW_AT_low_pc(0x00)
	.dwattr $C$DW$78, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$75, DW_AT_TI_end_file("../driverlib/MSP430FR2xx_4xx/timer_b.c")
	.dwattr $C$DW$75, DW_AT_TI_end_line(0xcb)
	.dwattr $C$DW$75, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$75

	.sect	".text:Timer_B_getSynchronizedCaptureCompareInput"
	.clink
	.global	Timer_B_getSynchronizedCaptureCompareInput

$C$DW$79	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$79, DW_AT_name("Timer_B_getSynchronizedCaptureCompareInput")
	.dwattr $C$DW$79, DW_AT_low_pc(Timer_B_getSynchronizedCaptureCompareInput)
	.dwattr $C$DW$79, DW_AT_high_pc(0x00)
	.dwattr $C$DW$79, DW_AT_TI_symbol_name("Timer_B_getSynchronizedCaptureCompareInput")
	.dwattr $C$DW$79, DW_AT_external
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$79, DW_AT_TI_begin_file("../driverlib/MSP430FR2xx_4xx/timer_b.c")
	.dwattr $C$DW$79, DW_AT_TI_begin_line(0xcd)
	.dwattr $C$DW$79, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$79, DW_AT_decl_file("../driverlib/MSP430FR2xx_4xx/timer_b.c")
	.dwattr $C$DW$79, DW_AT_decl_line(0xcd)
	.dwattr $C$DW$79, DW_AT_decl_column(0x09)
	.dwattr $C$DW$79, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 210,column 1,is_stmt,address Timer_B_getSynchronizedCaptureCompareInput,isa 0

	.dwfde $C$DW$CIE, Timer_B_getSynchronizedCaptureCompareInput
$C$DW$80	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$80, DW_AT_name("baseAddress")
	.dwattr $C$DW$80, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$80, DW_AT_location[DW_OP_reg12]

$C$DW$81	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$81, DW_AT_name("captureCompareRegister")
	.dwattr $C$DW$81, DW_AT_TI_symbol_name("captureCompareRegister")
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$81, DW_AT_location[DW_OP_reg13]

$C$DW$82	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$82, DW_AT_name("synchronized")
	.dwattr $C$DW$82, DW_AT_TI_symbol_name("synchronized")
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$82, DW_AT_location[DW_OP_reg14]


;*****************************************************************************
;* FUNCTION NAME: Timer_B_getSynchronizedCaptureCompareInput                 *
;*                                                                           *
;*   Regs Modified     : SP,SR,r12,r13                                       *
;*   Regs Used         : SP,SR,r12,r13,r14                                   *
;*   Local Frame Size  : 0 Args + 6 Auto + 0 Save = 6 byte                   *
;*****************************************************************************
Timer_B_getSynchronizedCaptureCompareInput:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
        SUB.W     #6,SP                 ; [] 
	.dwcfi	cfa_offset, 8
$C$DW$83	.dwtag  DW_TAG_variable
	.dwattr $C$DW$83, DW_AT_name("baseAddress")
	.dwattr $C$DW$83, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$83, DW_AT_location[DW_OP_breg1 0]

$C$DW$84	.dwtag  DW_TAG_variable
	.dwattr $C$DW$84, DW_AT_name("captureCompareRegister")
	.dwattr $C$DW$84, DW_AT_TI_symbol_name("captureCompareRegister")
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$84, DW_AT_location[DW_OP_breg1 2]

$C$DW$85	.dwtag  DW_TAG_variable
	.dwattr $C$DW$85, DW_AT_name("synchronized")
	.dwattr $C$DW$85, DW_AT_TI_symbol_name("synchronized")
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$85, DW_AT_location[DW_OP_breg1 4]

        MOV.W     r14,4(SP)             ; [] |210| 
        MOV.W     r13,2(SP)             ; [] |210| 
        MOV.W     r12,0(SP)             ; [] |210| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 211,column 5,is_stmt,isa 0
        ADD.W     0(SP),r13             ; [] |211| 
        BIT.W     @r13,4(SP)            ; [] |211| 
        JEQ       $C$L8                 ; [] |211| 
                                          ; [] |211| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 212,column 9,is_stmt,isa 0
        MOV.B     #1,r12                ; [] |212| 
        JMP       $C$L9                 ; [] |212| 
                                          ; [] |212| 
;* --------------------------------------------------------------------------*
$C$L8:    
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 214,column 9,is_stmt,isa 0
        MOV.B     #0,r12                ; [] |214| 
;* --------------------------------------------------------------------------*
$C$L9:    
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 216,column 1,is_stmt,isa 0
        ADD.W     #6,SP                 ; [] 
	.dwcfi	cfa_offset, 2
$C$DW$86	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$86, DW_AT_low_pc(0x00)
	.dwattr $C$DW$86, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$79, DW_AT_TI_end_file("../driverlib/MSP430FR2xx_4xx/timer_b.c")
	.dwattr $C$DW$79, DW_AT_TI_end_line(0xd8)
	.dwattr $C$DW$79, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$79

	.sect	".text:Timer_B_getOutputForOutputModeOutBitValue"
	.clink
	.global	Timer_B_getOutputForOutputModeOutBitValue

$C$DW$87	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$87, DW_AT_name("Timer_B_getOutputForOutputModeOutBitValue")
	.dwattr $C$DW$87, DW_AT_low_pc(Timer_B_getOutputForOutputModeOutBitValue)
	.dwattr $C$DW$87, DW_AT_high_pc(0x00)
	.dwattr $C$DW$87, DW_AT_TI_symbol_name("Timer_B_getOutputForOutputModeOutBitValue")
	.dwattr $C$DW$87, DW_AT_external
	.dwattr $C$DW$87, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$87, DW_AT_TI_begin_file("../driverlib/MSP430FR2xx_4xx/timer_b.c")
	.dwattr $C$DW$87, DW_AT_TI_begin_line(0xda)
	.dwattr $C$DW$87, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$87, DW_AT_decl_file("../driverlib/MSP430FR2xx_4xx/timer_b.c")
	.dwattr $C$DW$87, DW_AT_decl_line(0xda)
	.dwattr $C$DW$87, DW_AT_decl_column(0x09)
	.dwattr $C$DW$87, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 222,column 1,is_stmt,address Timer_B_getOutputForOutputModeOutBitValue,isa 0

	.dwfde $C$DW$CIE, Timer_B_getOutputForOutputModeOutBitValue
$C$DW$88	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$88, DW_AT_name("baseAddress")
	.dwattr $C$DW$88, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$88, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$88, DW_AT_location[DW_OP_reg12]

$C$DW$89	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$89, DW_AT_name("captureCompareRegister")
	.dwattr $C$DW$89, DW_AT_TI_symbol_name("captureCompareRegister")
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$89, DW_AT_location[DW_OP_reg13]


;*****************************************************************************
;* FUNCTION NAME: Timer_B_getOutputForOutputModeOutBitValue                  *
;*                                                                           *
;*   Regs Modified     : SP,SR,r12,r13,r15                                   *
;*   Regs Used         : SP,SR,r12,r13,r15                                   *
;*   Local Frame Size  : 0 Args + 4 Auto + 0 Save = 4 byte                   *
;*****************************************************************************
Timer_B_getOutputForOutputModeOutBitValue:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
        SUB.W     #4,SP                 ; [] 
	.dwcfi	cfa_offset, 6
$C$DW$90	.dwtag  DW_TAG_variable
	.dwattr $C$DW$90, DW_AT_name("baseAddress")
	.dwattr $C$DW$90, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$90, DW_AT_location[DW_OP_breg1 0]

$C$DW$91	.dwtag  DW_TAG_variable
	.dwattr $C$DW$91, DW_AT_name("captureCompareRegister")
	.dwattr $C$DW$91, DW_AT_TI_symbol_name("captureCompareRegister")
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$91, DW_AT_location[DW_OP_breg1 2]

        MOV.W     r13,2(SP)             ; [] |222| 
        MOV.W     r12,0(SP)             ; [] |222| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 224,column 5,is_stmt,isa 0
        ADD.W     0(SP),r13             ; [] |224| 
        MOV.W     #4,r15                ; [] |224| 
        BIT.W     @r13,r15              ; [] |224| 
        JEQ       $C$L10                ; [] |224| 
                                          ; [] |224| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 225,column 9,is_stmt,isa 0
        MOV.B     #4,r12                ; [] |225| 
        JMP       $C$L11                ; [] |225| 
                                          ; [] |225| 
;* --------------------------------------------------------------------------*
$C$L10:    
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 227,column 9,is_stmt,isa 0
        MOV.B     #0,r12                ; [] |227| 
;* --------------------------------------------------------------------------*
$C$L11:    
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 229,column 1,is_stmt,isa 0
        ADD.W     #4,SP                 ; [] 
	.dwcfi	cfa_offset, 2
$C$DW$92	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$92, DW_AT_low_pc(0x00)
	.dwattr $C$DW$92, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$87, DW_AT_TI_end_file("../driverlib/MSP430FR2xx_4xx/timer_b.c")
	.dwattr $C$DW$87, DW_AT_TI_end_line(0xe5)
	.dwattr $C$DW$87, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$87

	.sect	".text:Timer_B_getCaptureCompareCount"
	.clink
	.global	Timer_B_getCaptureCompareCount

$C$DW$93	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$93, DW_AT_name("Timer_B_getCaptureCompareCount")
	.dwattr $C$DW$93, DW_AT_low_pc(Timer_B_getCaptureCompareCount)
	.dwattr $C$DW$93, DW_AT_high_pc(0x00)
	.dwattr $C$DW$93, DW_AT_TI_symbol_name("Timer_B_getCaptureCompareCount")
	.dwattr $C$DW$93, DW_AT_external
	.dwattr $C$DW$93, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$93, DW_AT_TI_begin_file("../driverlib/MSP430FR2xx_4xx/timer_b.c")
	.dwattr $C$DW$93, DW_AT_TI_begin_line(0xe7)
	.dwattr $C$DW$93, DW_AT_TI_begin_column(0x0a)
	.dwattr $C$DW$93, DW_AT_decl_file("../driverlib/MSP430FR2xx_4xx/timer_b.c")
	.dwattr $C$DW$93, DW_AT_decl_line(0xe7)
	.dwattr $C$DW$93, DW_AT_decl_column(0x0a)
	.dwattr $C$DW$93, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 235,column 1,is_stmt,address Timer_B_getCaptureCompareCount,isa 0

	.dwfde $C$DW$CIE, Timer_B_getCaptureCompareCount
$C$DW$94	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$94, DW_AT_name("baseAddress")
	.dwattr $C$DW$94, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$94, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$94, DW_AT_location[DW_OP_reg12]

$C$DW$95	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$95, DW_AT_name("captureCompareRegister")
	.dwattr $C$DW$95, DW_AT_TI_symbol_name("captureCompareRegister")
	.dwattr $C$DW$95, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$95, DW_AT_location[DW_OP_reg13]


;*****************************************************************************
;* FUNCTION NAME: Timer_B_getCaptureCompareCount                             *
;*                                                                           *
;*   Regs Modified     : SP,SR,r12,r13                                       *
;*   Regs Used         : SP,SR,r12,r13                                       *
;*   Local Frame Size  : 0 Args + 4 Auto + 0 Save = 4 byte                   *
;*****************************************************************************
Timer_B_getCaptureCompareCount:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
        SUB.W     #4,SP                 ; [] 
	.dwcfi	cfa_offset, 6
$C$DW$96	.dwtag  DW_TAG_variable
	.dwattr $C$DW$96, DW_AT_name("baseAddress")
	.dwattr $C$DW$96, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$96, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$96, DW_AT_location[DW_OP_breg1 0]

$C$DW$97	.dwtag  DW_TAG_variable
	.dwattr $C$DW$97, DW_AT_name("captureCompareRegister")
	.dwattr $C$DW$97, DW_AT_TI_symbol_name("captureCompareRegister")
	.dwattr $C$DW$97, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$97, DW_AT_location[DW_OP_breg1 2]

        MOV.W     r13,2(SP)             ; [] |235| 
        MOV.W     r12,0(SP)             ; [] |235| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 236,column 5,is_stmt,isa 0
        ADD.W     0(SP),r13             ; [] |236| 
        MOV.W     16(r13),r12           ; [] |236| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 237,column 1,is_stmt,isa 0
        ADD.W     #4,SP                 ; [] 
	.dwcfi	cfa_offset, 2
$C$DW$98	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$98, DW_AT_low_pc(0x00)
	.dwattr $C$DW$98, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$93, DW_AT_TI_end_file("../driverlib/MSP430FR2xx_4xx/timer_b.c")
	.dwattr $C$DW$93, DW_AT_TI_end_line(0xed)
	.dwattr $C$DW$93, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$93

	.sect	".text:Timer_B_setOutputForOutputModeOutBitValue"
	.clink
	.global	Timer_B_setOutputForOutputModeOutBitValue

$C$DW$99	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$99, DW_AT_name("Timer_B_setOutputForOutputModeOutBitValue")
	.dwattr $C$DW$99, DW_AT_low_pc(Timer_B_setOutputForOutputModeOutBitValue)
	.dwattr $C$DW$99, DW_AT_high_pc(0x00)
	.dwattr $C$DW$99, DW_AT_TI_symbol_name("Timer_B_setOutputForOutputModeOutBitValue")
	.dwattr $C$DW$99, DW_AT_external
	.dwattr $C$DW$99, DW_AT_TI_begin_file("../driverlib/MSP430FR2xx_4xx/timer_b.c")
	.dwattr $C$DW$99, DW_AT_TI_begin_line(0xef)
	.dwattr $C$DW$99, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$99, DW_AT_decl_file("../driverlib/MSP430FR2xx_4xx/timer_b.c")
	.dwattr $C$DW$99, DW_AT_decl_line(0xef)
	.dwattr $C$DW$99, DW_AT_decl_column(0x06)
	.dwattr $C$DW$99, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 244,column 1,is_stmt,address Timer_B_setOutputForOutputModeOutBitValue,isa 0

	.dwfde $C$DW$CIE, Timer_B_setOutputForOutputModeOutBitValue
$C$DW$100	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$100, DW_AT_name("baseAddress")
	.dwattr $C$DW$100, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$100, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$100, DW_AT_location[DW_OP_reg12]

$C$DW$101	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$101, DW_AT_name("captureCompareRegister")
	.dwattr $C$DW$101, DW_AT_TI_symbol_name("captureCompareRegister")
	.dwattr $C$DW$101, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$101, DW_AT_location[DW_OP_reg13]

$C$DW$102	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$102, DW_AT_name("outputModeOutBitValue")
	.dwattr $C$DW$102, DW_AT_TI_symbol_name("outputModeOutBitValue")
	.dwattr $C$DW$102, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$102, DW_AT_location[DW_OP_reg14]


;*****************************************************************************
;* FUNCTION NAME: Timer_B_setOutputForOutputModeOutBitValue                  *
;*                                                                           *
;*   Regs Modified     : SP,SR,r13,r15                                       *
;*   Regs Used         : SP,SR,r12,r13,r14,r15                               *
;*   Local Frame Size  : 0 Args + 6 Auto + 0 Save = 6 byte                   *
;*****************************************************************************
Timer_B_setOutputForOutputModeOutBitValue:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
        SUB.W     #6,SP                 ; [] 
	.dwcfi	cfa_offset, 8
$C$DW$103	.dwtag  DW_TAG_variable
	.dwattr $C$DW$103, DW_AT_name("baseAddress")
	.dwattr $C$DW$103, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$103, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$103, DW_AT_location[DW_OP_breg1 0]

$C$DW$104	.dwtag  DW_TAG_variable
	.dwattr $C$DW$104, DW_AT_name("captureCompareRegister")
	.dwattr $C$DW$104, DW_AT_TI_symbol_name("captureCompareRegister")
	.dwattr $C$DW$104, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$104, DW_AT_location[DW_OP_breg1 2]

$C$DW$105	.dwtag  DW_TAG_variable
	.dwattr $C$DW$105, DW_AT_name("outputModeOutBitValue")
	.dwattr $C$DW$105, DW_AT_TI_symbol_name("outputModeOutBitValue")
	.dwattr $C$DW$105, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$105, DW_AT_location[DW_OP_breg1 4]

        MOV.W     r14,4(SP)             ; [] |244| 
        MOV.W     r13,2(SP)             ; [] |244| 
        MOV.W     r12,0(SP)             ; [] |244| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 245,column 5,is_stmt,isa 0
        ADD.W     0(SP),r13             ; [] |245| 
        BIC.W     #4,0(r13)             ; [] |245| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 246,column 5,is_stmt,isa 0
        MOV.W     2(SP),r15             ; [] |246| 
        ADD.W     0(SP),r15             ; [] |246| 
        OR.W      4(SP),0(r15)          ; [] |246| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 247,column 1,is_stmt,isa 0
        ADD.W     #6,SP                 ; [] 
	.dwcfi	cfa_offset, 2
$C$DW$106	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$106, DW_AT_low_pc(0x00)
	.dwattr $C$DW$106, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$99, DW_AT_TI_end_file("../driverlib/MSP430FR2xx_4xx/timer_b.c")
	.dwattr $C$DW$99, DW_AT_TI_end_line(0xf7)
	.dwattr $C$DW$99, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$99

	.sect	".text:Timer_B_outputPWM"
	.clink
	.global	Timer_B_outputPWM

$C$DW$107	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$107, DW_AT_name("Timer_B_outputPWM")
	.dwattr $C$DW$107, DW_AT_low_pc(Timer_B_outputPWM)
	.dwattr $C$DW$107, DW_AT_high_pc(0x00)
	.dwattr $C$DW$107, DW_AT_TI_symbol_name("Timer_B_outputPWM")
	.dwattr $C$DW$107, DW_AT_external
	.dwattr $C$DW$107, DW_AT_TI_begin_file("../driverlib/MSP430FR2xx_4xx/timer_b.c")
	.dwattr $C$DW$107, DW_AT_TI_begin_line(0xf9)
	.dwattr $C$DW$107, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$107, DW_AT_decl_file("../driverlib/MSP430FR2xx_4xx/timer_b.c")
	.dwattr $C$DW$107, DW_AT_decl_line(0xf9)
	.dwattr $C$DW$107, DW_AT_decl_column(0x06)
	.dwattr $C$DW$107, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 250,column 1,is_stmt,address Timer_B_outputPWM,isa 0

	.dwfde $C$DW$CIE, Timer_B_outputPWM
$C$DW$108	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$108, DW_AT_name("baseAddress")
	.dwattr $C$DW$108, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$108, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$108, DW_AT_location[DW_OP_reg12]

$C$DW$109	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$109, DW_AT_name("param")
	.dwattr $C$DW$109, DW_AT_TI_symbol_name("param")
	.dwattr $C$DW$109, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$109, DW_AT_location[DW_OP_reg13]


;*****************************************************************************
;* FUNCTION NAME: Timer_B_outputPWM                                          *
;*                                                                           *
;*   Regs Modified     : SP,SR,r12,r13,r14,r15                               *
;*   Regs Used         : SP,SR,r12,r13,r14,r15                               *
;*   Local Frame Size  : 0 Args + 4 Auto + 0 Save = 4 byte                   *
;*****************************************************************************
Timer_B_outputPWM:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
        SUB.W     #4,SP                 ; [] 
	.dwcfi	cfa_offset, 6
$C$DW$110	.dwtag  DW_TAG_variable
	.dwattr $C$DW$110, DW_AT_name("baseAddress")
	.dwattr $C$DW$110, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$110, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$110, DW_AT_location[DW_OP_breg1 0]

$C$DW$111	.dwtag  DW_TAG_variable
	.dwattr $C$DW$111, DW_AT_name("param")
	.dwattr $C$DW$111, DW_AT_TI_symbol_name("param")
	.dwattr $C$DW$111, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$111, DW_AT_location[DW_OP_breg1 2]

        MOV.W     r13,2(SP)             ; [] |250| 
        MOV.W     r12,0(SP)             ; [] |250| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 252,column 5,is_stmt,isa 0
        MOV.W     0(SP),r15             ; [] |252| 
        AND.W     #64713,0(r15)         ; [] |252| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 257,column 5,is_stmt,isa 0
        MOV.W     #32,r15               ; [] |257| 
        ADD.W     0(SP),r15             ; [] |257| 
        AND.W     #65528,0(r15)         ; [] |257| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 259,column 5,is_stmt,isa 0
        MOV.W     #32,r15               ; [] |259| 
        ADD.W     0(SP),r15             ; [] |259| 
        MOV.W     2(SP),r13             ; [] |259| 
        MOV.W     #7,r14                ; [] |259| 
        AND.W     2(r13),r14            ; [] |259| 
        OR.W      r14,0(r15)            ; [] |259| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 261,column 5,is_stmt,isa 0
        MOV.W     0(SP),r15             ; [] |261| 
        MOV.W     2(SP),r14             ; [] |261| 
        MOV.W     2(r14),r12            ; [] |261| 
$C$DW$112	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$112, DW_AT_low_pc(0x00)
	.dwattr $C$DW$112, DW_AT_name("__mspabi_srli_3")
	.dwattr $C$DW$112, DW_AT_TI_call

        CALL      #__mspabi_srli_3      ; [] |261| 
                                          ; [] |261| 
$C$DW$113	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$113, DW_AT_low_pc(0x00)
	.dwattr $C$DW$113, DW_AT_name("__mspabi_slli_6")
	.dwattr $C$DW$113, DW_AT_TI_call

        CALL      #__mspabi_slli_6      ; [] |261| 
                                          ; [] |261| 
        MOV.W     2(SP),r14             ; [] |261| 
        ADD.W     @r14,r12              ; [] |261| 
        ADD.W     #20,r12               ; [] |261| 
        OR.W      r12,0(r15)            ; [] |261| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 266,column 5,is_stmt,isa 0
        MOV.W     2(SP),r15             ; [] |266| 
        MOV.W     0(SP),r14             ; [] |266| 
        MOV.W     4(r15),18(r14)        ; [] |266| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 268,column 5,is_stmt,isa 0
        MOV.W     #2,r15                ; [] |268| 
        ADD.W     0(SP),r15             ; [] |268| 
        AND.W     #65295,0(r15)         ; [] |268| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 273,column 5,is_stmt,isa 0
        MOV.W     2(SP),r14             ; [] |273| 
        MOV.W     6(r14),r15            ; [] |273| 
        ADD.W     0(SP),r15             ; [] |273| 
        OR.W      8(r14),0(r15)         ; [] |273| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 275,column 5,is_stmt,isa 0
        MOV.W     2(SP),r15             ; [] |275| 
        MOV.W     6(r15),r14            ; [] |275| 
        ADD.W     0(SP),r14             ; [] |275| 
        MOV.W     10(r15),16(r14)       ; [] |275| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 276,column 1,is_stmt,isa 0
        ADD.W     #4,SP                 ; [] 
	.dwcfi	cfa_offset, 2
$C$DW$114	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$114, DW_AT_low_pc(0x00)
	.dwattr $C$DW$114, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$107, DW_AT_TI_end_file("../driverlib/MSP430FR2xx_4xx/timer_b.c")
	.dwattr $C$DW$107, DW_AT_TI_end_line(0x114)
	.dwattr $C$DW$107, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$107

	.sect	".text:Timer_B_stop"
	.clink
	.global	Timer_B_stop

$C$DW$115	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$115, DW_AT_name("Timer_B_stop")
	.dwattr $C$DW$115, DW_AT_low_pc(Timer_B_stop)
	.dwattr $C$DW$115, DW_AT_high_pc(0x00)
	.dwattr $C$DW$115, DW_AT_TI_symbol_name("Timer_B_stop")
	.dwattr $C$DW$115, DW_AT_external
	.dwattr $C$DW$115, DW_AT_TI_begin_file("../driverlib/MSP430FR2xx_4xx/timer_b.c")
	.dwattr $C$DW$115, DW_AT_TI_begin_line(0x116)
	.dwattr $C$DW$115, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$115, DW_AT_decl_file("../driverlib/MSP430FR2xx_4xx/timer_b.c")
	.dwattr $C$DW$115, DW_AT_decl_line(0x116)
	.dwattr $C$DW$115, DW_AT_decl_column(0x06)
	.dwattr $C$DW$115, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 279,column 1,is_stmt,address Timer_B_stop,isa 0

	.dwfde $C$DW$CIE, Timer_B_stop
$C$DW$116	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$116, DW_AT_name("baseAddress")
	.dwattr $C$DW$116, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$116, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$116, DW_AT_location[DW_OP_reg12]


;*****************************************************************************
;* FUNCTION NAME: Timer_B_stop                                               *
;*                                                                           *
;*   Regs Modified     : SP,SR,r15                                           *
;*   Regs Used         : SP,SR,r12,r15                                       *
;*   Local Frame Size  : 0 Args + 2 Auto + 0 Save = 2 byte                   *
;*****************************************************************************
Timer_B_stop:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
        SUB.W     #2,SP                 ; [] 
	.dwcfi	cfa_offset, 4
$C$DW$117	.dwtag  DW_TAG_variable
	.dwattr $C$DW$117, DW_AT_name("baseAddress")
	.dwattr $C$DW$117, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$117, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$117, DW_AT_location[DW_OP_breg1 0]

        MOV.W     r12,0(SP)             ; [] |279| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 280,column 5,is_stmt,isa 0
        MOV.W     0(SP),r15             ; [] |280| 
        AND.W     #65487,0(r15)         ; [] |280| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 281,column 1,is_stmt,isa 0
        ADD.W     #2,SP                 ; [] 
	.dwcfi	cfa_offset, 2
$C$DW$118	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$118, DW_AT_low_pc(0x00)
	.dwattr $C$DW$118, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$115, DW_AT_TI_end_file("../driverlib/MSP430FR2xx_4xx/timer_b.c")
	.dwattr $C$DW$115, DW_AT_TI_end_line(0x119)
	.dwattr $C$DW$115, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$115

	.sect	".text:Timer_B_setCompareValue"
	.clink
	.global	Timer_B_setCompareValue

$C$DW$119	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$119, DW_AT_name("Timer_B_setCompareValue")
	.dwattr $C$DW$119, DW_AT_low_pc(Timer_B_setCompareValue)
	.dwattr $C$DW$119, DW_AT_high_pc(0x00)
	.dwattr $C$DW$119, DW_AT_TI_symbol_name("Timer_B_setCompareValue")
	.dwattr $C$DW$119, DW_AT_external
	.dwattr $C$DW$119, DW_AT_TI_begin_file("../driverlib/MSP430FR2xx_4xx/timer_b.c")
	.dwattr $C$DW$119, DW_AT_TI_begin_line(0x11c)
	.dwattr $C$DW$119, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$119, DW_AT_decl_file("../driverlib/MSP430FR2xx_4xx/timer_b.c")
	.dwattr $C$DW$119, DW_AT_decl_line(0x11c)
	.dwattr $C$DW$119, DW_AT_decl_column(0x06)
	.dwattr $C$DW$119, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 288,column 1,is_stmt,address Timer_B_setCompareValue,isa 0

	.dwfde $C$DW$CIE, Timer_B_setCompareValue
$C$DW$120	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$120, DW_AT_name("baseAddress")
	.dwattr $C$DW$120, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$120, DW_AT_location[DW_OP_reg12]

$C$DW$121	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$121, DW_AT_name("compareRegister")
	.dwattr $C$DW$121, DW_AT_TI_symbol_name("compareRegister")
	.dwattr $C$DW$121, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$121, DW_AT_location[DW_OP_reg13]

$C$DW$122	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$122, DW_AT_name("compareValue")
	.dwattr $C$DW$122, DW_AT_TI_symbol_name("compareValue")
	.dwattr $C$DW$122, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$122, DW_AT_location[DW_OP_reg14]


;*****************************************************************************
;* FUNCTION NAME: Timer_B_setCompareValue                                    *
;*                                                                           *
;*   Regs Modified     : SP,SR,r13                                           *
;*   Regs Used         : SP,SR,r12,r13,r14                                   *
;*   Local Frame Size  : 0 Args + 6 Auto + 0 Save = 6 byte                   *
;*****************************************************************************
Timer_B_setCompareValue:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
        SUB.W     #6,SP                 ; [] 
	.dwcfi	cfa_offset, 8
$C$DW$123	.dwtag  DW_TAG_variable
	.dwattr $C$DW$123, DW_AT_name("baseAddress")
	.dwattr $C$DW$123, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$123, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$123, DW_AT_location[DW_OP_breg1 0]

$C$DW$124	.dwtag  DW_TAG_variable
	.dwattr $C$DW$124, DW_AT_name("compareRegister")
	.dwattr $C$DW$124, DW_AT_TI_symbol_name("compareRegister")
	.dwattr $C$DW$124, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$124, DW_AT_location[DW_OP_breg1 2]

$C$DW$125	.dwtag  DW_TAG_variable
	.dwattr $C$DW$125, DW_AT_name("compareValue")
	.dwattr $C$DW$125, DW_AT_TI_symbol_name("compareValue")
	.dwattr $C$DW$125, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$125, DW_AT_location[DW_OP_breg1 4]

        MOV.W     r14,4(SP)             ; [] |288| 
        MOV.W     r13,2(SP)             ; [] |288| 
        MOV.W     r12,0(SP)             ; [] |288| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 289,column 5,is_stmt,isa 0
        ADD.W     0(SP),r13             ; [] |289| 
        MOV.W     4(SP),16(r13)         ; [] |289| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 290,column 1,is_stmt,isa 0
        ADD.W     #6,SP                 ; [] 
	.dwcfi	cfa_offset, 2
$C$DW$126	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$126, DW_AT_low_pc(0x00)
	.dwattr $C$DW$126, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$119, DW_AT_TI_end_file("../driverlib/MSP430FR2xx_4xx/timer_b.c")
	.dwattr $C$DW$119, DW_AT_TI_end_line(0x122)
	.dwattr $C$DW$119, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$119

	.sect	".text:Timer_B_clearTimerInterrupt"
	.clink
	.global	Timer_B_clearTimerInterrupt

$C$DW$127	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$127, DW_AT_name("Timer_B_clearTimerInterrupt")
	.dwattr $C$DW$127, DW_AT_low_pc(Timer_B_clearTimerInterrupt)
	.dwattr $C$DW$127, DW_AT_high_pc(0x00)
	.dwattr $C$DW$127, DW_AT_TI_symbol_name("Timer_B_clearTimerInterrupt")
	.dwattr $C$DW$127, DW_AT_external
	.dwattr $C$DW$127, DW_AT_TI_begin_file("../driverlib/MSP430FR2xx_4xx/timer_b.c")
	.dwattr $C$DW$127, DW_AT_TI_begin_line(0x124)
	.dwattr $C$DW$127, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$127, DW_AT_decl_file("../driverlib/MSP430FR2xx_4xx/timer_b.c")
	.dwattr $C$DW$127, DW_AT_decl_line(0x124)
	.dwattr $C$DW$127, DW_AT_decl_column(0x06)
	.dwattr $C$DW$127, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 293,column 1,is_stmt,address Timer_B_clearTimerInterrupt,isa 0

	.dwfde $C$DW$CIE, Timer_B_clearTimerInterrupt
$C$DW$128	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$128, DW_AT_name("baseAddress")
	.dwattr $C$DW$128, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$128, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$128, DW_AT_location[DW_OP_reg12]


;*****************************************************************************
;* FUNCTION NAME: Timer_B_clearTimerInterrupt                                *
;*                                                                           *
;*   Regs Modified     : SP,SR,r15                                           *
;*   Regs Used         : SP,SR,r12,r15                                       *
;*   Local Frame Size  : 0 Args + 2 Auto + 0 Save = 2 byte                   *
;*****************************************************************************
Timer_B_clearTimerInterrupt:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
        SUB.W     #2,SP                 ; [] 
	.dwcfi	cfa_offset, 4
$C$DW$129	.dwtag  DW_TAG_variable
	.dwattr $C$DW$129, DW_AT_name("baseAddress")
	.dwattr $C$DW$129, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$129, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$129, DW_AT_location[DW_OP_breg1 0]

        MOV.W     r12,0(SP)             ; [] |293| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 294,column 5,is_stmt,isa 0
        MOV.W     0(SP),r15             ; [] |294| 
        BIC.W     #1,0(r15)             ; [] |294| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 295,column 1,is_stmt,isa 0
        ADD.W     #2,SP                 ; [] 
	.dwcfi	cfa_offset, 2
$C$DW$130	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$130, DW_AT_low_pc(0x00)
	.dwattr $C$DW$130, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$127, DW_AT_TI_end_file("../driverlib/MSP430FR2xx_4xx/timer_b.c")
	.dwattr $C$DW$127, DW_AT_TI_end_line(0x127)
	.dwattr $C$DW$127, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$127

	.sect	".text:Timer_B_clearCaptureCompareInterrupt"
	.clink
	.global	Timer_B_clearCaptureCompareInterrupt

$C$DW$131	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$131, DW_AT_name("Timer_B_clearCaptureCompareInterrupt")
	.dwattr $C$DW$131, DW_AT_low_pc(Timer_B_clearCaptureCompareInterrupt)
	.dwattr $C$DW$131, DW_AT_high_pc(0x00)
	.dwattr $C$DW$131, DW_AT_TI_symbol_name("Timer_B_clearCaptureCompareInterrupt")
	.dwattr $C$DW$131, DW_AT_external
	.dwattr $C$DW$131, DW_AT_TI_begin_file("../driverlib/MSP430FR2xx_4xx/timer_b.c")
	.dwattr $C$DW$131, DW_AT_TI_begin_line(0x129)
	.dwattr $C$DW$131, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$131, DW_AT_decl_file("../driverlib/MSP430FR2xx_4xx/timer_b.c")
	.dwattr $C$DW$131, DW_AT_decl_line(0x129)
	.dwattr $C$DW$131, DW_AT_decl_column(0x06)
	.dwattr $C$DW$131, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 300,column 1,is_stmt,address Timer_B_clearCaptureCompareInterrupt,isa 0

	.dwfde $C$DW$CIE, Timer_B_clearCaptureCompareInterrupt
$C$DW$132	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$132, DW_AT_name("baseAddress")
	.dwattr $C$DW$132, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$132, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$132, DW_AT_location[DW_OP_reg12]

$C$DW$133	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$133, DW_AT_name("captureCompareRegister")
	.dwattr $C$DW$133, DW_AT_TI_symbol_name("captureCompareRegister")
	.dwattr $C$DW$133, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$133, DW_AT_location[DW_OP_reg13]


;*****************************************************************************
;* FUNCTION NAME: Timer_B_clearCaptureCompareInterrupt                       *
;*                                                                           *
;*   Regs Modified     : SP,SR,r13                                           *
;*   Regs Used         : SP,SR,r12,r13                                       *
;*   Local Frame Size  : 0 Args + 4 Auto + 0 Save = 4 byte                   *
;*****************************************************************************
Timer_B_clearCaptureCompareInterrupt:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
        SUB.W     #4,SP                 ; [] 
	.dwcfi	cfa_offset, 6
$C$DW$134	.dwtag  DW_TAG_variable
	.dwattr $C$DW$134, DW_AT_name("baseAddress")
	.dwattr $C$DW$134, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$134, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$134, DW_AT_location[DW_OP_breg1 0]

$C$DW$135	.dwtag  DW_TAG_variable
	.dwattr $C$DW$135, DW_AT_name("captureCompareRegister")
	.dwattr $C$DW$135, DW_AT_TI_symbol_name("captureCompareRegister")
	.dwattr $C$DW$135, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$135, DW_AT_location[DW_OP_breg1 2]

        MOV.W     r13,2(SP)             ; [] |300| 
        MOV.W     r12,0(SP)             ; [] |300| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 301,column 5,is_stmt,isa 0
        ADD.W     0(SP),r13             ; [] |301| 
        BIC.W     #1,0(r13)             ; [] |301| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 302,column 1,is_stmt,isa 0
        ADD.W     #4,SP                 ; [] 
	.dwcfi	cfa_offset, 2
$C$DW$136	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$136, DW_AT_low_pc(0x00)
	.dwattr $C$DW$136, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$131, DW_AT_TI_end_file("../driverlib/MSP430FR2xx_4xx/timer_b.c")
	.dwattr $C$DW$131, DW_AT_TI_end_line(0x12e)
	.dwattr $C$DW$131, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$131

	.sect	".text:Timer_B_selectCounterLength"
	.clink
	.global	Timer_B_selectCounterLength

$C$DW$137	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$137, DW_AT_name("Timer_B_selectCounterLength")
	.dwattr $C$DW$137, DW_AT_low_pc(Timer_B_selectCounterLength)
	.dwattr $C$DW$137, DW_AT_high_pc(0x00)
	.dwattr $C$DW$137, DW_AT_TI_symbol_name("Timer_B_selectCounterLength")
	.dwattr $C$DW$137, DW_AT_external
	.dwattr $C$DW$137, DW_AT_TI_begin_file("../driverlib/MSP430FR2xx_4xx/timer_b.c")
	.dwattr $C$DW$137, DW_AT_TI_begin_line(0x130)
	.dwattr $C$DW$137, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$137, DW_AT_decl_file("../driverlib/MSP430FR2xx_4xx/timer_b.c")
	.dwattr $C$DW$137, DW_AT_decl_line(0x130)
	.dwattr $C$DW$137, DW_AT_decl_column(0x06)
	.dwattr $C$DW$137, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 307,column 1,is_stmt,address Timer_B_selectCounterLength,isa 0

	.dwfde $C$DW$CIE, Timer_B_selectCounterLength
$C$DW$138	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$138, DW_AT_name("baseAddress")
	.dwattr $C$DW$138, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$138, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$138, DW_AT_location[DW_OP_reg12]

$C$DW$139	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$139, DW_AT_name("counterLength")
	.dwattr $C$DW$139, DW_AT_TI_symbol_name("counterLength")
	.dwattr $C$DW$139, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$139, DW_AT_location[DW_OP_reg13]


;*****************************************************************************
;* FUNCTION NAME: Timer_B_selectCounterLength                                *
;*                                                                           *
;*   Regs Modified     : SP,SR,r15                                           *
;*   Regs Used         : SP,SR,r12,r13,r15                                   *
;*   Local Frame Size  : 0 Args + 4 Auto + 0 Save = 4 byte                   *
;*****************************************************************************
Timer_B_selectCounterLength:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
        SUB.W     #4,SP                 ; [] 
	.dwcfi	cfa_offset, 6
$C$DW$140	.dwtag  DW_TAG_variable
	.dwattr $C$DW$140, DW_AT_name("baseAddress")
	.dwattr $C$DW$140, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$140, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$140, DW_AT_location[DW_OP_breg1 0]

$C$DW$141	.dwtag  DW_TAG_variable
	.dwattr $C$DW$141, DW_AT_name("counterLength")
	.dwattr $C$DW$141, DW_AT_TI_symbol_name("counterLength")
	.dwattr $C$DW$141, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$141, DW_AT_location[DW_OP_breg1 2]

        MOV.W     r13,2(SP)             ; [] |307| 
        MOV.W     r12,0(SP)             ; [] |307| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 308,column 2,is_stmt,isa 0
        MOV.W     0(SP),r15             ; [] |308| 
        AND.W     #59391,0(r15)         ; [] |308| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 309,column 2,is_stmt,isa 0
        MOV.W     0(SP),r15             ; [] |309| 
        OR.W      2(SP),0(r15)          ; [] |309| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 310,column 1,is_stmt,isa 0
        ADD.W     #4,SP                 ; [] 
	.dwcfi	cfa_offset, 2
$C$DW$142	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$142, DW_AT_low_pc(0x00)
	.dwattr $C$DW$142, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$137, DW_AT_TI_end_file("../driverlib/MSP430FR2xx_4xx/timer_b.c")
	.dwattr $C$DW$137, DW_AT_TI_end_line(0x136)
	.dwattr $C$DW$137, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$137

	.sect	".text:Timer_B_selectLatchingGroup"
	.clink
	.global	Timer_B_selectLatchingGroup

$C$DW$143	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$143, DW_AT_name("Timer_B_selectLatchingGroup")
	.dwattr $C$DW$143, DW_AT_low_pc(Timer_B_selectLatchingGroup)
	.dwattr $C$DW$143, DW_AT_high_pc(0x00)
	.dwattr $C$DW$143, DW_AT_TI_symbol_name("Timer_B_selectLatchingGroup")
	.dwattr $C$DW$143, DW_AT_external
	.dwattr $C$DW$143, DW_AT_TI_begin_file("../driverlib/MSP430FR2xx_4xx/timer_b.c")
	.dwattr $C$DW$143, DW_AT_TI_begin_line(0x138)
	.dwattr $C$DW$143, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$143, DW_AT_decl_file("../driverlib/MSP430FR2xx_4xx/timer_b.c")
	.dwattr $C$DW$143, DW_AT_decl_line(0x138)
	.dwattr $C$DW$143, DW_AT_decl_column(0x06)
	.dwattr $C$DW$143, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 314,column 1,is_stmt,address Timer_B_selectLatchingGroup,isa 0

	.dwfde $C$DW$CIE, Timer_B_selectLatchingGroup
$C$DW$144	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$144, DW_AT_name("baseAddress")
	.dwattr $C$DW$144, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$144, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$144, DW_AT_location[DW_OP_reg12]

$C$DW$145	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$145, DW_AT_name("groupLatch")
	.dwattr $C$DW$145, DW_AT_TI_symbol_name("groupLatch")
	.dwattr $C$DW$145, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$145, DW_AT_location[DW_OP_reg13]


;*****************************************************************************
;* FUNCTION NAME: Timer_B_selectLatchingGroup                                *
;*                                                                           *
;*   Regs Modified     : SP,SR,r15                                           *
;*   Regs Used         : SP,SR,r12,r13,r15                                   *
;*   Local Frame Size  : 0 Args + 4 Auto + 0 Save = 4 byte                   *
;*****************************************************************************
Timer_B_selectLatchingGroup:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
        SUB.W     #4,SP                 ; [] 
	.dwcfi	cfa_offset, 6
$C$DW$146	.dwtag  DW_TAG_variable
	.dwattr $C$DW$146, DW_AT_name("baseAddress")
	.dwattr $C$DW$146, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$146, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$146, DW_AT_location[DW_OP_breg1 0]

$C$DW$147	.dwtag  DW_TAG_variable
	.dwattr $C$DW$147, DW_AT_name("groupLatch")
	.dwattr $C$DW$147, DW_AT_TI_symbol_name("groupLatch")
	.dwattr $C$DW$147, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$147, DW_AT_location[DW_OP_breg1 2]

        MOV.W     r13,2(SP)             ; [] |314| 
        MOV.W     r12,0(SP)             ; [] |314| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 315,column 2,is_stmt,isa 0
        MOV.W     0(SP),r15             ; [] |315| 
        AND.W     #40959,0(r15)         ; [] |315| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 316,column 2,is_stmt,isa 0
        MOV.W     0(SP),r15             ; [] |316| 
        OR.W      2(SP),0(r15)          ; [] |316| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 317,column 1,is_stmt,isa 0
        ADD.W     #4,SP                 ; [] 
	.dwcfi	cfa_offset, 2
$C$DW$148	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$148, DW_AT_low_pc(0x00)
	.dwattr $C$DW$148, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$143, DW_AT_TI_end_file("../driverlib/MSP430FR2xx_4xx/timer_b.c")
	.dwattr $C$DW$143, DW_AT_TI_end_line(0x13d)
	.dwattr $C$DW$143, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$143

	.sect	".text:Timer_B_initCompareLatchLoadEvent"
	.clink
	.global	Timer_B_initCompareLatchLoadEvent

$C$DW$149	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$149, DW_AT_name("Timer_B_initCompareLatchLoadEvent")
	.dwattr $C$DW$149, DW_AT_low_pc(Timer_B_initCompareLatchLoadEvent)
	.dwattr $C$DW$149, DW_AT_high_pc(0x00)
	.dwattr $C$DW$149, DW_AT_TI_symbol_name("Timer_B_initCompareLatchLoadEvent")
	.dwattr $C$DW$149, DW_AT_external
	.dwattr $C$DW$149, DW_AT_TI_begin_file("../driverlib/MSP430FR2xx_4xx/timer_b.c")
	.dwattr $C$DW$149, DW_AT_TI_begin_line(0x13f)
	.dwattr $C$DW$149, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$149, DW_AT_decl_file("../driverlib/MSP430FR2xx_4xx/timer_b.c")
	.dwattr $C$DW$149, DW_AT_decl_line(0x13f)
	.dwattr $C$DW$149, DW_AT_decl_column(0x06)
	.dwattr $C$DW$149, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 323,column 1,is_stmt,address Timer_B_initCompareLatchLoadEvent,isa 0

	.dwfde $C$DW$CIE, Timer_B_initCompareLatchLoadEvent
$C$DW$150	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$150, DW_AT_name("baseAddress")
	.dwattr $C$DW$150, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$150, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$150, DW_AT_location[DW_OP_reg12]

$C$DW$151	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$151, DW_AT_name("compareRegister")
	.dwattr $C$DW$151, DW_AT_TI_symbol_name("compareRegister")
	.dwattr $C$DW$151, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$151, DW_AT_location[DW_OP_reg13]

$C$DW$152	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$152, DW_AT_name("compareLatchLoadEvent")
	.dwattr $C$DW$152, DW_AT_TI_symbol_name("compareLatchLoadEvent")
	.dwattr $C$DW$152, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$152, DW_AT_location[DW_OP_reg14]


;*****************************************************************************
;* FUNCTION NAME: Timer_B_initCompareLatchLoadEvent                          *
;*                                                                           *
;*   Regs Modified     : SP,SR,r13,r15                                       *
;*   Regs Used         : SP,SR,r12,r13,r14,r15                               *
;*   Local Frame Size  : 0 Args + 6 Auto + 0 Save = 6 byte                   *
;*****************************************************************************
Timer_B_initCompareLatchLoadEvent:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
        SUB.W     #6,SP                 ; [] 
	.dwcfi	cfa_offset, 8
$C$DW$153	.dwtag  DW_TAG_variable
	.dwattr $C$DW$153, DW_AT_name("baseAddress")
	.dwattr $C$DW$153, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$153, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$153, DW_AT_location[DW_OP_breg1 0]

$C$DW$154	.dwtag  DW_TAG_variable
	.dwattr $C$DW$154, DW_AT_name("compareRegister")
	.dwattr $C$DW$154, DW_AT_TI_symbol_name("compareRegister")
	.dwattr $C$DW$154, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$154, DW_AT_location[DW_OP_breg1 2]

$C$DW$155	.dwtag  DW_TAG_variable
	.dwattr $C$DW$155, DW_AT_name("compareLatchLoadEvent")
	.dwattr $C$DW$155, DW_AT_TI_symbol_name("compareLatchLoadEvent")
	.dwattr $C$DW$155, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$155, DW_AT_location[DW_OP_breg1 4]

        MOV.W     r14,4(SP)             ; [] |323| 
        MOV.W     r13,2(SP)             ; [] |323| 
        MOV.W     r12,0(SP)             ; [] |323| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 324,column 2,is_stmt,isa 0
        ADD.W     0(SP),r13             ; [] |324| 
        AND.W     #63999,0(r13)         ; [] |324| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 325,column 2,is_stmt,isa 0
        MOV.W     2(SP),r15             ; [] |325| 
        ADD.W     0(SP),r15             ; [] |325| 
        OR.W      4(SP),0(r15)          ; [] |325| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 326,column 1,is_stmt,isa 0
        ADD.W     #6,SP                 ; [] 
	.dwcfi	cfa_offset, 2
$C$DW$156	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$156, DW_AT_low_pc(0x00)
	.dwattr $C$DW$156, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$149, DW_AT_TI_end_file("../driverlib/MSP430FR2xx_4xx/timer_b.c")
	.dwattr $C$DW$149, DW_AT_TI_end_line(0x146)
	.dwattr $C$DW$149, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$149

	.sect	".text:Timer_B_getCounterValue"
	.clink
	.global	Timer_B_getCounterValue

$C$DW$157	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$157, DW_AT_name("Timer_B_getCounterValue")
	.dwattr $C$DW$157, DW_AT_low_pc(Timer_B_getCounterValue)
	.dwattr $C$DW$157, DW_AT_high_pc(0x00)
	.dwattr $C$DW$157, DW_AT_TI_symbol_name("Timer_B_getCounterValue")
	.dwattr $C$DW$157, DW_AT_external
	.dwattr $C$DW$157, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$157, DW_AT_TI_begin_file("../driverlib/MSP430FR2xx_4xx/timer_b.c")
	.dwattr $C$DW$157, DW_AT_TI_begin_line(0x148)
	.dwattr $C$DW$157, DW_AT_TI_begin_column(0x0a)
	.dwattr $C$DW$157, DW_AT_decl_file("../driverlib/MSP430FR2xx_4xx/timer_b.c")
	.dwattr $C$DW$157, DW_AT_decl_line(0x148)
	.dwattr $C$DW$157, DW_AT_decl_column(0x0a)
	.dwattr $C$DW$157, DW_AT_TI_max_frame_size(0x0a)
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 329,column 1,is_stmt,address Timer_B_getCounterValue,isa 0

	.dwfde $C$DW$CIE, Timer_B_getCounterValue
$C$DW$158	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$158, DW_AT_name("baseAddress")
	.dwattr $C$DW$158, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$158, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$158, DW_AT_location[DW_OP_reg12]


;*****************************************************************************
;* FUNCTION NAME: Timer_B_getCounterValue                                    *
;*                                                                           *
;*   Regs Modified     : SP,SR,r12,r15                                       *
;*   Regs Used         : SP,SR,r12,r15                                       *
;*   Local Frame Size  : 0 Args + 8 Auto + 0 Save = 8 byte                   *
;*****************************************************************************
Timer_B_getCounterValue:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
        SUB.W     #8,SP                 ; [] 
	.dwcfi	cfa_offset, 10
$C$DW$159	.dwtag  DW_TAG_variable
	.dwattr $C$DW$159, DW_AT_name("baseAddress")
	.dwattr $C$DW$159, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$159, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$159, DW_AT_location[DW_OP_breg1 0]

$C$DW$160	.dwtag  DW_TAG_variable
	.dwattr $C$DW$160, DW_AT_name("voteOne")
	.dwattr $C$DW$160, DW_AT_TI_symbol_name("voteOne")
	.dwattr $C$DW$160, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$160, DW_AT_location[DW_OP_breg1 2]

$C$DW$161	.dwtag  DW_TAG_variable
	.dwattr $C$DW$161, DW_AT_name("voteTwo")
	.dwattr $C$DW$161, DW_AT_TI_symbol_name("voteTwo")
	.dwattr $C$DW$161, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$161, DW_AT_location[DW_OP_breg1 4]

$C$DW$162	.dwtag  DW_TAG_variable
	.dwattr $C$DW$162, DW_AT_name("res")
	.dwattr $C$DW$162, DW_AT_TI_symbol_name("res")
	.dwattr $C$DW$162, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$162, DW_AT_location[DW_OP_breg1 6]

        MOV.W     r12,0(SP)             ; [] |329| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 332,column 5,is_stmt,isa 0
        MOV.W     16(r12),4(SP)         ; [] |332| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP $C$L12
;*
;*   Loop source line                : 334
;*   Loop closing brace source line  : 347
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
$C$L12:    
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 336,column 9,is_stmt,isa 0
        MOV.W     4(SP),2(SP)           ; [] |336| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 337,column 9,is_stmt,isa 0
        MOV.W     16(r12),4(SP)         ; [] |337| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 339,column 3,is_stmt,isa 0
        CMP.W     4(SP),2(SP)           ; [] |339| 
        JHS       $C$L13                ; [] |339| 
                                          ; [] |339| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 340,column 4,is_stmt,isa 0
        MOV.W     4(SP),r15             ; [] |340| 
        SUB.W     2(SP),r15             ; [] |340| 
        MOV.W     r15,6(SP)             ; [] |340| 
        JMP       $C$L15                ; [] 
                                          ; [] 
;* --------------------------------------------------------------------------*
$C$L13:    
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 341,column 10,is_stmt,isa 0
        CMP.W     2(SP),4(SP)           ; [] |341| 
        JHS       $C$L14                ; [] |341| 
                                          ; [] |341| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 342,column 4,is_stmt,isa 0
        MOV.W     2(SP),r15             ; [] |342| 
        SUB.W     4(SP),r15             ; [] |342| 
        MOV.W     r15,6(SP)             ; [] |342| 
        JMP       $C$L15                ; [] 
                                          ; [] 
;* --------------------------------------------------------------------------*
$C$L14:    
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 344,column 4,is_stmt,isa 0
        MOV.W     #0,6(SP)              ; [] |344| 
;* --------------------------------------------------------------------------*
$C$L15:    
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 347,column 15,is_stmt,isa 0
        CMP.W     #51,6(SP)             ; [] |347| 
        JHS       $C$L12                ; [] |347| 
                                          ; [] |347| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 349,column 5,is_stmt,isa 0
        MOV.W     4(SP),r12             ; [] |349| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 350,column 1,is_stmt,isa 0
        ADD.W     #8,SP                 ; [] 
	.dwcfi	cfa_offset, 2
$C$DW$163	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$163, DW_AT_low_pc(0x00)
	.dwattr $C$DW$163, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$157, DW_AT_TI_end_file("../driverlib/MSP430FR2xx_4xx/timer_b.c")
	.dwattr $C$DW$157, DW_AT_TI_end_line(0x15e)
	.dwattr $C$DW$157, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$157

	.sect	".text:Timer_B_setOutputMode"
	.clink
	.global	Timer_B_setOutputMode

$C$DW$164	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$164, DW_AT_name("Timer_B_setOutputMode")
	.dwattr $C$DW$164, DW_AT_low_pc(Timer_B_setOutputMode)
	.dwattr $C$DW$164, DW_AT_high_pc(0x00)
	.dwattr $C$DW$164, DW_AT_TI_symbol_name("Timer_B_setOutputMode")
	.dwattr $C$DW$164, DW_AT_external
	.dwattr $C$DW$164, DW_AT_TI_begin_file("../driverlib/MSP430FR2xx_4xx/timer_b.c")
	.dwattr $C$DW$164, DW_AT_TI_begin_line(0x160)
	.dwattr $C$DW$164, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$164, DW_AT_decl_file("../driverlib/MSP430FR2xx_4xx/timer_b.c")
	.dwattr $C$DW$164, DW_AT_decl_line(0x160)
	.dwattr $C$DW$164, DW_AT_decl_column(0x06)
	.dwattr $C$DW$164, DW_AT_TI_max_frame_size(0x0a)
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 355,column 1,is_stmt,address Timer_B_setOutputMode,isa 0

	.dwfde $C$DW$CIE, Timer_B_setOutputMode
$C$DW$165	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$165, DW_AT_name("baseAddress")
	.dwattr $C$DW$165, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$165, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$165, DW_AT_location[DW_OP_reg12]

$C$DW$166	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$166, DW_AT_name("compareRegister")
	.dwattr $C$DW$166, DW_AT_TI_symbol_name("compareRegister")
	.dwattr $C$DW$166, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$166, DW_AT_location[DW_OP_reg13]

$C$DW$167	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$167, DW_AT_name("compareOutputMode")
	.dwattr $C$DW$167, DW_AT_TI_symbol_name("compareOutputMode")
	.dwattr $C$DW$167, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$167, DW_AT_location[DW_OP_reg14]


;*****************************************************************************
;* FUNCTION NAME: Timer_B_setOutputMode                                      *
;*                                                                           *
;*   Regs Modified     : SP,SR,r13,r15                                       *
;*   Regs Used         : SP,SR,r12,r13,r14,r15                               *
;*   Local Frame Size  : 0 Args + 8 Auto + 0 Save = 8 byte                   *
;*****************************************************************************
Timer_B_setOutputMode:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
        SUB.W     #8,SP                 ; [] 
	.dwcfi	cfa_offset, 10
$C$DW$168	.dwtag  DW_TAG_variable
	.dwattr $C$DW$168, DW_AT_name("baseAddress")
	.dwattr $C$DW$168, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$168, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$168, DW_AT_location[DW_OP_breg1 0]

$C$DW$169	.dwtag  DW_TAG_variable
	.dwattr $C$DW$169, DW_AT_name("compareRegister")
	.dwattr $C$DW$169, DW_AT_TI_symbol_name("compareRegister")
	.dwattr $C$DW$169, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$169, DW_AT_location[DW_OP_breg1 2]

$C$DW$170	.dwtag  DW_TAG_variable
	.dwattr $C$DW$170, DW_AT_name("compareOutputMode")
	.dwattr $C$DW$170, DW_AT_TI_symbol_name("compareOutputMode")
	.dwattr $C$DW$170, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$170, DW_AT_location[DW_OP_breg1 4]

$C$DW$171	.dwtag  DW_TAG_variable
	.dwattr $C$DW$171, DW_AT_name("temp")
	.dwattr $C$DW$171, DW_AT_TI_symbol_name("temp")
	.dwattr $C$DW$171, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$171, DW_AT_location[DW_OP_breg1 6]

        MOV.W     r14,4(SP)             ; [] |355| 
        MOV.W     r13,2(SP)             ; [] |355| 
        MOV.W     r12,0(SP)             ; [] |355| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 356,column 19,is_stmt,isa 0
        MOV.W     r13,r15               ; [] 
        ADD.W     0(SP),r15             ; [] |356| 
        MOV.W     @r15,6(SP)            ; [] |356| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 357,column 5,is_stmt,isa 0
        MOV.W     #65311,r15            ; [] |357| 
        AND.W     6(SP),r15             ; [] |357| 
        OR.W      4(SP),r15             ; [] |357| 
        ADD.W     0(SP),r13             ; [] |357| 
        MOV.W     r15,0(r13)            ; [] |357| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 358,column 1,is_stmt,isa 0
        ADD.W     #8,SP                 ; [] 
	.dwcfi	cfa_offset, 2
$C$DW$172	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$172, DW_AT_low_pc(0x00)
	.dwattr $C$DW$172, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$164, DW_AT_TI_end_file("../driverlib/MSP430FR2xx_4xx/timer_b.c")
	.dwattr $C$DW$164, DW_AT_TI_end_line(0x166)
	.dwattr $C$DW$164, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$164

	.sect	".text:Timer_B_selectOutputHighImpedanceTrigger"
	.clink
	.global	Timer_B_selectOutputHighImpedanceTrigger

$C$DW$173	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$173, DW_AT_name("Timer_B_selectOutputHighImpedanceTrigger")
	.dwattr $C$DW$173, DW_AT_low_pc(Timer_B_selectOutputHighImpedanceTrigger)
	.dwattr $C$DW$173, DW_AT_high_pc(0x00)
	.dwattr $C$DW$173, DW_AT_TI_symbol_name("Timer_B_selectOutputHighImpedanceTrigger")
	.dwattr $C$DW$173, DW_AT_external
	.dwattr $C$DW$173, DW_AT_TI_begin_file("../driverlib/MSP430FR2xx_4xx/timer_b.c")
	.dwattr $C$DW$173, DW_AT_TI_begin_line(0x168)
	.dwattr $C$DW$173, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$173, DW_AT_decl_file("../driverlib/MSP430FR2xx_4xx/timer_b.c")
	.dwattr $C$DW$173, DW_AT_decl_line(0x168)
	.dwattr $C$DW$173, DW_AT_decl_column(0x06)
	.dwattr $C$DW$173, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 362,column 1,is_stmt,address Timer_B_selectOutputHighImpedanceTrigger,isa 0

	.dwfde $C$DW$CIE, Timer_B_selectOutputHighImpedanceTrigger
$C$DW$174	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$174, DW_AT_name("baseAddress")
	.dwattr $C$DW$174, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$174, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$174, DW_AT_location[DW_OP_reg12]

$C$DW$175	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$175, DW_AT_name("triggerSelect")
	.dwattr $C$DW$175, DW_AT_TI_symbol_name("triggerSelect")
	.dwattr $C$DW$175, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$175, DW_AT_location[DW_OP_reg13]


;*****************************************************************************
;* FUNCTION NAME: Timer_B_selectOutputHighImpedanceTrigger                   *
;*                                                                           *
;*   Regs Modified     : SP,SR,r12                                           *
;*   Regs Used         : SP,SR,r12,r13                                       *
;*   Local Frame Size  : 0 Args + 4 Auto + 0 Save = 4 byte                   *
;*****************************************************************************
Timer_B_selectOutputHighImpedanceTrigger:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
        SUB.W     #4,SP                 ; [] 
	.dwcfi	cfa_offset, 6
$C$DW$176	.dwtag  DW_TAG_variable
	.dwattr $C$DW$176, DW_AT_name("baseAddress")
	.dwattr $C$DW$176, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$176, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$176, DW_AT_location[DW_OP_breg1 0]

$C$DW$177	.dwtag  DW_TAG_variable
	.dwattr $C$DW$177, DW_AT_name("triggerSelect")
	.dwattr $C$DW$177, DW_AT_TI_symbol_name("triggerSelect")
	.dwattr $C$DW$177, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$177, DW_AT_location[DW_OP_breg1 2]

        MOV.B     r13,2(SP)             ; [] |362| 
        MOV.W     r12,0(SP)             ; [] |362| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 364,column 5,is_stmt,isa 0
        CMP.W     #896,0(SP)            ; [] |364| 
        JNE       $C$L16                ; [] |364| 
                                          ; [] |364| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 365,column 9,is_stmt,isa 0
        AND.W     #32767,&0x164         ; [] |365| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 366,column 9,is_stmt,isa 0
        MOV.B     2(SP),r12             ; [] |366| 
$C$DW$178	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$178, DW_AT_low_pc(0x00)
	.dwattr $C$DW$178, DW_AT_name("__mspabi_slli_15")
	.dwattr $C$DW$178, DW_AT_TI_call

        CALL      #__mspabi_slli_15     ; [] |366| 
                                          ; [] |366| 
        OR.W      r12,&0x164            ; [] |366| 
;* --------------------------------------------------------------------------*
$C$L16:    
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 370,column 5,is_stmt,isa 0
        CMP.W     #960,0(SP)            ; [] |370| 
        JNE       $C$L17                ; [] |370| 
                                          ; [] |370| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 371,column 9,is_stmt,isa 0
        AND.W     #49151,&0x164         ; [] |371| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 372,column 9,is_stmt,isa 0
        MOV.B     2(SP),r12             ; [] |372| 
$C$DW$179	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$179, DW_AT_low_pc(0x00)
	.dwattr $C$DW$179, DW_AT_name("__mspabi_slli_14")
	.dwattr $C$DW$179, DW_AT_TI_call

        CALL      #__mspabi_slli_14     ; [] |372| 
                                          ; [] |372| 
        OR.W      r12,&0x164            ; [] |372| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 375,column 1,is_stmt,isa 0
;* --------------------------------------------------------------------------*
$C$L17:    
        ADD.W     #4,SP                 ; [] 
	.dwcfi	cfa_offset, 2
$C$DW$180	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$180, DW_AT_low_pc(0x00)
	.dwattr $C$DW$180, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$173, DW_AT_TI_end_file("../driverlib/MSP430FR2xx_4xx/timer_b.c")
	.dwattr $C$DW$173, DW_AT_TI_end_line(0x177)
	.dwattr $C$DW$173, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$173

	.sect	".text:Timer_B_remapPins"
	.clink
	.global	Timer_B_remapPins

$C$DW$181	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$181, DW_AT_name("Timer_B_remapPins")
	.dwattr $C$DW$181, DW_AT_low_pc(Timer_B_remapPins)
	.dwattr $C$DW$181, DW_AT_high_pc(0x00)
	.dwattr $C$DW$181, DW_AT_TI_symbol_name("Timer_B_remapPins")
	.dwattr $C$DW$181, DW_AT_external
	.dwattr $C$DW$181, DW_AT_TI_begin_file("../driverlib/MSP430FR2xx_4xx/timer_b.c")
	.dwattr $C$DW$181, DW_AT_TI_begin_line(0x179)
	.dwattr $C$DW$181, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$181, DW_AT_decl_file("../driverlib/MSP430FR2xx_4xx/timer_b.c")
	.dwattr $C$DW$181, DW_AT_decl_line(0x179)
	.dwattr $C$DW$181, DW_AT_decl_column(0x06)
	.dwattr $C$DW$181, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 378,column 1,is_stmt,address Timer_B_remapPins,isa 0

	.dwfde $C$DW$CIE, Timer_B_remapPins
$C$DW$182	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$182, DW_AT_name("baseAddress")
	.dwattr $C$DW$182, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$182, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$182, DW_AT_location[DW_OP_reg12]

$C$DW$183	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$183, DW_AT_name("pinsSelect")
	.dwattr $C$DW$183, DW_AT_TI_symbol_name("pinsSelect")
	.dwattr $C$DW$183, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$183, DW_AT_location[DW_OP_reg13]


;*****************************************************************************
;* FUNCTION NAME: Timer_B_remapPins                                          *
;*                                                                           *
;*   Regs Modified     : SP,SR                                               *
;*   Regs Used         : SP,SR,r12,r13                                       *
;*   Local Frame Size  : 0 Args + 4 Auto + 0 Save = 4 byte                   *
;*****************************************************************************
Timer_B_remapPins:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
        SUB.W     #4,SP                 ; [] 
	.dwcfi	cfa_offset, 6
$C$DW$184	.dwtag  DW_TAG_variable
	.dwattr $C$DW$184, DW_AT_name("baseAddress")
	.dwattr $C$DW$184, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$184, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$184, DW_AT_location[DW_OP_breg1 0]

$C$DW$185	.dwtag  DW_TAG_variable
	.dwattr $C$DW$185, DW_AT_name("pinsSelect")
	.dwattr $C$DW$185, DW_AT_TI_symbol_name("pinsSelect")
	.dwattr $C$DW$185, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$185, DW_AT_location[DW_OP_breg1 2]

        MOV.B     r13,2(SP)             ; [] |378| 
        MOV.W     r12,0(SP)             ; [] |378| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/timer_b.c",line 383,column 1,is_stmt,isa 0
        ADD.W     #4,SP                 ; [] 
	.dwcfi	cfa_offset, 2
$C$DW$186	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$186, DW_AT_low_pc(0x00)
	.dwattr $C$DW$186, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$181, DW_AT_TI_end_file("../driverlib/MSP430FR2xx_4xx/timer_b.c")
	.dwattr $C$DW$181, DW_AT_TI_end_line(0x17f)
	.dwattr $C$DW$181, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$181

;*****************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                             *
;*****************************************************************************
	.global	__mspabi_srli_3
	.global	__mspabi_slli_6
	.global	__mspabi_slli_15
	.global	__mspabi_slli_14

;******************************************************************************
;* BUILD ATTRIBUTES                                                           *
;******************************************************************************
	.battr "TI", Tag_File, 1, Tag_LPM_INFO(1)
	.battr "TI", Tag_File, 1, Tag_PORTS_INIT_INFO("012345678901ABCDEFGHIJ01111110000011100000000000000000000000000000")
	.battr "TI", Tag_File, 1, Tag_LEA_INFO(1)
	.battr "TI", Tag_File, 1, Tag_HW_MPY32_INFO(2)
	.battr "TI", Tag_File, 1, Tag_HW_MPY_ISR_INFO(1)
	.battr "TI", Tag_File, 1, Tag_HW_MPY_INLINE_INFO(1)
	.battr "mspabi", Tag_File, 1, Tag_enum_size(3)

;******************************************************************************
;* TYPE INFORMATION                                                           *
;******************************************************************************

$C$DW$T$21	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x10)
$C$DW$187	.dwtag  DW_TAG_member
	.dwattr $C$DW$187, DW_AT_type(*$C$DW$T$14)
	.dwattr $C$DW$187, DW_AT_name("__max_align1")
	.dwattr $C$DW$187, DW_AT_TI_symbol_name("__max_align1")
	.dwattr $C$DW$187, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$187, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$187, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$187, DW_AT_decl_line(0x7b)
	.dwattr $C$DW$187, DW_AT_decl_column(0x0c)

$C$DW$188	.dwtag  DW_TAG_member
	.dwattr $C$DW$188, DW_AT_type(*$C$DW$T$18)
	.dwattr $C$DW$188, DW_AT_name("__max_align2")
	.dwattr $C$DW$188, DW_AT_TI_symbol_name("__max_align2")
	.dwattr $C$DW$188, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$188, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$188, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$188, DW_AT_decl_line(0x7c)
	.dwattr $C$DW$188, DW_AT_decl_column(0x0e)

	.dwattr $C$DW$T$21, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$21, DW_AT_decl_line(0x7a)
	.dwattr $C$DW$T$21, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$21

$C$DW$T$31	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$31, DW_AT_name("__max_align_t")
	.dwattr $C$DW$T$31, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$31, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$31, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$31, DW_AT_decl_line(0x7d)
	.dwattr $C$DW$T$31, DW_AT_decl_column(0x03)


$C$DW$T$24	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$24, DW_AT_name("Timer_B_initCaptureModeParam")
	.dwattr $C$DW$T$24, DW_AT_byte_size(0x0c)
$C$DW$189	.dwtag  DW_TAG_member
	.dwattr $C$DW$189, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$189, DW_AT_name("captureRegister")
	.dwattr $C$DW$189, DW_AT_TI_symbol_name("captureRegister")
	.dwattr $C$DW$189, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$189, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$189, DW_AT_decl_file("..\driverlib\MSP430FR2xx_4xx\timer_b.h")
	.dwattr $C$DW$189, DW_AT_decl_line(0xaf)
	.dwattr $C$DW$189, DW_AT_decl_column(0x0e)

$C$DW$190	.dwtag  DW_TAG_member
	.dwattr $C$DW$190, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$190, DW_AT_name("captureMode")
	.dwattr $C$DW$190, DW_AT_TI_symbol_name("captureMode")
	.dwattr $C$DW$190, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$190, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$190, DW_AT_decl_file("..\driverlib\MSP430FR2xx_4xx\timer_b.h")
	.dwattr $C$DW$190, DW_AT_decl_line(0xb6)
	.dwattr $C$DW$190, DW_AT_decl_column(0x0e)

$C$DW$191	.dwtag  DW_TAG_member
	.dwattr $C$DW$191, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$191, DW_AT_name("captureInputSelect")
	.dwattr $C$DW$191, DW_AT_TI_symbol_name("captureInputSelect")
	.dwattr $C$DW$191, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$191, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$191, DW_AT_decl_file("..\driverlib\MSP430FR2xx_4xx\timer_b.h")
	.dwattr $C$DW$191, DW_AT_decl_line(0xbd)
	.dwattr $C$DW$191, DW_AT_decl_column(0x0e)

$C$DW$192	.dwtag  DW_TAG_member
	.dwattr $C$DW$192, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$192, DW_AT_name("synchronizeCaptureSource")
	.dwattr $C$DW$192, DW_AT_TI_symbol_name("synchronizeCaptureSource")
	.dwattr $C$DW$192, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$192, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$192, DW_AT_decl_file("..\driverlib\MSP430FR2xx_4xx\timer_b.h")
	.dwattr $C$DW$192, DW_AT_decl_line(0xc2)
	.dwattr $C$DW$192, DW_AT_decl_column(0x0e)

$C$DW$193	.dwtag  DW_TAG_member
	.dwattr $C$DW$193, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$193, DW_AT_name("captureInterruptEnable")
	.dwattr $C$DW$193, DW_AT_TI_symbol_name("captureInterruptEnable")
	.dwattr $C$DW$193, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$193, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$193, DW_AT_decl_file("..\driverlib\MSP430FR2xx_4xx\timer_b.h")
	.dwattr $C$DW$193, DW_AT_decl_line(0xc7)
	.dwattr $C$DW$193, DW_AT_decl_column(0x0e)

$C$DW$194	.dwtag  DW_TAG_member
	.dwattr $C$DW$194, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$194, DW_AT_name("captureOutputMode")
	.dwattr $C$DW$194, DW_AT_TI_symbol_name("captureOutputMode")
	.dwattr $C$DW$194, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$194, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$194, DW_AT_decl_file("..\driverlib\MSP430FR2xx_4xx\timer_b.h")
	.dwattr $C$DW$194, DW_AT_decl_line(0xd2)
	.dwattr $C$DW$194, DW_AT_decl_column(0x0e)

	.dwattr $C$DW$T$24, DW_AT_decl_file("..\driverlib\MSP430FR2xx_4xx\timer_b.h")
	.dwattr $C$DW$T$24, DW_AT_decl_line(0xa4)
	.dwattr $C$DW$T$24, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$24

$C$DW$T$32	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$32, DW_AT_name("Timer_B_initCaptureModeParam")
	.dwattr $C$DW$T$32, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$32, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$32, DW_AT_decl_file("..\driverlib\MSP430FR2xx_4xx\timer_b.h")
	.dwattr $C$DW$T$32, DW_AT_decl_line(0xd3)
	.dwattr $C$DW$T$32, DW_AT_decl_column(0x03)

$C$DW$T$33	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$33, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$T$33, DW_AT_address_class(0x10)


$C$DW$T$25	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$25, DW_AT_name("Timer_B_initCompareModeParam")
	.dwattr $C$DW$T$25, DW_AT_byte_size(0x08)
$C$DW$195	.dwtag  DW_TAG_member
	.dwattr $C$DW$195, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$195, DW_AT_name("compareRegister")
	.dwattr $C$DW$195, DW_AT_TI_symbol_name("compareRegister")
	.dwattr $C$DW$195, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$195, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$195, DW_AT_decl_file("..\driverlib\MSP430FR2xx_4xx\timer_b.h")
	.dwattr $C$DW$195, DW_AT_decl_line(0x155)
	.dwattr $C$DW$195, DW_AT_decl_column(0x0e)

$C$DW$196	.dwtag  DW_TAG_member
	.dwattr $C$DW$196, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$196, DW_AT_name("compareInterruptEnable")
	.dwattr $C$DW$196, DW_AT_TI_symbol_name("compareInterruptEnable")
	.dwattr $C$DW$196, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$196, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$196, DW_AT_decl_file("..\driverlib\MSP430FR2xx_4xx\timer_b.h")
	.dwattr $C$DW$196, DW_AT_decl_line(0x15a)
	.dwattr $C$DW$196, DW_AT_decl_column(0x0e)

$C$DW$197	.dwtag  DW_TAG_member
	.dwattr $C$DW$197, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$197, DW_AT_name("compareOutputMode")
	.dwattr $C$DW$197, DW_AT_TI_symbol_name("compareOutputMode")
	.dwattr $C$DW$197, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$197, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$197, DW_AT_decl_file("..\driverlib\MSP430FR2xx_4xx\timer_b.h")
	.dwattr $C$DW$197, DW_AT_decl_line(0x165)
	.dwattr $C$DW$197, DW_AT_decl_column(0x0e)

$C$DW$198	.dwtag  DW_TAG_member
	.dwattr $C$DW$198, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$198, DW_AT_name("compareValue")
	.dwattr $C$DW$198, DW_AT_TI_symbol_name("compareValue")
	.dwattr $C$DW$198, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$198, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$198, DW_AT_decl_file("..\driverlib\MSP430FR2xx_4xx\timer_b.h")
	.dwattr $C$DW$198, DW_AT_decl_line(0x167)
	.dwattr $C$DW$198, DW_AT_decl_column(0x0e)

	.dwattr $C$DW$T$25, DW_AT_decl_file("..\driverlib\MSP430FR2xx_4xx\timer_b.h")
	.dwattr $C$DW$T$25, DW_AT_decl_line(0x14a)
	.dwattr $C$DW$T$25, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$25

$C$DW$T$34	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$34, DW_AT_name("Timer_B_initCompareModeParam")
	.dwattr $C$DW$T$34, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$T$34, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$34, DW_AT_decl_file("..\driverlib\MSP430FR2xx_4xx\timer_b.h")
	.dwattr $C$DW$T$34, DW_AT_decl_line(0x168)
	.dwattr $C$DW$T$34, DW_AT_decl_column(0x03)

$C$DW$T$35	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$T$35, DW_AT_address_class(0x10)


$C$DW$T$27	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$27, DW_AT_name("Timer_B_initContinuousModeParam")
	.dwattr $C$DW$T$27, DW_AT_byte_size(0x0a)
$C$DW$199	.dwtag  DW_TAG_member
	.dwattr $C$DW$199, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$199, DW_AT_name("clockSource")
	.dwattr $C$DW$199, DW_AT_TI_symbol_name("clockSource")
	.dwattr $C$DW$199, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$199, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$199, DW_AT_decl_file("..\driverlib\MSP430FR2xx_4xx\timer_b.h")
	.dwattr $C$DW$199, DW_AT_decl_line(0xe2)
	.dwattr $C$DW$199, DW_AT_decl_column(0x0e)

$C$DW$200	.dwtag  DW_TAG_member
	.dwattr $C$DW$200, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$200, DW_AT_name("clockSourceDivider")
	.dwattr $C$DW$200, DW_AT_TI_symbol_name("clockSourceDivider")
	.dwattr $C$DW$200, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$200, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$200, DW_AT_decl_file("..\driverlib\MSP430FR2xx_4xx\timer_b.h")
	.dwattr $C$DW$200, DW_AT_decl_line(0xf9)
	.dwattr $C$DW$200, DW_AT_decl_column(0x0e)

$C$DW$201	.dwtag  DW_TAG_member
	.dwattr $C$DW$201, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$201, DW_AT_name("timerInterruptEnable_TBIE")
	.dwattr $C$DW$201, DW_AT_TI_symbol_name("timerInterruptEnable_TBIE")
	.dwattr $C$DW$201, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$201, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$201, DW_AT_decl_file("..\driverlib\MSP430FR2xx_4xx\timer_b.h")
	.dwattr $C$DW$201, DW_AT_decl_line(0xfe)
	.dwattr $C$DW$201, DW_AT_decl_column(0x0e)

$C$DW$202	.dwtag  DW_TAG_member
	.dwattr $C$DW$202, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$202, DW_AT_name("timerClear")
	.dwattr $C$DW$202, DW_AT_TI_symbol_name("timerClear")
	.dwattr $C$DW$202, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$202, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$202, DW_AT_decl_file("..\driverlib\MSP430FR2xx_4xx\timer_b.h")
	.dwattr $C$DW$202, DW_AT_decl_line(0x104)
	.dwattr $C$DW$202, DW_AT_decl_column(0x0e)

$C$DW$203	.dwtag  DW_TAG_member
	.dwattr $C$DW$203, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$203, DW_AT_name("startTimer")
	.dwattr $C$DW$203, DW_AT_TI_symbol_name("startTimer")
	.dwattr $C$DW$203, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$203, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$203, DW_AT_decl_file("..\driverlib\MSP430FR2xx_4xx\timer_b.h")
	.dwattr $C$DW$203, DW_AT_decl_line(0x106)
	.dwattr $C$DW$203, DW_AT_decl_column(0x0a)

	.dwattr $C$DW$T$27, DW_AT_decl_file("..\driverlib\MSP430FR2xx_4xx\timer_b.h")
	.dwattr $C$DW$T$27, DW_AT_decl_line(0xdb)
	.dwattr $C$DW$T$27, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$27

$C$DW$T$36	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$36, DW_AT_name("Timer_B_initContinuousModeParam")
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$36, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$36, DW_AT_decl_file("..\driverlib\MSP430FR2xx_4xx\timer_b.h")
	.dwattr $C$DW$T$36, DW_AT_decl_line(0x107)
	.dwattr $C$DW$T$36, DW_AT_decl_column(0x03)

$C$DW$T$37	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$37, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$T$37, DW_AT_address_class(0x10)


$C$DW$T$28	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$28, DW_AT_name("Timer_B_initUpDownModeParam")
	.dwattr $C$DW$T$28, DW_AT_byte_size(0x0e)
$C$DW$204	.dwtag  DW_TAG_member
	.dwattr $C$DW$204, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$204, DW_AT_name("clockSource")
	.dwattr $C$DW$204, DW_AT_TI_symbol_name("clockSource")
	.dwattr $C$DW$204, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$204, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$204, DW_AT_decl_file("..\driverlib\MSP430FR2xx_4xx\timer_b.h")
	.dwattr $C$DW$204, DW_AT_decl_line(0x116)
	.dwattr $C$DW$204, DW_AT_decl_column(0x0e)

$C$DW$205	.dwtag  DW_TAG_member
	.dwattr $C$DW$205, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$205, DW_AT_name("clockSourceDivider")
	.dwattr $C$DW$205, DW_AT_TI_symbol_name("clockSourceDivider")
	.dwattr $C$DW$205, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$205, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$205, DW_AT_decl_file("..\driverlib\MSP430FR2xx_4xx\timer_b.h")
	.dwattr $C$DW$205, DW_AT_decl_line(0x12d)
	.dwattr $C$DW$205, DW_AT_decl_column(0x0e)

$C$DW$206	.dwtag  DW_TAG_member
	.dwattr $C$DW$206, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$206, DW_AT_name("timerPeriod")
	.dwattr $C$DW$206, DW_AT_TI_symbol_name("timerPeriod")
	.dwattr $C$DW$206, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$206, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$206, DW_AT_decl_file("..\driverlib\MSP430FR2xx_4xx\timer_b.h")
	.dwattr $C$DW$206, DW_AT_decl_line(0x12f)
	.dwattr $C$DW$206, DW_AT_decl_column(0x0e)

$C$DW$207	.dwtag  DW_TAG_member
	.dwattr $C$DW$207, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$207, DW_AT_name("timerInterruptEnable_TBIE")
	.dwattr $C$DW$207, DW_AT_TI_symbol_name("timerInterruptEnable_TBIE")
	.dwattr $C$DW$207, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$207, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$207, DW_AT_decl_file("..\driverlib\MSP430FR2xx_4xx\timer_b.h")
	.dwattr $C$DW$207, DW_AT_decl_line(0x134)
	.dwattr $C$DW$207, DW_AT_decl_column(0x0e)

$C$DW$208	.dwtag  DW_TAG_member
	.dwattr $C$DW$208, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$208, DW_AT_name("captureCompareInterruptEnable_CCR0_CCIE")
	.dwattr $C$DW$208, DW_AT_TI_symbol_name("captureCompareInterruptEnable_CCR0_CCIE")
	.dwattr $C$DW$208, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$208, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$208, DW_AT_decl_file("..\driverlib\MSP430FR2xx_4xx\timer_b.h")
	.dwattr $C$DW$208, DW_AT_decl_line(0x139)
	.dwattr $C$DW$208, DW_AT_decl_column(0x0e)

$C$DW$209	.dwtag  DW_TAG_member
	.dwattr $C$DW$209, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$209, DW_AT_name("timerClear")
	.dwattr $C$DW$209, DW_AT_TI_symbol_name("timerClear")
	.dwattr $C$DW$209, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$209, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$209, DW_AT_decl_file("..\driverlib\MSP430FR2xx_4xx\timer_b.h")
	.dwattr $C$DW$209, DW_AT_decl_line(0x13f)
	.dwattr $C$DW$209, DW_AT_decl_column(0x0e)

$C$DW$210	.dwtag  DW_TAG_member
	.dwattr $C$DW$210, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$210, DW_AT_name("startTimer")
	.dwattr $C$DW$210, DW_AT_TI_symbol_name("startTimer")
	.dwattr $C$DW$210, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$210, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$210, DW_AT_decl_file("..\driverlib\MSP430FR2xx_4xx\timer_b.h")
	.dwattr $C$DW$210, DW_AT_decl_line(0x141)
	.dwattr $C$DW$210, DW_AT_decl_column(0x0a)

	.dwattr $C$DW$T$28, DW_AT_decl_file("..\driverlib\MSP430FR2xx_4xx\timer_b.h")
	.dwattr $C$DW$T$28, DW_AT_decl_line(0x10f)
	.dwattr $C$DW$T$28, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$28

$C$DW$T$38	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$38, DW_AT_name("Timer_B_initUpDownModeParam")
	.dwattr $C$DW$T$38, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$T$38, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$38, DW_AT_decl_file("..\driverlib\MSP430FR2xx_4xx\timer_b.h")
	.dwattr $C$DW$T$38, DW_AT_decl_line(0x142)
	.dwattr $C$DW$T$38, DW_AT_decl_column(0x03)

$C$DW$T$39	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$39, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$T$39, DW_AT_address_class(0x10)


$C$DW$T$29	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$29, DW_AT_name("Timer_B_initUpModeParam")
	.dwattr $C$DW$T$29, DW_AT_byte_size(0x0e)
$C$DW$211	.dwtag  DW_TAG_member
	.dwattr $C$DW$211, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$211, DW_AT_name("clockSource")
	.dwattr $C$DW$211, DW_AT_TI_symbol_name("clockSource")
	.dwattr $C$DW$211, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$211, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$211, DW_AT_decl_file("..\driverlib\MSP430FR2xx_4xx\timer_b.h")
	.dwattr $C$DW$211, DW_AT_decl_line(0x6f)
	.dwattr $C$DW$211, DW_AT_decl_column(0x0e)

$C$DW$212	.dwtag  DW_TAG_member
	.dwattr $C$DW$212, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$212, DW_AT_name("clockSourceDivider")
	.dwattr $C$DW$212, DW_AT_TI_symbol_name("clockSourceDivider")
	.dwattr $C$DW$212, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$212, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$212, DW_AT_decl_file("..\driverlib\MSP430FR2xx_4xx\timer_b.h")
	.dwattr $C$DW$212, DW_AT_decl_line(0x86)
	.dwattr $C$DW$212, DW_AT_decl_column(0x0e)

$C$DW$213	.dwtag  DW_TAG_member
	.dwattr $C$DW$213, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$213, DW_AT_name("timerPeriod")
	.dwattr $C$DW$213, DW_AT_TI_symbol_name("timerPeriod")
	.dwattr $C$DW$213, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$213, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$213, DW_AT_decl_file("..\driverlib\MSP430FR2xx_4xx\timer_b.h")
	.dwattr $C$DW$213, DW_AT_decl_line(0x89)
	.dwattr $C$DW$213, DW_AT_decl_column(0x0e)

$C$DW$214	.dwtag  DW_TAG_member
	.dwattr $C$DW$214, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$214, DW_AT_name("timerInterruptEnable_TBIE")
	.dwattr $C$DW$214, DW_AT_TI_symbol_name("timerInterruptEnable_TBIE")
	.dwattr $C$DW$214, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$214, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$214, DW_AT_decl_file("..\driverlib\MSP430FR2xx_4xx\timer_b.h")
	.dwattr $C$DW$214, DW_AT_decl_line(0x8e)
	.dwattr $C$DW$214, DW_AT_decl_column(0x0e)

$C$DW$215	.dwtag  DW_TAG_member
	.dwattr $C$DW$215, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$215, DW_AT_name("captureCompareInterruptEnable_CCR0_CCIE")
	.dwattr $C$DW$215, DW_AT_TI_symbol_name("captureCompareInterruptEnable_CCR0_CCIE")
	.dwattr $C$DW$215, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$215, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$215, DW_AT_decl_file("..\driverlib\MSP430FR2xx_4xx\timer_b.h")
	.dwattr $C$DW$215, DW_AT_decl_line(0x93)
	.dwattr $C$DW$215, DW_AT_decl_column(0x0e)

$C$DW$216	.dwtag  DW_TAG_member
	.dwattr $C$DW$216, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$216, DW_AT_name("timerClear")
	.dwattr $C$DW$216, DW_AT_TI_symbol_name("timerClear")
	.dwattr $C$DW$216, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$216, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$216, DW_AT_decl_file("..\driverlib\MSP430FR2xx_4xx\timer_b.h")
	.dwattr $C$DW$216, DW_AT_decl_line(0x99)
	.dwattr $C$DW$216, DW_AT_decl_column(0x0e)

$C$DW$217	.dwtag  DW_TAG_member
	.dwattr $C$DW$217, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$217, DW_AT_name("startTimer")
	.dwattr $C$DW$217, DW_AT_TI_symbol_name("startTimer")
	.dwattr $C$DW$217, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$217, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$217, DW_AT_decl_file("..\driverlib\MSP430FR2xx_4xx\timer_b.h")
	.dwattr $C$DW$217, DW_AT_decl_line(0x9b)
	.dwattr $C$DW$217, DW_AT_decl_column(0x0a)

	.dwattr $C$DW$T$29, DW_AT_decl_file("..\driverlib\MSP430FR2xx_4xx\timer_b.h")
	.dwattr $C$DW$T$29, DW_AT_decl_line(0x68)
	.dwattr $C$DW$T$29, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$29

$C$DW$T$40	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$40, DW_AT_name("Timer_B_initUpModeParam")
	.dwattr $C$DW$T$40, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$40, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$40, DW_AT_decl_file("..\driverlib\MSP430FR2xx_4xx\timer_b.h")
	.dwattr $C$DW$T$40, DW_AT_decl_line(0x9c)
	.dwattr $C$DW$T$40, DW_AT_decl_column(0x03)

$C$DW$T$41	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$41, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$T$41, DW_AT_address_class(0x10)


$C$DW$T$30	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$30, DW_AT_name("Timer_B_outputPWMParam")
	.dwattr $C$DW$T$30, DW_AT_byte_size(0x0c)
$C$DW$218	.dwtag  DW_TAG_member
	.dwattr $C$DW$218, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$218, DW_AT_name("clockSource")
	.dwattr $C$DW$218, DW_AT_TI_symbol_name("clockSource")
	.dwattr $C$DW$218, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$218, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$218, DW_AT_decl_file("..\driverlib\MSP430FR2xx_4xx\timer_b.h")
	.dwattr $C$DW$218, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$218, DW_AT_decl_column(0x0e)

$C$DW$219	.dwtag  DW_TAG_member
	.dwattr $C$DW$219, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$219, DW_AT_name("clockSourceDivider")
	.dwattr $C$DW$219, DW_AT_TI_symbol_name("clockSourceDivider")
	.dwattr $C$DW$219, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$219, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$219, DW_AT_decl_file("..\driverlib\MSP430FR2xx_4xx\timer_b.h")
	.dwattr $C$DW$219, DW_AT_decl_line(0x46)
	.dwattr $C$DW$219, DW_AT_decl_column(0x0e)

$C$DW$220	.dwtag  DW_TAG_member
	.dwattr $C$DW$220, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$220, DW_AT_name("timerPeriod")
	.dwattr $C$DW$220, DW_AT_TI_symbol_name("timerPeriod")
	.dwattr $C$DW$220, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$220, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$220, DW_AT_decl_file("..\driverlib\MSP430FR2xx_4xx\timer_b.h")
	.dwattr $C$DW$220, DW_AT_decl_line(0x48)
	.dwattr $C$DW$220, DW_AT_decl_column(0x0e)

$C$DW$221	.dwtag  DW_TAG_member
	.dwattr $C$DW$221, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$221, DW_AT_name("compareRegister")
	.dwattr $C$DW$221, DW_AT_TI_symbol_name("compareRegister")
	.dwattr $C$DW$221, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$221, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$221, DW_AT_decl_file("..\driverlib\MSP430FR2xx_4xx\timer_b.h")
	.dwattr $C$DW$221, DW_AT_decl_line(0x53)
	.dwattr $C$DW$221, DW_AT_decl_column(0x0e)

$C$DW$222	.dwtag  DW_TAG_member
	.dwattr $C$DW$222, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$222, DW_AT_name("compareOutputMode")
	.dwattr $C$DW$222, DW_AT_TI_symbol_name("compareOutputMode")
	.dwattr $C$DW$222, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$222, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$222, DW_AT_decl_file("..\driverlib\MSP430FR2xx_4xx\timer_b.h")
	.dwattr $C$DW$222, DW_AT_decl_line(0x5e)
	.dwattr $C$DW$222, DW_AT_decl_column(0x0e)

$C$DW$223	.dwtag  DW_TAG_member
	.dwattr $C$DW$223, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$223, DW_AT_name("dutyCycle")
	.dwattr $C$DW$223, DW_AT_TI_symbol_name("dutyCycle")
	.dwattr $C$DW$223, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$223, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$223, DW_AT_decl_file("..\driverlib\MSP430FR2xx_4xx\timer_b.h")
	.dwattr $C$DW$223, DW_AT_decl_line(0x60)
	.dwattr $C$DW$223, DW_AT_decl_column(0x0e)

	.dwattr $C$DW$T$30, DW_AT_decl_file("..\driverlib\MSP430FR2xx_4xx\timer_b.h")
	.dwattr $C$DW$T$30, DW_AT_decl_line(0x28)
	.dwattr $C$DW$T$30, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$30

$C$DW$T$42	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$42, DW_AT_name("Timer_B_outputPWMParam")
	.dwattr $C$DW$T$42, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$42, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$42, DW_AT_decl_file("..\driverlib\MSP430FR2xx_4xx\timer_b.h")
	.dwattr $C$DW$T$42, DW_AT_decl_line(0x61)
	.dwattr $C$DW$T$42, DW_AT_decl_column(0x03)

$C$DW$T$43	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$43, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$T$43, DW_AT_address_class(0x10)

$C$DW$T$2	.dwtag  DW_TAG_unspecified_type
	.dwattr $C$DW$T$2, DW_AT_name("void")


$C$DW$T$56	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$56, DW_AT_language(DW_LANG_C)
	.dwendtag $C$DW$T$56

$C$DW$T$57	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$57, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$T$57, DW_AT_address_class(0x10)

$C$DW$T$58	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$58, DW_AT_name("__SFR_FARPTR")
	.dwattr $C$DW$T$58, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$T$58, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$58, DW_AT_decl_file("C:\ti\ccs1040\ccs\ccs_base\msp430\include\colt430fr2355.h")
	.dwattr $C$DW$T$58, DW_AT_decl_line(0x43)
	.dwattr $C$DW$T$58, DW_AT_decl_column(0x11)

$C$DW$T$4	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$4, DW_AT_encoding(DW_ATE_boolean)
	.dwattr $C$DW$T$4, DW_AT_name("bool")
	.dwattr $C$DW$T$4, DW_AT_byte_size(0x01)

$C$DW$T$5	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$5, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$5, DW_AT_name("signed char")
	.dwattr $C$DW$T$5, DW_AT_byte_size(0x01)

$C$DW$T$59	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$59, DW_AT_name("__int8_t")
	.dwattr $C$DW$T$59, DW_AT_type(*$C$DW$T$5)
	.dwattr $C$DW$T$59, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$59, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$59, DW_AT_decl_line(0x36)
	.dwattr $C$DW$T$59, DW_AT_decl_column(0x16)

$C$DW$T$60	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$60, DW_AT_name("__int_least8_t")
	.dwattr $C$DW$T$60, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$T$60, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$60, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$60, DW_AT_decl_line(0x5a)
	.dwattr $C$DW$T$60, DW_AT_decl_column(0x12)

$C$DW$T$61	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$61, DW_AT_name("int_least8_t")
	.dwattr $C$DW$T$61, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$T$61, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$61, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$61, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$T$61, DW_AT_decl_column(0x19)

$C$DW$T$62	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$62, DW_AT_name("int8_t")
	.dwattr $C$DW$T$62, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$T$62, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$62, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$62, DW_AT_decl_line(0x25)
	.dwattr $C$DW$T$62, DW_AT_decl_column(0x13)

$C$DW$T$6	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$6, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$6, DW_AT_byte_size(0x01)

$C$DW$T$53	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$53, DW_AT_name("__uint8_t")
	.dwattr $C$DW$T$53, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$53, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$53, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$53, DW_AT_decl_line(0x37)
	.dwattr $C$DW$T$53, DW_AT_decl_column(0x18)

$C$DW$T$63	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$63, DW_AT_name("__sa_family_t")
	.dwattr $C$DW$T$63, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$T$63, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$63, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$63, DW_AT_decl_line(0x47)
	.dwattr $C$DW$T$63, DW_AT_decl_column(0x13)

$C$DW$T$64	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$64, DW_AT_name("__uint_least8_t")
	.dwattr $C$DW$T$64, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$T$64, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$64, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$64, DW_AT_decl_line(0x74)
	.dwattr $C$DW$T$64, DW_AT_decl_column(0x13)

$C$DW$T$65	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$65, DW_AT_name("uint_least8_t")
	.dwattr $C$DW$T$65, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$T$65, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$65, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$65, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$T$65, DW_AT_decl_column(0x1a)

$C$DW$T$54	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$54, DW_AT_name("uint8_t")
	.dwattr $C$DW$T$54, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$T$54, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$54, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$54, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$T$54, DW_AT_decl_column(0x14)

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

$C$DW$T$68	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$68, DW_AT_name("_Mbstatet")
	.dwattr $C$DW$T$68, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$68, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$68, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$68, DW_AT_decl_line(0x8f)
	.dwattr $C$DW$T$68, DW_AT_decl_column(0x0d)

$C$DW$T$69	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$69, DW_AT_name("__mbstate_t")
	.dwattr $C$DW$T$69, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$T$69, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$69, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$69, DW_AT_decl_line(0x92)
	.dwattr $C$DW$T$69, DW_AT_decl_column(0x13)

$C$DW$T$70	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$70, DW_AT_name("__accmode_t")
	.dwattr $C$DW$T$70, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$70, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$70, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$70, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$T$70, DW_AT_decl_column(0x0e)

$C$DW$T$71	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$71, DW_AT_name("__cpulevel_t")
	.dwattr $C$DW$T$71, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$71, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$71, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$71, DW_AT_decl_line(0x50)
	.dwattr $C$DW$T$71, DW_AT_decl_column(0x0e)

$C$DW$T$72	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$72, DW_AT_name("__cpusetid_t")
	.dwattr $C$DW$T$72, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$72, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$72, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$72, DW_AT_decl_line(0x51)
	.dwattr $C$DW$T$72, DW_AT_decl_column(0x0e)

$C$DW$T$73	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$73, DW_AT_name("__cpuwhich_t")
	.dwattr $C$DW$T$73, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$73, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$73, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$73, DW_AT_decl_line(0x4f)
	.dwattr $C$DW$T$73, DW_AT_decl_column(0x0e)

$C$DW$T$74	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$74, DW_AT_name("__ct_rune_t")
	.dwattr $C$DW$T$74, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$74, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$74, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$74, DW_AT_decl_line(0x69)
	.dwattr $C$DW$T$74, DW_AT_decl_column(0x0e)

$C$DW$T$75	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$75, DW_AT_name("__rune_t")
	.dwattr $C$DW$T$75, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$T$75, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$75, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$75, DW_AT_decl_line(0x6c)
	.dwattr $C$DW$T$75, DW_AT_decl_column(0x15)

$C$DW$T$76	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$76, DW_AT_name("__wint_t")
	.dwattr $C$DW$T$76, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$T$76, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$76, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$76, DW_AT_decl_line(0x6d)
	.dwattr $C$DW$T$76, DW_AT_decl_column(0x15)

$C$DW$T$77	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$77, DW_AT_name("__int16_t")
	.dwattr $C$DW$T$77, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$77, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$77, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$77, DW_AT_decl_line(0x38)
	.dwattr $C$DW$T$77, DW_AT_decl_column(0x0f)

$C$DW$T$78	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$78, DW_AT_name("__int_fast16_t")
	.dwattr $C$DW$T$78, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$T$78, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$78, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$78, DW_AT_decl_line(0x57)
	.dwattr $C$DW$T$78, DW_AT_decl_column(0x13)

$C$DW$T$79	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$79, DW_AT_name("int_fast16_t")
	.dwattr $C$DW$T$79, DW_AT_type(*$C$DW$T$78)
	.dwattr $C$DW$T$79, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$79, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$79, DW_AT_decl_line(0x35)
	.dwattr $C$DW$T$79, DW_AT_decl_column(0x19)

$C$DW$T$80	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$80, DW_AT_name("__int_fast8_t")
	.dwattr $C$DW$T$80, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$T$80, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$80, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$80, DW_AT_decl_line(0x56)
	.dwattr $C$DW$T$80, DW_AT_decl_column(0x13)

$C$DW$T$81	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$81, DW_AT_name("int_fast8_t")
	.dwattr $C$DW$T$81, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$T$81, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$81, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$81, DW_AT_decl_line(0x34)
	.dwattr $C$DW$T$81, DW_AT_decl_column(0x18)

$C$DW$T$82	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$82, DW_AT_name("__int_least16_t")
	.dwattr $C$DW$T$82, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$T$82, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$82, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$82, DW_AT_decl_line(0x5b)
	.dwattr $C$DW$T$82, DW_AT_decl_column(0x13)

$C$DW$T$83	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$83, DW_AT_name("int_least16_t")
	.dwattr $C$DW$T$83, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$T$83, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$83, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$83, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$T$83, DW_AT_decl_column(0x1a)

$C$DW$T$84	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$84, DW_AT_name("__intptr_t")
	.dwattr $C$DW$T$84, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$T$84, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$84, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$84, DW_AT_decl_line(0x53)
	.dwattr $C$DW$T$84, DW_AT_decl_column(0x19)

$C$DW$T$85	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$85, DW_AT_name("intptr_t")
	.dwattr $C$DW$T$85, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$T$85, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$85, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$85, DW_AT_decl_line(0x50)
	.dwattr $C$DW$T$85, DW_AT_decl_column(0x15)

$C$DW$T$86	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$86, DW_AT_name("__register_t")
	.dwattr $C$DW$T$86, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$T$86, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$86, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$86, DW_AT_decl_line(0x5f)
	.dwattr $C$DW$T$86, DW_AT_decl_column(0x13)

$C$DW$T$87	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$87, DW_AT_name("int16_t")
	.dwattr $C$DW$T$87, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$T$87, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$87, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$87, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$T$87, DW_AT_decl_column(0x14)

$C$DW$T$88	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$88, DW_AT_name("__nl_item")
	.dwattr $C$DW$T$88, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$88, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$88, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$88, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$T$88, DW_AT_decl_column(0x0e)

$C$DW$T$89	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$89, DW_AT_name("__ptrdiff_t")
	.dwattr $C$DW$T$89, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$89, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$89, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$89, DW_AT_decl_line(0x5e)
	.dwattr $C$DW$T$89, DW_AT_decl_column(0x1c)

$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x02)

$C$DW$T$90	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$90, DW_AT_name("___wchar_t")
	.dwattr $C$DW$T$90, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$90, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$90, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$90, DW_AT_decl_line(0x7d)
	.dwattr $C$DW$T$90, DW_AT_decl_column(0x1a)

$C$DW$T$91	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$91, DW_AT_name("__size_t")
	.dwattr $C$DW$T$91, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$91, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$91, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$91, DW_AT_decl_line(0x61)
	.dwattr $C$DW$T$91, DW_AT_decl_column(0x19)

$C$DW$T$22	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$22, DW_AT_name("__uint16_t")
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$22, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$22, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$22, DW_AT_decl_line(0x39)
	.dwattr $C$DW$T$22, DW_AT_decl_column(0x17)

$C$DW$T$92	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$92, DW_AT_name("__mode_t")
	.dwattr $C$DW$T$92, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$92, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$92, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$92, DW_AT_decl_line(0x3a)
	.dwattr $C$DW$T$92, DW_AT_decl_column(0x14)

$C$DW$T$93	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$93, DW_AT_name("__u_register_t")
	.dwattr $C$DW$T$93, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$93, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$93, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$93, DW_AT_decl_line(0x78)
	.dwattr $C$DW$T$93, DW_AT_decl_column(0x14)

$C$DW$T$94	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$94, DW_AT_name("__uint_fast16_t")
	.dwattr $C$DW$T$94, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$94, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$94, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$94, DW_AT_decl_line(0x71)
	.dwattr $C$DW$T$94, DW_AT_decl_column(0x14)

$C$DW$T$95	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$95, DW_AT_name("uint_fast16_t")
	.dwattr $C$DW$T$95, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$T$95, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$95, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$95, DW_AT_decl_line(0x3a)
	.dwattr $C$DW$T$95, DW_AT_decl_column(0x1a)

$C$DW$T$96	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$96, DW_AT_name("__uint_fast8_t")
	.dwattr $C$DW$T$96, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$96, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$96, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$96, DW_AT_decl_line(0x70)
	.dwattr $C$DW$T$96, DW_AT_decl_column(0x14)

$C$DW$T$97	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$97, DW_AT_name("uint_fast8_t")
	.dwattr $C$DW$T$97, DW_AT_type(*$C$DW$T$96)
	.dwattr $C$DW$T$97, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$97, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$97, DW_AT_decl_line(0x39)
	.dwattr $C$DW$T$97, DW_AT_decl_column(0x19)

$C$DW$T$98	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$98, DW_AT_name("__uint_least16_t")
	.dwattr $C$DW$T$98, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$98, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$98, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$98, DW_AT_decl_line(0x75)
	.dwattr $C$DW$T$98, DW_AT_decl_column(0x14)

$C$DW$T$99	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$99, DW_AT_name("__char16_t")
	.dwattr $C$DW$T$99, DW_AT_type(*$C$DW$T$98)
	.dwattr $C$DW$T$99, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$99, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$99, DW_AT_decl_line(0x71)
	.dwattr $C$DW$T$99, DW_AT_decl_column(0x1a)

$C$DW$T$100	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$100, DW_AT_name("uint_least16_t")
	.dwattr $C$DW$T$100, DW_AT_type(*$C$DW$T$98)
	.dwattr $C$DW$T$100, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$100, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$100, DW_AT_decl_line(0x30)
	.dwattr $C$DW$T$100, DW_AT_decl_column(0x1a)

$C$DW$T$101	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$101, DW_AT_name("__uintptr_t")
	.dwattr $C$DW$T$101, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$101, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$101, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$101, DW_AT_decl_line(0x6d)
	.dwattr $C$DW$T$101, DW_AT_decl_column(0x14)

$C$DW$T$102	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$102, DW_AT_name("uintptr_t")
	.dwattr $C$DW$T$102, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$T$102, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$102, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$102, DW_AT_decl_line(0x54)
	.dwattr $C$DW$T$102, DW_AT_decl_column(0x16)

$C$DW$T$23	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$23, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$23, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$23, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$23, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$23, DW_AT_decl_column(0x15)

$C$DW$T$107	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$107, DW_AT_name("__useconds_t")
	.dwattr $C$DW$T$107, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$107, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$107, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$107, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$T$107, DW_AT_decl_column(0x16)

$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x04)

$C$DW$T$108	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$108, DW_AT_name("__int32_t")
	.dwattr $C$DW$T$108, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$108, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$108, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$108, DW_AT_decl_line(0x3a)
	.dwattr $C$DW$T$108, DW_AT_decl_column(0x10)

$C$DW$T$109	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$109, DW_AT_name("__blksize_t")
	.dwattr $C$DW$T$109, DW_AT_type(*$C$DW$T$108)
	.dwattr $C$DW$T$109, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$109, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$109, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$T$109, DW_AT_decl_column(0x13)

$C$DW$T$110	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$110, DW_AT_name("__clockid_t")
	.dwattr $C$DW$T$110, DW_AT_type(*$C$DW$T$108)
	.dwattr $C$DW$T$110, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$110, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$110, DW_AT_decl_line(0x31)
	.dwattr $C$DW$T$110, DW_AT_decl_column(0x13)

$C$DW$T$111	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$111, DW_AT_name("__critical_t")
	.dwattr $C$DW$T$111, DW_AT_type(*$C$DW$T$108)
	.dwattr $C$DW$T$111, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$111, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$111, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$T$111, DW_AT_decl_column(0x13)

$C$DW$T$112	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$112, DW_AT_name("__int_fast32_t")
	.dwattr $C$DW$T$112, DW_AT_type(*$C$DW$T$108)
	.dwattr $C$DW$T$112, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$112, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$112, DW_AT_decl_line(0x58)
	.dwattr $C$DW$T$112, DW_AT_decl_column(0x13)

$C$DW$T$113	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$113, DW_AT_name("int_fast32_t")
	.dwattr $C$DW$T$113, DW_AT_type(*$C$DW$T$112)
	.dwattr $C$DW$T$113, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$113, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$113, DW_AT_decl_line(0x36)
	.dwattr $C$DW$T$113, DW_AT_decl_column(0x19)

$C$DW$T$114	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$114, DW_AT_name("__int_least32_t")
	.dwattr $C$DW$T$114, DW_AT_type(*$C$DW$T$108)
	.dwattr $C$DW$T$114, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$114, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$114, DW_AT_decl_line(0x5c)
	.dwattr $C$DW$T$114, DW_AT_decl_column(0x13)

$C$DW$T$115	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$115, DW_AT_name("int_least32_t")
	.dwattr $C$DW$T$115, DW_AT_type(*$C$DW$T$114)
	.dwattr $C$DW$T$115, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$115, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$115, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$T$115, DW_AT_decl_column(0x1a)

$C$DW$T$116	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$116, DW_AT_name("__intfptr_t")
	.dwattr $C$DW$T$116, DW_AT_type(*$C$DW$T$108)
	.dwattr $C$DW$T$116, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$116, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$116, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$T$116, DW_AT_decl_column(0x13)

$C$DW$T$117	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$117, DW_AT_name("__lwpid_t")
	.dwattr $C$DW$T$117, DW_AT_type(*$C$DW$T$108)
	.dwattr $C$DW$T$117, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$117, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$117, DW_AT_decl_line(0x39)
	.dwattr $C$DW$T$117, DW_AT_decl_column(0x13)

$C$DW$T$118	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$118, DW_AT_name("__pid_t")
	.dwattr $C$DW$T$118, DW_AT_type(*$C$DW$T$108)
	.dwattr $C$DW$T$118, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$118, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$118, DW_AT_decl_line(0x40)
	.dwattr $C$DW$T$118, DW_AT_decl_column(0x13)

$C$DW$T$119	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$119, DW_AT_name("__segsz_t")
	.dwattr $C$DW$T$119, DW_AT_type(*$C$DW$T$108)
	.dwattr $C$DW$T$119, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$119, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$119, DW_AT_decl_line(0x60)
	.dwattr $C$DW$T$119, DW_AT_decl_column(0x13)

$C$DW$T$120	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$120, DW_AT_name("__ssize_t")
	.dwattr $C$DW$T$120, DW_AT_type(*$C$DW$T$108)
	.dwattr $C$DW$T$120, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$120, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$120, DW_AT_decl_line(0x62)
	.dwattr $C$DW$T$120, DW_AT_decl_column(0x13)

$C$DW$T$121	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$121, DW_AT_name("int32_t")
	.dwattr $C$DW$T$121, DW_AT_type(*$C$DW$T$108)
	.dwattr $C$DW$T$121, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$121, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$121, DW_AT_decl_line(0x30)
	.dwattr $C$DW$T$121, DW_AT_decl_column(0x14)

$C$DW$T$122	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$122, DW_AT_name("__key_t")
	.dwattr $C$DW$T$122, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$122, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$122, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$122, DW_AT_decl_line(0x38)
	.dwattr $C$DW$T$122, DW_AT_decl_column(0x0f)

$C$DW$T$123	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$123, DW_AT_name("__suseconds_t")
	.dwattr $C$DW$T$123, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$123, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$123, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$123, DW_AT_decl_line(0x4a)
	.dwattr $C$DW$T$123, DW_AT_decl_column(0x0f)

$C$DW$T$124	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$124, DW_AT_name("_off_t")
	.dwattr $C$DW$T$124, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$124, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$124, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$124, DW_AT_decl_line(0x8d)
	.dwattr $C$DW$T$124, DW_AT_decl_column(0x12)

$C$DW$T$125	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$125, DW_AT_name("__off_t")
	.dwattr $C$DW$T$125, DW_AT_type(*$C$DW$T$124)
	.dwattr $C$DW$T$125, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$125, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$125, DW_AT_decl_line(0x3e)
	.dwattr $C$DW$T$125, DW_AT_decl_column(0x18)

$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x04)

$C$DW$T$126	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$126, DW_AT_name("__uint32_t")
	.dwattr $C$DW$T$126, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$126, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$126, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$126, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$T$126, DW_AT_decl_column(0x18)

$C$DW$T$127	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$127, DW_AT_name("__clock_t")
	.dwattr $C$DW$T$127, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$T$127, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$127, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$127, DW_AT_decl_line(0x4a)
	.dwattr $C$DW$T$127, DW_AT_decl_column(0x14)

$C$DW$T$128	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$128, DW_AT_name("__fflags_t")
	.dwattr $C$DW$T$128, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$T$128, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$128, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$128, DW_AT_decl_line(0x32)
	.dwattr $C$DW$T$128, DW_AT_decl_column(0x14)

$C$DW$T$129	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$129, DW_AT_name("__fixpt_t")
	.dwattr $C$DW$T$129, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$T$129, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$129, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$129, DW_AT_decl_line(0x81)
	.dwattr $C$DW$T$129, DW_AT_decl_column(0x14)

$C$DW$T$130	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$130, DW_AT_name("__gid_t")
	.dwattr $C$DW$T$130, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$T$130, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$130, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$130, DW_AT_decl_line(0x35)
	.dwattr $C$DW$T$130, DW_AT_decl_column(0x14)

$C$DW$T$131	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$131, DW_AT_name("__socklen_t")
	.dwattr $C$DW$T$131, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$T$131, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$131, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$131, DW_AT_decl_line(0x49)
	.dwattr $C$DW$T$131, DW_AT_decl_column(0x14)

$C$DW$T$132	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$132, DW_AT_name("__time_t")
	.dwattr $C$DW$T$132, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$T$132, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$132, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$132, DW_AT_decl_line(0x66)
	.dwattr $C$DW$T$132, DW_AT_decl_column(0x19)

$C$DW$T$133	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$133, DW_AT_name("__uid_t")
	.dwattr $C$DW$T$133, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$T$133, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$133, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$133, DW_AT_decl_line(0x4d)
	.dwattr $C$DW$T$133, DW_AT_decl_column(0x14)

$C$DW$T$134	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$134, DW_AT_name("__uint_fast32_t")
	.dwattr $C$DW$T$134, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$T$134, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$134, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$134, DW_AT_decl_line(0x72)
	.dwattr $C$DW$T$134, DW_AT_decl_column(0x14)

$C$DW$T$135	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$135, DW_AT_name("uint_fast32_t")
	.dwattr $C$DW$T$135, DW_AT_type(*$C$DW$T$134)
	.dwattr $C$DW$T$135, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$135, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$135, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$T$135, DW_AT_decl_column(0x1a)

$C$DW$T$136	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$136, DW_AT_name("__uint_least32_t")
	.dwattr $C$DW$T$136, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$T$136, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$136, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$136, DW_AT_decl_line(0x76)
	.dwattr $C$DW$T$136, DW_AT_decl_column(0x14)

$C$DW$T$137	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$137, DW_AT_name("__char32_t")
	.dwattr $C$DW$T$137, DW_AT_type(*$C$DW$T$136)
	.dwattr $C$DW$T$137, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$137, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$137, DW_AT_decl_line(0x72)
	.dwattr $C$DW$T$137, DW_AT_decl_column(0x1a)

$C$DW$T$138	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$138, DW_AT_name("uint_least32_t")
	.dwattr $C$DW$T$138, DW_AT_type(*$C$DW$T$136)
	.dwattr $C$DW$T$138, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$138, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$138, DW_AT_decl_line(0x31)
	.dwattr $C$DW$T$138, DW_AT_decl_column(0x1a)

$C$DW$T$139	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$139, DW_AT_name("__uintfptr_t")
	.dwattr $C$DW$T$139, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$T$139, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$139, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$139, DW_AT_decl_line(0x68)
	.dwattr $C$DW$T$139, DW_AT_decl_column(0x14)

$C$DW$T$140	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$140, DW_AT_name("__vm_offset_t")
	.dwattr $C$DW$T$140, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$T$140, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$140, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$140, DW_AT_decl_line(0x79)
	.dwattr $C$DW$T$140, DW_AT_decl_column(0x14)

$C$DW$T$141	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$141, DW_AT_name("__vm_paddr_t")
	.dwattr $C$DW$T$141, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$T$141, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$141, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$141, DW_AT_decl_line(0x7a)
	.dwattr $C$DW$T$141, DW_AT_decl_column(0x14)

$C$DW$T$142	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$142, DW_AT_name("__vm_size_t")
	.dwattr $C$DW$T$142, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$T$142, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$142, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$142, DW_AT_decl_line(0x7b)
	.dwattr $C$DW$T$142, DW_AT_decl_column(0x14)

$C$DW$T$143	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$143, DW_AT_name("uint32_t")
	.dwattr $C$DW$T$143, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$T$143, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$143, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$143, DW_AT_decl_line(0x46)
	.dwattr $C$DW$T$143, DW_AT_decl_column(0x15)

$C$DW$T$14	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$14, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$14, DW_AT_name("long long")
	.dwattr $C$DW$T$14, DW_AT_byte_size(0x08)

$C$DW$T$146	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$146, DW_AT_name("__int64_t")
	.dwattr $C$DW$T$146, DW_AT_type(*$C$DW$T$14)
	.dwattr $C$DW$T$146, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$146, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$146, DW_AT_decl_line(0x40)
	.dwattr $C$DW$T$146, DW_AT_decl_column(0x14)

$C$DW$T$147	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$147, DW_AT_name("__blkcnt_t")
	.dwattr $C$DW$T$147, DW_AT_type(*$C$DW$T$146)
	.dwattr $C$DW$T$147, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$147, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$147, DW_AT_decl_line(0x30)
	.dwattr $C$DW$T$147, DW_AT_decl_column(0x13)

$C$DW$T$148	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$148, DW_AT_name("__id_t")
	.dwattr $C$DW$T$148, DW_AT_type(*$C$DW$T$146)
	.dwattr $C$DW$T$148, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$148, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$148, DW_AT_decl_line(0x36)
	.dwattr $C$DW$T$148, DW_AT_decl_column(0x13)

$C$DW$T$149	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$149, DW_AT_name("__int_fast64_t")
	.dwattr $C$DW$T$149, DW_AT_type(*$C$DW$T$146)
	.dwattr $C$DW$T$149, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$149, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$149, DW_AT_decl_line(0x59)
	.dwattr $C$DW$T$149, DW_AT_decl_column(0x13)

$C$DW$T$150	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$150, DW_AT_name("int_fast64_t")
	.dwattr $C$DW$T$150, DW_AT_type(*$C$DW$T$149)
	.dwattr $C$DW$T$150, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$150, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$150, DW_AT_decl_line(0x37)
	.dwattr $C$DW$T$150, DW_AT_decl_column(0x19)

$C$DW$T$151	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$151, DW_AT_name("__int_least64_t")
	.dwattr $C$DW$T$151, DW_AT_type(*$C$DW$T$146)
	.dwattr $C$DW$T$151, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$151, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$151, DW_AT_decl_line(0x5d)
	.dwattr $C$DW$T$151, DW_AT_decl_column(0x13)

$C$DW$T$152	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$152, DW_AT_name("int_least64_t")
	.dwattr $C$DW$T$152, DW_AT_type(*$C$DW$T$151)
	.dwattr $C$DW$T$152, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$152, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$152, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$T$152, DW_AT_decl_column(0x1a)

$C$DW$T$153	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$153, DW_AT_name("__intmax_t")
	.dwattr $C$DW$T$153, DW_AT_type(*$C$DW$T$146)
	.dwattr $C$DW$T$153, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$153, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$153, DW_AT_decl_line(0x4f)
	.dwattr $C$DW$T$153, DW_AT_decl_column(0x13)

$C$DW$T$154	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$154, DW_AT_name("intmax_t")
	.dwattr $C$DW$T$154, DW_AT_type(*$C$DW$T$153)
	.dwattr $C$DW$T$154, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$154, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$154, DW_AT_decl_line(0x58)
	.dwattr $C$DW$T$154, DW_AT_decl_column(0x15)

$C$DW$T$155	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$155, DW_AT_name("__off64_t")
	.dwattr $C$DW$T$155, DW_AT_type(*$C$DW$T$146)
	.dwattr $C$DW$T$155, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$155, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$155, DW_AT_decl_line(0x3f)
	.dwattr $C$DW$T$155, DW_AT_decl_column(0x13)

$C$DW$T$156	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$156, DW_AT_name("__rlim_t")
	.dwattr $C$DW$T$156, DW_AT_type(*$C$DW$T$146)
	.dwattr $C$DW$T$156, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$156, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$156, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$156, DW_AT_decl_column(0x13)

$C$DW$T$157	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$157, DW_AT_name("int64_t")
	.dwattr $C$DW$T$157, DW_AT_type(*$C$DW$T$146)
	.dwattr $C$DW$T$157, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$157, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$157, DW_AT_decl_line(0x35)
	.dwattr $C$DW$T$157, DW_AT_decl_column(0x14)

$C$DW$T$15	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$15, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$15, DW_AT_name("unsigned long long")
	.dwattr $C$DW$T$15, DW_AT_byte_size(0x08)

$C$DW$T$158	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$158, DW_AT_name("__uint64_t")
	.dwattr $C$DW$T$158, DW_AT_type(*$C$DW$T$15)
	.dwattr $C$DW$T$158, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$158, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$158, DW_AT_decl_line(0x45)
	.dwattr $C$DW$T$158, DW_AT_decl_column(0x1c)

$C$DW$T$159	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$159, DW_AT_name("__dev_t")
	.dwattr $C$DW$T$159, DW_AT_type(*$C$DW$T$158)
	.dwattr $C$DW$T$159, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$159, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$159, DW_AT_decl_line(0x7f)
	.dwattr $C$DW$T$159, DW_AT_decl_column(0x14)

$C$DW$T$160	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$160, DW_AT_name("__fsblkcnt_t")
	.dwattr $C$DW$T$160, DW_AT_type(*$C$DW$T$158)
	.dwattr $C$DW$T$160, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$160, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$160, DW_AT_decl_line(0x33)
	.dwattr $C$DW$T$160, DW_AT_decl_column(0x14)

$C$DW$T$161	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$161, DW_AT_name("__fsfilcnt_t")
	.dwattr $C$DW$T$161, DW_AT_type(*$C$DW$T$158)
	.dwattr $C$DW$T$161, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$161, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$161, DW_AT_decl_line(0x34)
	.dwattr $C$DW$T$161, DW_AT_decl_column(0x14)

$C$DW$T$162	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$162, DW_AT_name("__ino_t")
	.dwattr $C$DW$T$162, DW_AT_type(*$C$DW$T$158)
	.dwattr $C$DW$T$162, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$162, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$162, DW_AT_decl_line(0x37)
	.dwattr $C$DW$T$162, DW_AT_decl_column(0x14)

$C$DW$T$163	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$163, DW_AT_name("__nlink_t")
	.dwattr $C$DW$T$163, DW_AT_type(*$C$DW$T$158)
	.dwattr $C$DW$T$163, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$163, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$163, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$T$163, DW_AT_decl_column(0x14)

$C$DW$T$164	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$164, DW_AT_name("__uint_fast64_t")
	.dwattr $C$DW$T$164, DW_AT_type(*$C$DW$T$158)
	.dwattr $C$DW$T$164, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$164, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$164, DW_AT_decl_line(0x73)
	.dwattr $C$DW$T$164, DW_AT_decl_column(0x14)

$C$DW$T$165	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$165, DW_AT_name("uint_fast64_t")
	.dwattr $C$DW$T$165, DW_AT_type(*$C$DW$T$164)
	.dwattr $C$DW$T$165, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$165, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$165, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$T$165, DW_AT_decl_column(0x1a)

$C$DW$T$166	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$166, DW_AT_name("__uint_least64_t")
	.dwattr $C$DW$T$166, DW_AT_type(*$C$DW$T$158)
	.dwattr $C$DW$T$166, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$166, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$166, DW_AT_decl_line(0x77)
	.dwattr $C$DW$T$166, DW_AT_decl_column(0x14)

$C$DW$T$167	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$167, DW_AT_name("uint_least64_t")
	.dwattr $C$DW$T$167, DW_AT_type(*$C$DW$T$166)
	.dwattr $C$DW$T$167, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$167, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$167, DW_AT_decl_line(0x32)
	.dwattr $C$DW$T$167, DW_AT_decl_column(0x1a)

$C$DW$T$168	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$168, DW_AT_name("__uintmax_t")
	.dwattr $C$DW$T$168, DW_AT_type(*$C$DW$T$158)
	.dwattr $C$DW$T$168, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$168, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$168, DW_AT_decl_line(0x69)
	.dwattr $C$DW$T$168, DW_AT_decl_column(0x14)

$C$DW$T$169	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$169, DW_AT_name("__rman_res_t")
	.dwattr $C$DW$T$169, DW_AT_type(*$C$DW$T$168)
	.dwattr $C$DW$T$169, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$169, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$169, DW_AT_decl_line(0x9a)
	.dwattr $C$DW$T$169, DW_AT_decl_column(0x19)

$C$DW$T$170	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$170, DW_AT_name("uintmax_t")
	.dwattr $C$DW$T$170, DW_AT_type(*$C$DW$T$168)
	.dwattr $C$DW$T$170, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$170, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$170, DW_AT_decl_line(0x5c)
	.dwattr $C$DW$T$170, DW_AT_decl_column(0x16)

$C$DW$T$171	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$171, DW_AT_name("uint64_t")
	.dwattr $C$DW$T$171, DW_AT_type(*$C$DW$T$158)
	.dwattr $C$DW$T$171, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$171, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$171, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$T$171, DW_AT_decl_column(0x15)

$C$DW$T$16	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$16, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$16, DW_AT_name("float")
	.dwattr $C$DW$T$16, DW_AT_byte_size(0x04)

$C$DW$T$172	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$172, DW_AT_name("__float_t")
	.dwattr $C$DW$T$172, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$T$172, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$172, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$172, DW_AT_decl_line(0x4d)
	.dwattr $C$DW$T$172, DW_AT_decl_column(0x10)

$C$DW$T$17	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$17, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$17, DW_AT_name("double")
	.dwattr $C$DW$T$17, DW_AT_byte_size(0x08)

$C$DW$T$173	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$173, DW_AT_name("__double_t")
	.dwattr $C$DW$T$173, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$T$173, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$173, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$173, DW_AT_decl_line(0x4c)
	.dwattr $C$DW$T$173, DW_AT_decl_column(0x11)

$C$DW$T$18	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$18, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$18, DW_AT_name("long double")
	.dwattr $C$DW$T$18, DW_AT_byte_size(0x08)

$C$DW$T$26	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$26, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$26, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$26, DW_AT_byte_size(0x01)

$C$DW$T$175	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$175, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$175, DW_AT_address_class(0x10)

$C$DW$T$176	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$176, DW_AT_name("__va_list")
	.dwattr $C$DW$T$176, DW_AT_type(*$C$DW$T$175)
	.dwattr $C$DW$T$176, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$176, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$176, DW_AT_decl_line(0x92)
	.dwattr $C$DW$T$176, DW_AT_decl_column(0x0f)


$C$DW$T$19	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$19, DW_AT_name("__mq")
	.dwattr $C$DW$T$19, DW_AT_declaration
	.dwattr $C$DW$T$19, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$19, DW_AT_decl_line(0x4c)
	.dwattr $C$DW$T$19, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$19

$C$DW$T$177	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$177, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$177, DW_AT_address_class(0x10)

$C$DW$T$178	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$178, DW_AT_name("__mqd_t")
	.dwattr $C$DW$T$178, DW_AT_type(*$C$DW$T$177)
	.dwattr $C$DW$T$178, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$178, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$178, DW_AT_decl_line(0x4c)
	.dwattr $C$DW$T$178, DW_AT_decl_column(0x16)


$C$DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$20, DW_AT_name("__timer")
	.dwattr $C$DW$T$20, DW_AT_declaration
	.dwattr $C$DW$T$20, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$20, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$T$20, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$20

$C$DW$T$179	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$179, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$179, DW_AT_address_class(0x10)

$C$DW$T$180	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$180, DW_AT_name("__timer_t")
	.dwattr $C$DW$T$180, DW_AT_type(*$C$DW$T$179)
	.dwattr $C$DW$T$180, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$180, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$180, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$T$180, DW_AT_decl_column(0x19)

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

$C$DW$224	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$224, DW_AT_name("PC")
	.dwattr $C$DW$224, DW_AT_location[DW_OP_reg0]

$C$DW$225	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$225, DW_AT_name("SP")
	.dwattr $C$DW$225, DW_AT_location[DW_OP_reg1]

$C$DW$226	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$226, DW_AT_name("SR")
	.dwattr $C$DW$226, DW_AT_location[DW_OP_reg2]

$C$DW$227	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$227, DW_AT_name("CG")
	.dwattr $C$DW$227, DW_AT_location[DW_OP_reg3]

$C$DW$228	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$228, DW_AT_name("r4")
	.dwattr $C$DW$228, DW_AT_location[DW_OP_reg4]

$C$DW$229	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$229, DW_AT_name("r5")
	.dwattr $C$DW$229, DW_AT_location[DW_OP_reg5]

$C$DW$230	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$230, DW_AT_name("r6")
	.dwattr $C$DW$230, DW_AT_location[DW_OP_reg6]

$C$DW$231	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$231, DW_AT_name("r7")
	.dwattr $C$DW$231, DW_AT_location[DW_OP_reg7]

$C$DW$232	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$232, DW_AT_name("r8")
	.dwattr $C$DW$232, DW_AT_location[DW_OP_reg8]

$C$DW$233	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$233, DW_AT_name("r9")
	.dwattr $C$DW$233, DW_AT_location[DW_OP_reg9]

$C$DW$234	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$234, DW_AT_name("r10")
	.dwattr $C$DW$234, DW_AT_location[DW_OP_reg10]

$C$DW$235	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$235, DW_AT_name("r11")
	.dwattr $C$DW$235, DW_AT_location[DW_OP_reg11]

$C$DW$236	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$236, DW_AT_name("r12")
	.dwattr $C$DW$236, DW_AT_location[DW_OP_reg12]

$C$DW$237	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$237, DW_AT_name("r13")
	.dwattr $C$DW$237, DW_AT_location[DW_OP_reg13]

$C$DW$238	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$238, DW_AT_name("r14")
	.dwattr $C$DW$238, DW_AT_location[DW_OP_reg14]

$C$DW$239	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$239, DW_AT_name("r15")
	.dwattr $C$DW$239, DW_AT_location[DW_OP_reg15]

$C$DW$240	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$240, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$240, DW_AT_location[DW_OP_reg16]

	.dwendtag $C$DW$CU


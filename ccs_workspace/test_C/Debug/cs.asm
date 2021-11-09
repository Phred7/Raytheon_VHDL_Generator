;******************************************************************************
;* MSP430 G3 C/C++ Codegen                                              PC v20.2.5.LTS *
;* Date/Time created: Wed Nov  3 09:47:39 2021                                *
;******************************************************************************
	.compiler_opts --abi=eabi --diag_wrap=off --hll_source=on --mem_model:code=small --mem_model:data=small --object_format=elf --silicon_version=msp --symdebug:dwarf --symdebug:dwarf_version=3 

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../driverlib/MSP430FR57xx/cs.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI MSP430 G3 C/C++ Codegen PC v20.2.5.LTS Copyright (c) 2003-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\Users\wward\Documents\GitHub\Raytheon_VHDL_Generator\ccs_workspace\test_C\Debug")
	.data
	.align	2
	.elfsym	privateXT1ClockFrequency,SYM_SIZE(4)
privateXT1ClockFrequency:
	.bits		0,32
			; privateXT1ClockFrequency @ 0

$C$DW$1	.dwtag  DW_TAG_variable
	.dwattr $C$DW$1, DW_AT_name("privateXT1ClockFrequency")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("privateXT1ClockFrequency")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$1, DW_AT_location[DW_OP_addr privateXT1ClockFrequency]
	.dwattr $C$DW$1, DW_AT_decl_file("../driverlib/MSP430FR57xx/cs.c")
	.dwattr $C$DW$1, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$1, DW_AT_decl_column(0x11)

	.data
	.align	2
	.elfsym	privateXT2ClockFrequency,SYM_SIZE(4)
privateXT2ClockFrequency:
	.bits		0,32
			; privateXT2ClockFrequency @ 0

$C$DW$2	.dwtag  DW_TAG_variable
	.dwattr $C$DW$2, DW_AT_name("privateXT2ClockFrequency")
	.dwattr $C$DW$2, DW_AT_TI_symbol_name("privateXT2ClockFrequency")
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$2, DW_AT_location[DW_OP_addr privateXT2ClockFrequency]
	.dwattr $C$DW$2, DW_AT_decl_file("../driverlib/MSP430FR57xx/cs.c")
	.dwattr $C$DW$2, DW_AT_decl_line(0x46)
	.dwattr $C$DW$2, DW_AT_decl_column(0x11)

;	C:\ti\ccs1040\ccs\tools\compiler\ti-cgt-msp430_20.2.5.LTS\bin\acpia430.exe -@C:\\Users\\wward\\AppData\\Local\\Temp\\{A2A9EFE3-19BF-42E3-ADB9-EE98B437A5A7} 
	.sect	".text:privateCSSourceClockFromDCO"
	.clink

$C$DW$3	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$3, DW_AT_name("privateCSSourceClockFromDCO")
	.dwattr $C$DW$3, DW_AT_low_pc(privateCSSourceClockFromDCO)
	.dwattr $C$DW$3, DW_AT_high_pc(0x00)
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("privateCSSourceClockFromDCO")
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$3, DW_AT_TI_begin_file("../driverlib/MSP430FR57xx/cs.c")
	.dwattr $C$DW$3, DW_AT_TI_begin_line(0x48)
	.dwattr $C$DW$3, DW_AT_TI_begin_column(0x11)
	.dwattr $C$DW$3, DW_AT_decl_file("../driverlib/MSP430FR57xx/cs.c")
	.dwattr $C$DW$3, DW_AT_decl_line(0x48)
	.dwattr $C$DW$3, DW_AT_decl_column(0x11)
	.dwattr $C$DW$3, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 73,column 1,is_stmt,address privateCSSourceClockFromDCO,isa 0

	.dwfde $C$DW$CIE, privateCSSourceClockFromDCO
$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_name("clockdivider")
	.dwattr $C$DW$4, DW_AT_TI_symbol_name("clockdivider")
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$4, DW_AT_location[DW_OP_reg12]


;*****************************************************************************
;* FUNCTION NAME: privateCSSourceClockFromDCO                                *
;*                                                                           *
;*   Regs Modified     : SP,SR,r11,r12,r13,r14,r15                           *
;*   Regs Used         : SP,SR,r11,r12,r13,r14,r15                           *
;*   Local Frame Size  : 0 Args + 6 Auto + 0 Save = 6 byte                   *
;*****************************************************************************
privateCSSourceClockFromDCO:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
        SUB.W     #6,SP                 ; [] 
	.dwcfi	cfa_offset, 8
$C$DW$5	.dwtag  DW_TAG_variable
	.dwattr $C$DW$5, DW_AT_name("CLKFrequency")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("CLKFrequency")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$5, DW_AT_location[DW_OP_breg1 0]

$C$DW$6	.dwtag  DW_TAG_variable
	.dwattr $C$DW$6, DW_AT_name("clockdivider")
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("clockdivider")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$6, DW_AT_location[DW_OP_breg1 4]

        MOV.B     r12,4(SP)             ; [] |73| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 74,column 27,is_stmt,isa 0
        MOV.W     #0,0(SP)              ; [] |74| 
        MOV.W     #0,2(SP)              ; [] |74| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 76,column 5,is_stmt,isa 0
        BIT.W     #128,&0x182           ; [] |76| 
        JEQ       $C$L10                ; [] |76| 
                                          ; [] |76| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 77,column 9,is_stmt,isa 0
        JMP       $C$L5                 ; [] |77| 
                                          ; [] |77| 
;* --------------------------------------------------------------------------*
$C$L1:    
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 79,column 17,is_stmt,isa 0
        MOV.B     4(SP),r14             ; [] |79| 
        MOV.W     #0,r15                ; [] |79| 
        MOV.W     #13824,r12            ; [] |79| 
        MOV.W     #366,r13              ; [] |79| 
$C$DW$7	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$7, DW_AT_low_pc(0x00)
	.dwattr $C$DW$7, DW_AT_name("__mspabi_divli")
	.dwattr $C$DW$7, DW_AT_TI_call

        CALL      #__mspabi_divli       ; [] |79| 
                                          ; [] |79| 
        MOV.W     r12,0(SP)             ; [] |79| 
        MOV.W     r13,2(SP)             ; [] |79| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 80,column 17,is_stmt,isa 0
        JMP       $C$L11                ; [] |80| 
                                          ; [] |80| 
;* --------------------------------------------------------------------------*
$C$L2:    
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 82,column 17,is_stmt,isa 0
        MOV.B     4(SP),r14             ; [] |82| 
        MOV.W     #0,r15                ; [] |82| 
        MOV.W     #9216,r12             ; [] |82| 
        MOV.W     #244,r13              ; [] |82| 
$C$DW$8	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$8, DW_AT_low_pc(0x00)
	.dwattr $C$DW$8, DW_AT_name("__mspabi_divli")
	.dwattr $C$DW$8, DW_AT_TI_call

        CALL      #__mspabi_divli       ; [] |82| 
                                          ; [] |82| 
        MOV.W     r12,0(SP)             ; [] |82| 
        MOV.W     r13,2(SP)             ; [] |82| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 83,column 17,is_stmt,isa 0
        JMP       $C$L11                ; [] |83| 
                                          ; [] |83| 
;* --------------------------------------------------------------------------*
$C$L3:    
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 85,column 17,is_stmt,isa 0
        MOV.B     4(SP),r14             ; [] |85| 
        MOV.W     #0,r15                ; [] |85| 
        MOV.W     #11520,r12            ; [] |85| 
        MOV.W     #305,r13              ; [] |85| 
$C$DW$9	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$9, DW_AT_low_pc(0x00)
	.dwattr $C$DW$9, DW_AT_name("__mspabi_divli")
	.dwattr $C$DW$9, DW_AT_TI_call

        CALL      #__mspabi_divli       ; [] |85| 
                                          ; [] |85| 
        MOV.W     r12,0(SP)             ; [] |85| 
        MOV.W     r13,2(SP)             ; [] |85| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 86,column 17,is_stmt,isa 0
        JMP       $C$L11                ; [] |86| 
                                          ; [] |86| 
;* --------------------------------------------------------------------------*
$C$L4:    
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 88,column 17,is_stmt,isa 0
        MOV.B     4(SP),r14             ; [] |88| 
        MOV.W     #0,r15                ; [] |88| 
        MOV.W     #9216,r12             ; [] |88| 
        MOV.W     #244,r13              ; [] |88| 
$C$DW$10	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$10, DW_AT_low_pc(0x00)
	.dwattr $C$DW$10, DW_AT_name("__mspabi_divli")
	.dwattr $C$DW$10, DW_AT_TI_call

        CALL      #__mspabi_divli       ; [] |88| 
                                          ; [] |88| 
        MOV.W     r12,0(SP)             ; [] |88| 
        MOV.W     r13,2(SP)             ; [] |88| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 89,column 17,is_stmt,isa 0
        JMP       $C$L11                ; [] |89| 
                                          ; [] |89| 
;* --------------------------------------------------------------------------*
;* --------------------------------------------------------------------------*
$C$L5:    
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 77,column 9,is_stmt,isa 0
        MOV.W     #6,r15                ; [] |77| 
        AND.W     &0x182,r15            ; [] |77| 
        SUB.W     #2,r15                ; [] |77| 
        JEQ       $C$L3                 ; [] |77| 
                                          ; [] |77| 
;* --------------------------------------------------------------------------*
        SUB.W     #2,r15                ; [] |77| 
        JEQ       $C$L2                 ; [] |77| 
                                          ; [] |77| 
;* --------------------------------------------------------------------------*
        SUB.W     #2,r15                ; [] |77| 
        JEQ       $C$L1                 ; [] |77| 
                                          ; [] |77| 
;* --------------------------------------------------------------------------*
        JMP       $C$L4                 ; [] |77| 
                                          ; [] |77| 
;* --------------------------------------------------------------------------*
;* --------------------------------------------------------------------------*
$C$L6:    
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 95,column 17,is_stmt,isa 0
        MOV.B     4(SP),r14             ; [] |95| 
        MOV.W     #0,r15                ; [] |95| 
        MOV.W     #4608,r12             ; [] |95| 
        MOV.W     #122,r13              ; [] |95| 
$C$DW$11	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$11, DW_AT_low_pc(0x00)
	.dwattr $C$DW$11, DW_AT_name("__mspabi_divli")
	.dwattr $C$DW$11, DW_AT_TI_call

        CALL      #__mspabi_divli       ; [] |95| 
                                          ; [] |95| 
        MOV.W     r12,0(SP)             ; [] |95| 
        MOV.W     r13,2(SP)             ; [] |95| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 96,column 17,is_stmt,isa 0
        JMP       $C$L11                ; [] |96| 
                                          ; [] |96| 
;* --------------------------------------------------------------------------*
$C$L7:    
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 98,column 17,is_stmt,isa 0
        MOV.B     4(SP),r14             ; [] |98| 
        MOV.W     #0,r15                ; [] |98| 
        MOV.W     #21584,r12            ; [] |98| 
        MOV.W     #81,r13               ; [] |98| 
$C$DW$12	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$12, DW_AT_low_pc(0x00)
	.dwattr $C$DW$12, DW_AT_name("__mspabi_divli")
	.dwattr $C$DW$12, DW_AT_TI_call

        CALL      #__mspabi_divli       ; [] |98| 
                                          ; [] |98| 
        MOV.W     r12,0(SP)             ; [] |98| 
        MOV.W     r13,2(SP)             ; [] |98| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 99,column 17,is_stmt,isa 0
        JMP       $C$L11                ; [] |99| 
                                          ; [] |99| 
;* --------------------------------------------------------------------------*
$C$L8:    
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 101,column 17,is_stmt,isa 0
        MOV.B     4(SP),r14             ; [] |101| 
        MOV.W     #0,r15                ; [] |101| 
        MOV.W     #50864,r12            ; [] |101| 
        MOV.W     #101,r13              ; [] |101| 
$C$DW$13	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$13, DW_AT_low_pc(0x00)
	.dwattr $C$DW$13, DW_AT_name("__mspabi_divli")
	.dwattr $C$DW$13, DW_AT_TI_call

        CALL      #__mspabi_divli       ; [] |101| 
                                          ; [] |101| 
        MOV.W     r12,0(SP)             ; [] |101| 
        MOV.W     r13,2(SP)             ; [] |101| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 102,column 17,is_stmt,isa 0
        JMP       $C$L11                ; [] |102| 
                                          ; [] |102| 
;* --------------------------------------------------------------------------*
$C$L9:    
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 104,column 17,is_stmt,isa 0
        MOV.B     4(SP),r14             ; [] |104| 
        MOV.W     #0,r15                ; [] |104| 
        MOV.W     #21584,r12            ; [] |104| 
        MOV.W     #81,r13               ; [] |104| 
$C$DW$14	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$14, DW_AT_low_pc(0x00)
	.dwattr $C$DW$14, DW_AT_name("__mspabi_divli")
	.dwattr $C$DW$14, DW_AT_TI_call

        CALL      #__mspabi_divli       ; [] |104| 
                                          ; [] |104| 
        MOV.W     r12,0(SP)             ; [] |104| 
        MOV.W     r13,2(SP)             ; [] |104| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 105,column 17,is_stmt,isa 0
        JMP       $C$L11                ; [] |105| 
                                          ; [] |105| 
;* --------------------------------------------------------------------------*
;* --------------------------------------------------------------------------*
$C$L10:    
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 93,column 9,is_stmt,isa 0
        MOV.W     #6,r15                ; [] |93| 
        AND.W     &0x182,r15            ; [] |93| 
        SUB.W     #2,r15                ; [] |93| 
        JEQ       $C$L8                 ; [] |93| 
                                          ; [] |93| 
;* --------------------------------------------------------------------------*
        SUB.W     #2,r15                ; [] |93| 
        JEQ       $C$L7                 ; [] |93| 
                                          ; [] |93| 
;* --------------------------------------------------------------------------*
        SUB.W     #2,r15                ; [] |93| 
        JEQ       $C$L6                 ; [] |93| 
                                          ; [] |93| 
;* --------------------------------------------------------------------------*
        JMP       $C$L9                 ; [] |93| 
                                          ; [] |93| 
;* --------------------------------------------------------------------------*
$C$L11:    
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 110,column 5,is_stmt,isa 0
        MOV.W     0(SP),r12             ; [] |110| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 111,column 1,is_stmt,isa 0
        ADD.W     #6,SP                 ; [] 
	.dwcfi	cfa_offset, 2
$C$DW$15	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$15, DW_AT_low_pc(0x00)
	.dwattr $C$DW$15, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$3, DW_AT_TI_end_file("../driverlib/MSP430FR57xx/cs.c")
	.dwattr $C$DW$3, DW_AT_TI_end_line(0x6f)
	.dwattr $C$DW$3, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$3

	.sect	".text:privateCSComputeCLKFrequency"
	.clink

$C$DW$16	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$16, DW_AT_name("privateCSComputeCLKFrequency")
	.dwattr $C$DW$16, DW_AT_low_pc(privateCSComputeCLKFrequency)
	.dwattr $C$DW$16, DW_AT_high_pc(0x00)
	.dwattr $C$DW$16, DW_AT_TI_symbol_name("privateCSComputeCLKFrequency")
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$16, DW_AT_TI_begin_file("../driverlib/MSP430FR57xx/cs.c")
	.dwattr $C$DW$16, DW_AT_TI_begin_line(0x71)
	.dwattr $C$DW$16, DW_AT_TI_begin_column(0x11)
	.dwattr $C$DW$16, DW_AT_decl_file("../driverlib/MSP430FR57xx/cs.c")
	.dwattr $C$DW$16, DW_AT_decl_line(0x71)
	.dwattr $C$DW$16, DW_AT_decl_column(0x11)
	.dwattr $C$DW$16, DW_AT_TI_max_frame_size(0x0c)
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 116,column 1,is_stmt,address privateCSComputeCLKFrequency,isa 0

	.dwfde $C$DW$CIE, privateCSComputeCLKFrequency
$C$DW$17	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$17, DW_AT_name("CLKSource")
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("CLKSource")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$17, DW_AT_location[DW_OP_reg12]

$C$DW$18	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$18, DW_AT_name("CLKSourceDivider")
	.dwattr $C$DW$18, DW_AT_TI_symbol_name("CLKSourceDivider")
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$18, DW_AT_location[DW_OP_reg13]


;*****************************************************************************
;* FUNCTION NAME: privateCSComputeCLKFrequency                               *
;*                                                                           *
;*   Regs Modified     : SP,SR,r11,r12,r13,r14,r15                           *
;*   Regs Used         : SP,SR,r11,r12,r13,r14,r15                           *
;*   Local Frame Size  : 0 Args + 10 Auto + 0 Save = 10 byte                 *
;*****************************************************************************
privateCSComputeCLKFrequency:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
        SUB.W     #10,SP                ; [] 
	.dwcfi	cfa_offset, 12
$C$DW$19	.dwtag  DW_TAG_variable
	.dwattr $C$DW$19, DW_AT_name("CLKFrequency")
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("CLKFrequency")
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$19, DW_AT_location[DW_OP_breg1 0]

$C$DW$20	.dwtag  DW_TAG_variable
	.dwattr $C$DW$20, DW_AT_name("CLKSource")
	.dwattr $C$DW$20, DW_AT_TI_symbol_name("CLKSource")
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$20, DW_AT_location[DW_OP_breg1 4]

$C$DW$21	.dwtag  DW_TAG_variable
	.dwattr $C$DW$21, DW_AT_name("CLKSourceDivider")
	.dwattr $C$DW$21, DW_AT_TI_symbol_name("CLKSourceDivider")
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$21, DW_AT_location[DW_OP_breg1 6]

$C$DW$22	.dwtag  DW_TAG_variable
	.dwattr $C$DW$22, DW_AT_name("CLKSourceFrequencyDivider")
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("CLKSourceFrequencyDivider")
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$22, DW_AT_location[DW_OP_breg1 8]

$C$DW$23	.dwtag  DW_TAG_variable
	.dwattr $C$DW$23, DW_AT_name("i")
	.dwattr $C$DW$23, DW_AT_TI_symbol_name("i")
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$23, DW_AT_location[DW_OP_breg1 9]

        MOV.W     r13,6(SP)             ; [] |116| 
        MOV.W     r12,4(SP)             ; [] |116| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 117,column 27,is_stmt,isa 0
        MOV.W     #0,0(SP)              ; [] |117| 
        MOV.W     #0,2(SP)              ; [] |117| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 118,column 39,is_stmt,isa 0
        MOV.B     #1,8(SP)              ; [] |118| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 119,column 15,is_stmt,isa 0
        MOV.B     #0,9(SP)              ; [] |119| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 122,column 11,is_stmt,isa 0
        MOV.B     #0,9(SP)              ; [] |122| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 122,column 18,is_stmt,isa 0
        MOV.B     9(SP),r15             ; [] |122| 
        CMP.W     6(SP),r15             ; [] |122| 
        JHS       $C$L13                ; [] |122| 
                                          ; [] |122| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP $C$L12
;*
;*   Loop source line                : 122
;*   Loop closing brace source line  : 124
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
$C$L12:    
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 123,column 9,is_stmt,isa 0
        RLA.B     8(SP)                 ; [] |123| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 122,column 40,is_stmt,isa 0
        ADD.B     #1,9(SP)              ; [] |122| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 122,column 18,is_stmt,isa 0
        MOV.B     9(SP),r15             ; [] |122| 
        CMP.W     6(SP),r15             ; [] |122| 
        JLO       $C$L12                ; [] |122| 
                                          ; [] |122| 
;* --------------------------------------------------------------------------*
$C$L13:    
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 127,column 5,is_stmt,isa 0
        MOV.W     #42240,&0x180         ; [] |127| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 130,column 5,is_stmt,isa 0
        JMP       $C$L19                ; [] |130| 
                                          ; [] |130| 
;* --------------------------------------------------------------------------*
$C$L14:    
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 134,column 13,is_stmt,isa 0
        MOV.B     8(SP),r14             ; [] |134| 
        MOV.W     #0,r15                ; [] |134| 
        MOV.W     &privateXT1ClockFrequency+0,r12 ; [] |134| 
        MOV.W     &privateXT1ClockFrequency+2,r13 ; [] |134| 
$C$DW$24	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$24, DW_AT_low_pc(0x00)
	.dwattr $C$DW$24, DW_AT_name("__mspabi_divul")
	.dwattr $C$DW$24, DW_AT_TI_call

        CALL      #__mspabi_divul       ; [] |134| 
                                          ; [] |134| 
        MOV.W     r12,0(SP)             ; [] |134| 
        MOV.W     r13,2(SP)             ; [] |134| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 139,column 13,is_stmt,isa 0
        BIT.B     #1,&0x18a             ; [] |139| 
        JEQ       $C$L20                ; [] |139| 
                                          ; [] |139| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 140,column 17,is_stmt,isa 0
        BIC.B     #1,&0x18a             ; [] |140| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 142,column 17,is_stmt,isa 0
        BIC.B     #2,&0x102             ; [] |142| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 144,column 17,is_stmt,isa 0
        BIT.B     #1,&0x18a             ; [] |144| 
        JEQ       $C$L20                ; [] |144| 
                                          ; [] |144| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 145,column 21,is_stmt,isa 0
        MOV.W     #10000,0(SP)          ; [] |145| 
        MOV.W     #0,2(SP)              ; [] |145| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 148,column 13,is_stmt,isa 0
        JMP       $C$L20                ; [] |148| 
                                          ; [] |148| 
;* --------------------------------------------------------------------------*
$C$L15:    
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 151,column 13,is_stmt,isa 0
        MOV.B     8(SP),r13             ; [] |151| 
        MOV.W     #10000,r12            ; [] |151| 
$C$DW$25	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$25, DW_AT_low_pc(0x00)
	.dwattr $C$DW$25, DW_AT_name("__mspabi_divi")
	.dwattr $C$DW$25, DW_AT_TI_call

        CALL      #__mspabi_divi        ; [] |151| 
                                          ; [] |151| 
        BIT.W     #32768,r12            ; [] |151| 
        SUBC.W    r15,r15               ; [] |151| 
        INV.W     r15                   ; [] |151| 
        MOV.W     r12,0(SP)             ; [] |151| 
        MOV.W     r15,2(SP)             ; [] |151| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 153,column 13,is_stmt,isa 0
        JMP       $C$L20                ; [] |153| 
                                          ; [] |153| 
;* --------------------------------------------------------------------------*
$C$L16:    
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 156,column 13,is_stmt,isa 0
        MOV.B     8(SP),r12             ; [] |156| 
$C$DW$26	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$26, DW_AT_low_pc(0x00)
	.dwattr $C$DW$26, DW_AT_name("privateCSSourceClockFromDCO")
	.dwattr $C$DW$26, DW_AT_TI_call

        CALL      #privateCSSourceClockFromDCO ; [] |156| 
                                          ; [] |156| 
        MOV.W     r12,0(SP)             ; [] |156| 
        MOV.W     r13,2(SP)             ; [] |156| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 159,column 13,is_stmt,isa 0
        JMP       $C$L20                ; [] |159| 
                                          ; [] |159| 
;* --------------------------------------------------------------------------*
$C$L17:    
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 162,column 13,is_stmt,isa 0
        MOV.B     8(SP),r14             ; [] |162| 
        MOV.W     #0,r15                ; [] |162| 
        MOV.W     &privateXT2ClockFrequency+0,r12 ; [] |162| 
        MOV.W     &privateXT2ClockFrequency+2,r13 ; [] |162| 
$C$DW$27	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$27, DW_AT_low_pc(0x00)
	.dwattr $C$DW$27, DW_AT_name("__mspabi_divul")
	.dwattr $C$DW$27, DW_AT_TI_call

        CALL      #__mspabi_divul       ; [] |162| 
                                          ; [] |162| 
        MOV.W     r12,0(SP)             ; [] |162| 
        MOV.W     r13,2(SP)             ; [] |162| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 165,column 13,is_stmt,isa 0
        BIT.B     #2,&0x18a             ; [] |165| 
        JEQ       $C$L18                ; [] |165| 
                                          ; [] |165| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 167,column 15,is_stmt,isa 0
        BIC.B     #2,&0x18a             ; [] |167| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 169,column 15,is_stmt,isa 0
        BIC.B     #2,&0x102             ; [] |169| 
;* --------------------------------------------------------------------------*
$C$L18:    
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 172,column 13,is_stmt,isa 0
        BIT.B     #2,&0x18a             ; [] |172| 
        JEQ       $C$L20                ; [] |172| 
                                          ; [] |172| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 173,column 17,is_stmt,isa 0
        MOV.W     #19264,0(SP)          ; [] |173| 
        MOV.W     #76,2(SP)             ; [] |173| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 175,column 13,is_stmt,isa 0
        JMP       $C$L20                ; [] |175| 
                                          ; [] |175| 
;* --------------------------------------------------------------------------*
;* --------------------------------------------------------------------------*
$C$L19:    
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 130,column 5,is_stmt,isa 0
        TST.W     r12                   ; [] |130| 
        JEQ       $C$L14                ; [] |130| 
                                          ; [] |130| 
;* --------------------------------------------------------------------------*
        SUB.W     #1,r12                ; [] |130| 
        JEQ       $C$L15                ; [] |130| 
                                          ; [] |130| 
;* --------------------------------------------------------------------------*
        SUB.W     #2,r12                ; [] |130| 
        JEQ       $C$L16                ; [] |130| 
                                          ; [] |130| 
;* --------------------------------------------------------------------------*
        SUB.W     #2,r12                ; [] |130| 
        JEQ       $C$L17                ; [] |130| 
                                          ; [] |130| 
;* --------------------------------------------------------------------------*
$C$L20:    
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 179,column 5,is_stmt,isa 0
        MOV.B     #0,&0x181             ; [] |179| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 181,column 5,is_stmt,isa 0
        MOV.W     0(SP),r12             ; [] |181| 
        MOV.W     2(SP),r13             ; [] |181| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 182,column 1,is_stmt,isa 0
        ADD.W     #10,SP                ; [] 
	.dwcfi	cfa_offset, 2
$C$DW$28	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$28, DW_AT_low_pc(0x00)
	.dwattr $C$DW$28, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$16, DW_AT_TI_end_file("../driverlib/MSP430FR57xx/cs.c")
	.dwattr $C$DW$16, DW_AT_TI_end_line(0xb6)
	.dwattr $C$DW$16, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$16

	.sect	".text:CS_setExternalClockSource"
	.clink
	.global	CS_setExternalClockSource

$C$DW$29	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$29, DW_AT_name("CS_setExternalClockSource")
	.dwattr $C$DW$29, DW_AT_low_pc(CS_setExternalClockSource)
	.dwattr $C$DW$29, DW_AT_high_pc(0x00)
	.dwattr $C$DW$29, DW_AT_TI_symbol_name("CS_setExternalClockSource")
	.dwattr $C$DW$29, DW_AT_external
	.dwattr $C$DW$29, DW_AT_TI_begin_file("../driverlib/MSP430FR57xx/cs.c")
	.dwattr $C$DW$29, DW_AT_TI_begin_line(0xb8)
	.dwattr $C$DW$29, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$29, DW_AT_decl_file("../driverlib/MSP430FR57xx/cs.c")
	.dwattr $C$DW$29, DW_AT_decl_line(0xb8)
	.dwattr $C$DW$29, DW_AT_decl_column(0x06)
	.dwattr $C$DW$29, DW_AT_TI_max_frame_size(0x0a)
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 187,column 1,is_stmt,address CS_setExternalClockSource,isa 0

	.dwfde $C$DW$CIE, CS_setExternalClockSource
$C$DW$30	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$30, DW_AT_name("XT1CLK_frequency")
	.dwattr $C$DW$30, DW_AT_TI_symbol_name("XT1CLK_frequency")
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$30, DW_AT_location[DW_OP_reg12]

$C$DW$31	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$31, DW_AT_name("XT2CLK_frequency")
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("XT2CLK_frequency")
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$31, DW_AT_location[DW_OP_reg14]


;*****************************************************************************
;* FUNCTION NAME: CS_setExternalClockSource                                  *
;*                                                                           *
;*   Regs Modified     : SP,SR                                               *
;*   Regs Used         : SP,SR,r12,r13,r14,r15                               *
;*   Local Frame Size  : 0 Args + 8 Auto + 0 Save = 8 byte                   *
;*****************************************************************************
CS_setExternalClockSource:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
        SUB.W     #8,SP                 ; [] 
	.dwcfi	cfa_offset, 10
$C$DW$32	.dwtag  DW_TAG_variable
	.dwattr $C$DW$32, DW_AT_name("XT1CLK_frequency")
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("XT1CLK_frequency")
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$32, DW_AT_location[DW_OP_breg1 0]

$C$DW$33	.dwtag  DW_TAG_variable
	.dwattr $C$DW$33, DW_AT_name("XT2CLK_frequency")
	.dwattr $C$DW$33, DW_AT_TI_symbol_name("XT2CLK_frequency")
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$33, DW_AT_location[DW_OP_breg1 4]

        MOV.W     r14,4(SP)             ; [] |187| 
        MOV.W     r15,6(SP)             ; [] |187| 
        MOV.W     r12,0(SP)             ; [] |187| 
        MOV.W     r13,2(SP)             ; [] |187| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 188,column 5,is_stmt,isa 0
        MOV.W     0(SP),&privateXT1ClockFrequency+0 ; [] |188| 
        MOV.W     2(SP),&privateXT1ClockFrequency+2 ; [] |188| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 189,column 5,is_stmt,isa 0
        MOV.W     4(SP),&privateXT2ClockFrequency+0 ; [] |189| 
        MOV.W     6(SP),&privateXT2ClockFrequency+2 ; [] |189| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 190,column 1,is_stmt,isa 0
        ADD.W     #8,SP                 ; [] 
	.dwcfi	cfa_offset, 2
$C$DW$34	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$34, DW_AT_low_pc(0x00)
	.dwattr $C$DW$34, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$29, DW_AT_TI_end_file("../driverlib/MSP430FR57xx/cs.c")
	.dwattr $C$DW$29, DW_AT_TI_end_line(0xbe)
	.dwattr $C$DW$29, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$29

	.sect	".text:CS_initClockSignal"
	.clink
	.global	CS_initClockSignal

$C$DW$35	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$35, DW_AT_name("CS_initClockSignal")
	.dwattr $C$DW$35, DW_AT_low_pc(CS_initClockSignal)
	.dwattr $C$DW$35, DW_AT_high_pc(0x00)
	.dwattr $C$DW$35, DW_AT_TI_symbol_name("CS_initClockSignal")
	.dwattr $C$DW$35, DW_AT_external
	.dwattr $C$DW$35, DW_AT_TI_begin_file("../driverlib/MSP430FR57xx/cs.c")
	.dwattr $C$DW$35, DW_AT_TI_begin_line(0xc0)
	.dwattr $C$DW$35, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$35, DW_AT_decl_file("../driverlib/MSP430FR57xx/cs.c")
	.dwattr $C$DW$35, DW_AT_decl_line(0xc0)
	.dwattr $C$DW$35, DW_AT_decl_column(0x06)
	.dwattr $C$DW$35, DW_AT_TI_max_frame_size(0x0a)
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 196,column 1,is_stmt,address CS_initClockSignal,isa 0

	.dwfde $C$DW$CIE, CS_initClockSignal
$C$DW$36	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$36, DW_AT_name("selectedClockSignal")
	.dwattr $C$DW$36, DW_AT_TI_symbol_name("selectedClockSignal")
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$36, DW_AT_location[DW_OP_reg12]

$C$DW$37	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$37, DW_AT_name("clockSource")
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("clockSource")
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$37, DW_AT_location[DW_OP_reg13]

$C$DW$38	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$38, DW_AT_name("clockSourceDivider")
	.dwattr $C$DW$38, DW_AT_TI_symbol_name("clockSourceDivider")
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$38, DW_AT_location[DW_OP_reg14]


;*****************************************************************************
;* FUNCTION NAME: CS_initClockSignal                                         *
;*                                                                           *
;*   Regs Modified     : SP,SR,r12,r13,r14,r15                               *
;*   Regs Used         : SP,SR,r12,r13,r14,r15                               *
;*   Local Frame Size  : 0 Args + 8 Auto + 0 Save = 8 byte                   *
;*****************************************************************************
CS_initClockSignal:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
        SUB.W     #8,SP                 ; [] 
	.dwcfi	cfa_offset, 10
$C$DW$39	.dwtag  DW_TAG_variable
	.dwattr $C$DW$39, DW_AT_name("clockSource")
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("clockSource")
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$39, DW_AT_location[DW_OP_breg1 0]

$C$DW$40	.dwtag  DW_TAG_variable
	.dwattr $C$DW$40, DW_AT_name("clockSourceDivider")
	.dwattr $C$DW$40, DW_AT_TI_symbol_name("clockSourceDivider")
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$40, DW_AT_location[DW_OP_breg1 2]

$C$DW$41	.dwtag  DW_TAG_variable
	.dwattr $C$DW$41, DW_AT_name("temp")
	.dwattr $C$DW$41, DW_AT_TI_symbol_name("temp")
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$41, DW_AT_location[DW_OP_breg1 4]

$C$DW$42	.dwtag  DW_TAG_variable
	.dwattr $C$DW$42, DW_AT_name("selectedClockSignal")
	.dwattr $C$DW$42, DW_AT_TI_symbol_name("selectedClockSignal")
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$42, DW_AT_location[DW_OP_breg1 6]

        MOV.W     r14,2(SP)             ; [] |196| 
        MOV.W     r13,0(SP)             ; [] |196| 
        MOV.B     r12,6(SP)             ; [] |196| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 199,column 2,is_stmt,isa 0
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 209,column 2,is_stmt,isa 0
        MOV.W     #42240,&0x180         ; [] |209| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 211,column 19,is_stmt,isa 0
        MOV.W     &0x186,4(SP)          ; [] |211| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 212,column 2,is_stmt,isa 0
        JMP       $C$L24                ; [] |212| 
                                          ; [] |212| 
;* --------------------------------------------------------------------------*
$C$L21:    
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 215,column 4,is_stmt,isa 0
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 221,column 4,is_stmt,isa 0
        MOV.B     r14,r14               ; [] |221| 
        SWPB      r14                   ; [] |221| 
        MOV.W     r14,2(SP)             ; [] |221| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 222,column 4,is_stmt,isa 0
        MOV.B     r13,r13               ; [] |222| 
        SWPB      r13                   ; [] |222| 
        MOV.W     r13,0(SP)             ; [] |222| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 224,column 4,is_stmt,isa 0
        AND.W     #63743,&0x184         ; [] |224| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 225,column 4,is_stmt,isa 0
        OR.W      0(SP),&0x184          ; [] |225| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 226,column 4,is_stmt,isa 0
        MOV.W     #63743,r15            ; [] |226| 
        AND.W     4(SP),r15             ; [] |226| 
        OR.W      2(SP),r15             ; [] |226| 
        MOV.W     r15,&0x186            ; [] |226| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 228,column 4,is_stmt,isa 0
        JMP       $C$L25                ; [] |228| 
                                          ; [] |228| 
;* --------------------------------------------------------------------------*
$C$L22:    
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 230,column 4,is_stmt,isa 0
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 237,column 4,is_stmt,isa 0
        MOV.W     r13,r12               ; [] 
$C$DW$43	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$43, DW_AT_low_pc(0x00)
	.dwattr $C$DW$43, DW_AT_name("__mspabi_slli_4")
	.dwattr $C$DW$43, DW_AT_TI_call

        CALL      #__mspabi_slli_4      ; [] |237| 
                                          ; [] |237| 
        MOV.W     r12,0(SP)             ; [] |237| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 238,column 4,is_stmt,isa 0
        MOV.W     2(SP),r12             ; [] |238| 
$C$DW$44	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$44, DW_AT_low_pc(0x00)
	.dwattr $C$DW$44, DW_AT_name("__mspabi_slli_4")
	.dwattr $C$DW$44, DW_AT_TI_call

        CALL      #__mspabi_slli_4      ; [] |238| 
                                          ; [] |238| 
        MOV.W     r12,2(SP)             ; [] |238| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 240,column 4,is_stmt,isa 0
        AND.W     #65423,&0x184         ; [] |240| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 241,column 4,is_stmt,isa 0
        OR.W      0(SP),&0x184          ; [] |241| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 242,column 4,is_stmt,isa 0
        MOV.W     #65423,r15            ; [] |242| 
        AND.W     4(SP),r15             ; [] |242| 
        OR.W      2(SP),r15             ; [] |242| 
        MOV.W     r15,&0x186            ; [] |242| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 244,column 4,is_stmt,isa 0
        JMP       $C$L25                ; [] |244| 
                                          ; [] |244| 
;* --------------------------------------------------------------------------*
$C$L23:    
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 246,column 4,is_stmt,isa 0
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 253,column 4,is_stmt,isa 0
        AND.W     #65528,&0x184         ; [] |253| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 254,column 4,is_stmt,isa 0
        OR.W      0(SP),&0x184          ; [] |254| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 255,column 4,is_stmt,isa 0
        MOV.W     #65528,r15            ; [] |255| 
        AND.W     4(SP),r15             ; [] |255| 
        OR.W      2(SP),r15             ; [] |255| 
        MOV.W     r15,&0x186            ; [] |255| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 257,column 4,is_stmt,isa 0
        JMP       $C$L25                ; [] |257| 
                                          ; [] |257| 
;* --------------------------------------------------------------------------*
;* --------------------------------------------------------------------------*
$C$L24:    
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 212,column 2,is_stmt,isa 0
        MOV.B     6(SP),r15             ; [] |212| 
        SUB.W     #1,r15                ; [] |212| 
        JEQ       $C$L21                ; [] |212| 
                                          ; [] |212| 
;* --------------------------------------------------------------------------*
        SUB.W     #1,r15                ; [] |212| 
        JEQ       $C$L23                ; [] |212| 
                                          ; [] |212| 
;* --------------------------------------------------------------------------*
        SUB.W     #2,r15                ; [] |212| 
        JEQ       $C$L22                ; [] |212| 
                                          ; [] |212| 
;* --------------------------------------------------------------------------*
$C$L25:    
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 261,column 2,is_stmt,isa 0
        MOV.B     #0,&0x181             ; [] |261| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 263,column 1,is_stmt,isa 0
        ADD.W     #8,SP                 ; [] 
	.dwcfi	cfa_offset, 2
$C$DW$45	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$45, DW_AT_low_pc(0x00)
	.dwattr $C$DW$45, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$35, DW_AT_TI_end_file("../driverlib/MSP430FR57xx/cs.c")
	.dwattr $C$DW$35, DW_AT_TI_end_line(0x107)
	.dwattr $C$DW$35, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$35

	.sect	".text:CS_turnOnXT1"
	.clink
	.global	CS_turnOnXT1

$C$DW$46	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$46, DW_AT_name("CS_turnOnXT1")
	.dwattr $C$DW$46, DW_AT_low_pc(CS_turnOnXT1)
	.dwattr $C$DW$46, DW_AT_high_pc(0x00)
	.dwattr $C$DW$46, DW_AT_TI_symbol_name("CS_turnOnXT1")
	.dwattr $C$DW$46, DW_AT_external
	.dwattr $C$DW$46, DW_AT_TI_begin_file("../driverlib/MSP430FR57xx/cs.c")
	.dwattr $C$DW$46, DW_AT_TI_begin_line(0x109)
	.dwattr $C$DW$46, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$46, DW_AT_decl_file("../driverlib/MSP430FR57xx/cs.c")
	.dwattr $C$DW$46, DW_AT_decl_line(0x109)
	.dwattr $C$DW$46, DW_AT_decl_column(0x06)
	.dwattr $C$DW$46, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 267,column 1,is_stmt,address CS_turnOnXT1,isa 0

	.dwfde $C$DW$CIE, CS_turnOnXT1
$C$DW$47	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$47, DW_AT_name("xt1drive")
	.dwattr $C$DW$47, DW_AT_TI_symbol_name("xt1drive")
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$47, DW_AT_location[DW_OP_reg12]


;*****************************************************************************
;* FUNCTION NAME: CS_turnOnXT1                                               *
;*                                                                           *
;*   Regs Modified     : SP,SR,r15                                           *
;*   Regs Used         : SP,SR,r12,r15                                       *
;*   Local Frame Size  : 0 Args + 2 Auto + 0 Save = 2 byte                   *
;*****************************************************************************
CS_turnOnXT1:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
        SUB.W     #2,SP                 ; [] 
	.dwcfi	cfa_offset, 4
$C$DW$48	.dwtag  DW_TAG_variable
	.dwattr $C$DW$48, DW_AT_name("xt1drive")
	.dwattr $C$DW$48, DW_AT_TI_symbol_name("xt1drive")
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$48, DW_AT_location[DW_OP_breg1 0]

        MOV.W     r12,0(SP)             ; [] |267| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 268,column 2,is_stmt,isa 0
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 270,column 5,is_stmt,isa 0
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 276,column 2,is_stmt,isa 0
        MOV.W     #42240,&0x180         ; [] |276| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 279,column 5,is_stmt,isa 0
        BIC.W     #1,&0x188             ; [] |279| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 282,column 5,is_stmt,isa 0
        OR.W      #192,&0x188           ; [] |282| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 285,column 2,is_stmt,isa 0
        TST.W     &privateXT1ClockFrequency+2 ; [] |285| 
        JNE       $C$L26                ; [] |285| 
                                          ; [] |285| 
;* --------------------------------------------------------------------------*
        CMP.W     #50001,&privateXT1ClockFrequency+0 ; [] |285| 
        JLO       $C$L27                ; [] |285| 
                                          ; [] |285| 
;* --------------------------------------------------------------------------*
$C$L26:    
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 286,column 3,is_stmt,isa 0
        OR.W      #32,&0x188            ; [] |286| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 287,column 3,is_stmt,isa 0
        AND.W     #65519,&0x188         ; [] |287| 
        JMP       $C$L29                ; [] 
                                          ; [] 
;* --------------------------------------------------------------------------*
$C$L27:    
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 289,column 3,is_stmt,isa 0
        AND.W     #65487,&0x188         ; [] |289| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 293,column 5,is_stmt,isa 0
        JMP       $C$L29                ; [] |293| 
                                          ; [] |293| 
;* --------------------------------------------------------------------------*
$C$L28:    
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 296,column 9,is_stmt,isa 0
        BIC.B     #1,&0x18a             ; [] |296| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 299,column 9,is_stmt,isa 0
        BIC.B     #2,&0x102             ; [] |299| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP $C$L29
;* --------------------------------------------------------------------------*
$C$L29:    
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 293,column 5,is_stmt,isa 0
        BIT.B     #1,&0x18a             ; [] |293| 
        JNE       $C$L28                ; [] |293| 
                                          ; [] |293| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 303,column 5,is_stmt,isa 0
        MOV.W     #65343,r15            ; [] |303| 
        AND.W     &0x188,r15            ; [] |303| 
        OR.W      0(SP),r15             ; [] |303| 
        MOV.W     r15,&0x188            ; [] |303| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 309,column 2,is_stmt,isa 0
        MOV.B     #0,&0x181             ; [] |309| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 311,column 1,is_stmt,isa 0
        ADD.W     #2,SP                 ; [] 
	.dwcfi	cfa_offset, 2
$C$DW$49	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$49, DW_AT_low_pc(0x00)
	.dwattr $C$DW$49, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$46, DW_AT_TI_end_file("../driverlib/MSP430FR57xx/cs.c")
	.dwattr $C$DW$46, DW_AT_TI_end_line(0x137)
	.dwattr $C$DW$46, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$46

	.sect	".text:CS_turnOnSMCLK"
	.clink
	.global	CS_turnOnSMCLK

$C$DW$50	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$50, DW_AT_name("CS_turnOnSMCLK")
	.dwattr $C$DW$50, DW_AT_low_pc(CS_turnOnSMCLK)
	.dwattr $C$DW$50, DW_AT_high_pc(0x00)
	.dwattr $C$DW$50, DW_AT_TI_symbol_name("CS_turnOnSMCLK")
	.dwattr $C$DW$50, DW_AT_external
	.dwattr $C$DW$50, DW_AT_TI_begin_file("../driverlib/MSP430FR57xx/cs.c")
	.dwattr $C$DW$50, DW_AT_TI_begin_line(0x139)
	.dwattr $C$DW$50, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$50, DW_AT_decl_file("../driverlib/MSP430FR57xx/cs.c")
	.dwattr $C$DW$50, DW_AT_decl_line(0x139)
	.dwattr $C$DW$50, DW_AT_decl_column(0x06)
	.dwattr $C$DW$50, DW_AT_TI_max_frame_size(0x02)
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 314,column 1,is_stmt,address CS_turnOnSMCLK,isa 0

	.dwfde $C$DW$CIE, CS_turnOnSMCLK

;*****************************************************************************
;* FUNCTION NAME: CS_turnOnSMCLK                                             *
;*                                                                           *
;*   Regs Modified     : SP                                                  *
;*   Regs Used         : SP                                                  *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
CS_turnOnSMCLK:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 316,column 5,is_stmt,isa 0
        MOV.W     #42240,&0x180         ; [] |316| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 318,column 5,is_stmt,isa 0
        BIC.W     #2,&0x188             ; [] |318| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 321,column 5,is_stmt,isa 0
        MOV.B     #0,&0x181             ; [] |321| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 322,column 1,is_stmt,isa 0
$C$DW$51	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$51, DW_AT_low_pc(0x00)
	.dwattr $C$DW$51, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$50, DW_AT_TI_end_file("../driverlib/MSP430FR57xx/cs.c")
	.dwattr $C$DW$50, DW_AT_TI_end_line(0x142)
	.dwattr $C$DW$50, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$50

	.sect	".text:CS_turnOffSMCLK"
	.clink
	.global	CS_turnOffSMCLK

$C$DW$52	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$52, DW_AT_name("CS_turnOffSMCLK")
	.dwattr $C$DW$52, DW_AT_low_pc(CS_turnOffSMCLK)
	.dwattr $C$DW$52, DW_AT_high_pc(0x00)
	.dwattr $C$DW$52, DW_AT_TI_symbol_name("CS_turnOffSMCLK")
	.dwattr $C$DW$52, DW_AT_external
	.dwattr $C$DW$52, DW_AT_TI_begin_file("../driverlib/MSP430FR57xx/cs.c")
	.dwattr $C$DW$52, DW_AT_TI_begin_line(0x144)
	.dwattr $C$DW$52, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$52, DW_AT_decl_file("../driverlib/MSP430FR57xx/cs.c")
	.dwattr $C$DW$52, DW_AT_decl_line(0x144)
	.dwattr $C$DW$52, DW_AT_decl_column(0x06)
	.dwattr $C$DW$52, DW_AT_TI_max_frame_size(0x02)
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 325,column 1,is_stmt,address CS_turnOffSMCLK,isa 0

	.dwfde $C$DW$CIE, CS_turnOffSMCLK

;*****************************************************************************
;* FUNCTION NAME: CS_turnOffSMCLK                                            *
;*                                                                           *
;*   Regs Modified     : SP                                                  *
;*   Regs Used         : SP                                                  *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
CS_turnOffSMCLK:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 327,column 5,is_stmt,isa 0
        MOV.W     #42240,&0x180         ; [] |327| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 329,column 5,is_stmt,isa 0
        OR.W      #2,&0x188             ; [] |329| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 332,column 5,is_stmt,isa 0
        MOV.B     #0,&0x181             ; [] |332| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 333,column 1,is_stmt,isa 0
$C$DW$53	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$53, DW_AT_low_pc(0x00)
	.dwattr $C$DW$53, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$52, DW_AT_TI_end_file("../driverlib/MSP430FR57xx/cs.c")
	.dwattr $C$DW$52, DW_AT_TI_end_line(0x14d)
	.dwattr $C$DW$52, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$52

	.sect	".text:CS_bypassXT1"
	.clink
	.global	CS_bypassXT1

$C$DW$54	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$54, DW_AT_name("CS_bypassXT1")
	.dwattr $C$DW$54, DW_AT_low_pc(CS_bypassXT1)
	.dwattr $C$DW$54, DW_AT_high_pc(0x00)
	.dwattr $C$DW$54, DW_AT_TI_symbol_name("CS_bypassXT1")
	.dwattr $C$DW$54, DW_AT_external
	.dwattr $C$DW$54, DW_AT_TI_begin_file("../driverlib/MSP430FR57xx/cs.c")
	.dwattr $C$DW$54, DW_AT_TI_begin_line(0x14f)
	.dwattr $C$DW$54, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$54, DW_AT_decl_file("../driverlib/MSP430FR57xx/cs.c")
	.dwattr $C$DW$54, DW_AT_decl_line(0x14f)
	.dwattr $C$DW$54, DW_AT_decl_column(0x06)
	.dwattr $C$DW$54, DW_AT_TI_max_frame_size(0x02)
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 336,column 1,is_stmt,address CS_bypassXT1,isa 0

	.dwfde $C$DW$CIE, CS_bypassXT1

;*****************************************************************************
;* FUNCTION NAME: CS_bypassXT1                                               *
;*                                                                           *
;*   Regs Modified     : SP,SR                                               *
;*   Regs Used         : SP,SR                                               *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
CS_bypassXT1:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 338,column 2,is_stmt,isa 0
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 341,column 2,is_stmt,isa 0
        MOV.W     #42240,&0x180         ; [] |341| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 343,column 2,is_stmt,isa 0
        TST.W     &privateXT1ClockFrequency+2 ; [] |343| 
        JNE       $C$L30                ; [] |343| 
                                          ; [] |343| 
;* --------------------------------------------------------------------------*
        CMP.W     #50001,&privateXT1ClockFrequency+0 ; [] |343| 
        JLO       $C$L31                ; [] |343| 
                                          ; [] |343| 
;* --------------------------------------------------------------------------*
$C$L30:    
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 345,column 3,is_stmt,isa 0
        OR.W      #49,&0x188            ; [] |345| 
        JMP       $C$L32                ; [] 
                                          ; [] 
;* --------------------------------------------------------------------------*
$C$L31:    
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 348,column 3,is_stmt,isa 0
        AND.W     #65503,&0x188         ; [] |348| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 349,column 3,is_stmt,isa 0
        OR.W      #17,&0x188            ; [] |349| 
;* --------------------------------------------------------------------------*
$C$L32:    
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 353,column 2,is_stmt,isa 0
        OR.W      #17,&0x188            ; [] |353| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 356,column 2,is_stmt,isa 0
        JMP       $C$L34                ; [] |356| 
                                          ; [] |356| 
;* --------------------------------------------------------------------------*
$C$L33:    
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 359,column 3,is_stmt,isa 0
        BIC.B     #1,&0x18a             ; [] |359| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 364,column 3,is_stmt,isa 0
        BIC.B     #2,&0x102             ; [] |364| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP $C$L34
;* --------------------------------------------------------------------------*
$C$L34:    
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 356,column 2,is_stmt,isa 0
        BIT.B     #1,&0x18a             ; [] |356| 
        JNE       $C$L33                ; [] |356| 
                                          ; [] |356| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 367,column 2,is_stmt,isa 0
        MOV.B     #0,&0x181             ; [] |367| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 368,column 1,is_stmt,isa 0
$C$DW$55	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$55, DW_AT_low_pc(0x00)
	.dwattr $C$DW$55, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$54, DW_AT_TI_end_file("../driverlib/MSP430FR57xx/cs.c")
	.dwattr $C$DW$54, DW_AT_TI_end_line(0x170)
	.dwattr $C$DW$54, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$54

	.sect	".text:CS_turnOnXT1WithTimeout"
	.clink
	.global	CS_turnOnXT1WithTimeout

$C$DW$56	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$56, DW_AT_name("CS_turnOnXT1WithTimeout")
	.dwattr $C$DW$56, DW_AT_low_pc(CS_turnOnXT1WithTimeout)
	.dwattr $C$DW$56, DW_AT_high_pc(0x00)
	.dwattr $C$DW$56, DW_AT_TI_symbol_name("CS_turnOnXT1WithTimeout")
	.dwattr $C$DW$56, DW_AT_external
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$154)
	.dwattr $C$DW$56, DW_AT_TI_begin_file("../driverlib/MSP430FR57xx/cs.c")
	.dwattr $C$DW$56, DW_AT_TI_begin_line(0x172)
	.dwattr $C$DW$56, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$56, DW_AT_decl_file("../driverlib/MSP430FR57xx/cs.c")
	.dwattr $C$DW$56, DW_AT_decl_line(0x172)
	.dwattr $C$DW$56, DW_AT_decl_column(0x06)
	.dwattr $C$DW$56, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 373,column 1,is_stmt,address CS_turnOnXT1WithTimeout,isa 0

	.dwfde $C$DW$CIE, CS_turnOnXT1WithTimeout
$C$DW$57	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$57, DW_AT_name("xt1drive")
	.dwattr $C$DW$57, DW_AT_TI_symbol_name("xt1drive")
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$57, DW_AT_location[DW_OP_reg12]

$C$DW$58	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$58, DW_AT_name("timeout")
	.dwattr $C$DW$58, DW_AT_TI_symbol_name("timeout")
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$58, DW_AT_location[DW_OP_reg13]


;*****************************************************************************
;* FUNCTION NAME: CS_turnOnXT1WithTimeout                                    *
;*                                                                           *
;*   Regs Modified     : SP,SR,r12,r15                                       *
;*   Regs Used         : SP,SR,r12,r13,r14,r15                               *
;*   Local Frame Size  : 0 Args + 6 Auto + 0 Save = 6 byte                   *
;*****************************************************************************
CS_turnOnXT1WithTimeout:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
        SUB.W     #6,SP                 ; [] 
	.dwcfi	cfa_offset, 8
$C$DW$59	.dwtag  DW_TAG_variable
	.dwattr $C$DW$59, DW_AT_name("timeout")
	.dwattr $C$DW$59, DW_AT_TI_symbol_name("timeout")
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$59, DW_AT_location[DW_OP_breg1 0]

$C$DW$60	.dwtag  DW_TAG_variable
	.dwattr $C$DW$60, DW_AT_name("xt1drive")
	.dwattr $C$DW$60, DW_AT_TI_symbol_name("xt1drive")
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$60, DW_AT_location[DW_OP_breg1 4]

        MOV.W     r13,0(SP)             ; [] |373| 
        MOV.W     r14,2(SP)             ; [] |373| 
        MOV.W     r12,4(SP)             ; [] |373| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 374,column 2,is_stmt,isa 0
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 376,column 2,is_stmt,isa 0
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 381,column 5,is_stmt,isa 0
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 384,column 2,is_stmt,isa 0
        MOV.W     #42240,&0x180         ; [] |384| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 387,column 5,is_stmt,isa 0
        BIC.W     #1,&0x188             ; [] |387| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 390,column 2,is_stmt,isa 0
        OR.W      #192,&0x188           ; [] |390| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 393,column 2,is_stmt,isa 0
        TST.W     &privateXT1ClockFrequency+2 ; [] |393| 
        JNE       $C$L35                ; [] |393| 
                                          ; [] |393| 
;* --------------------------------------------------------------------------*
        CMP.W     #50001,&privateXT1ClockFrequency+0 ; [] |393| 
        JLO       $C$L36                ; [] |393| 
                                          ; [] |393| 
;* --------------------------------------------------------------------------*
$C$L35:    
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 394,column 3,is_stmt,isa 0
        OR.W      #32,&0x188            ; [] |394| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 395,column 3,is_stmt,isa 0
        AND.W     #65519,&0x188         ; [] |395| 
        JMP       $C$L38                ; [] 
                                          ; [] 
;* --------------------------------------------------------------------------*
$C$L36:    
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 398,column 3,is_stmt,isa 0
        AND.W     #65487,&0x188         ; [] |398| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 401,column 2,is_stmt,isa 0
        JMP       $C$L38                ; [] |401| 
                                          ; [] |401| 
;* --------------------------------------------------------------------------*
$C$L37:    
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 404,column 3,is_stmt,isa 0
        BIC.B     #1,&0x18a             ; [] |404| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 409,column 3,is_stmt,isa 0
        BIC.B     #2,&0x102             ; [] |409| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP $C$L38
;* --------------------------------------------------------------------------*
$C$L38:    
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 401,column 9,is_stmt,isa 0
        BIT.B     #1,&0x18a             ; [] |401| 
        JEQ       $C$L39                ; [] |401| 
                                          ; [] |401| 
;* --------------------------------------------------------------------------*
        SUB.W     #1,0(SP)              ; [] |401| 
        SUBC.W    #0,2(SP)              ; [] |401| 
        JNE       $C$L37                ; [] |401| 
                                          ; [] |401| 
;* --------------------------------------------------------------------------*
        TST.W     0(SP)                 ; [] |401| 
        JNE       $C$L37                ; [] |401| 
                                          ; [] |401| 
;* --------------------------------------------------------------------------*
$C$L39:    
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 413,column 2,is_stmt,isa 0
        TST.W     2(SP)                 ; [] |413| 
        JNE       $C$L40                ; [] |413| 
                                          ; [] |413| 
;* --------------------------------------------------------------------------*
        TST.W     0(SP)                 ; [] |413| 
        JEQ       $C$L41                ; [] |413| 
                                          ; [] |413| 
;* --------------------------------------------------------------------------*
$C$L40:    
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 416,column 3,is_stmt,isa 0
        MOV.W     #65343,r15            ; [] |416| 
        AND.W     &0x188,r15            ; [] |416| 
        OR.W      4(SP),r15             ; [] |416| 
        MOV.W     r15,&0x188            ; [] |416| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 421,column 3,is_stmt,isa 0
        MOV.B     #0,&0x181             ; [] |421| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 422,column 3,is_stmt,isa 0
        MOV.B     #1,r12                ; [] |422| 
        JMP       $C$L42                ; [] |422| 
                                          ; [] |422| 
;* --------------------------------------------------------------------------*
$C$L41:    
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 425,column 3,is_stmt,isa 0
        MOV.B     #0,&0x181             ; [] |425| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 426,column 3,is_stmt,isa 0
        MOV.B     #0,r12                ; [] |426| 
;* --------------------------------------------------------------------------*
$C$L42:    
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 428,column 1,is_stmt,isa 0
        ADD.W     #6,SP                 ; [] 
	.dwcfi	cfa_offset, 2
$C$DW$61	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$61, DW_AT_low_pc(0x00)
	.dwattr $C$DW$61, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$56, DW_AT_TI_end_file("../driverlib/MSP430FR57xx/cs.c")
	.dwattr $C$DW$56, DW_AT_TI_end_line(0x1ac)
	.dwattr $C$DW$56, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$56

	.sect	".text:CS_bypassXT1WithTimeout"
	.clink
	.global	CS_bypassXT1WithTimeout

$C$DW$62	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$62, DW_AT_name("CS_bypassXT1WithTimeout")
	.dwattr $C$DW$62, DW_AT_low_pc(CS_bypassXT1WithTimeout)
	.dwattr $C$DW$62, DW_AT_high_pc(0x00)
	.dwattr $C$DW$62, DW_AT_TI_symbol_name("CS_bypassXT1WithTimeout")
	.dwattr $C$DW$62, DW_AT_external
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$154)
	.dwattr $C$DW$62, DW_AT_TI_begin_file("../driverlib/MSP430FR57xx/cs.c")
	.dwattr $C$DW$62, DW_AT_TI_begin_line(0x1ae)
	.dwattr $C$DW$62, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$62, DW_AT_decl_file("../driverlib/MSP430FR57xx/cs.c")
	.dwattr $C$DW$62, DW_AT_decl_line(0x1ae)
	.dwattr $C$DW$62, DW_AT_decl_column(0x06)
	.dwattr $C$DW$62, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 432,column 1,is_stmt,address CS_bypassXT1WithTimeout,isa 0

	.dwfde $C$DW$CIE, CS_bypassXT1WithTimeout
$C$DW$63	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$63, DW_AT_name("timeout")
	.dwattr $C$DW$63, DW_AT_TI_symbol_name("timeout")
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$63, DW_AT_location[DW_OP_reg12]


;*****************************************************************************
;* FUNCTION NAME: CS_bypassXT1WithTimeout                                    *
;*                                                                           *
;*   Regs Modified     : SP,SR,r12                                           *
;*   Regs Used         : SP,SR,r12,r13                                       *
;*   Local Frame Size  : 0 Args + 4 Auto + 0 Save = 4 byte                   *
;*****************************************************************************
CS_bypassXT1WithTimeout:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
        SUB.W     #4,SP                 ; [] 
	.dwcfi	cfa_offset, 6
$C$DW$64	.dwtag  DW_TAG_variable
	.dwattr $C$DW$64, DW_AT_name("timeout")
	.dwattr $C$DW$64, DW_AT_TI_symbol_name("timeout")
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$64, DW_AT_location[DW_OP_breg1 0]

        MOV.W     r12,0(SP)             ; [] |432| 
        MOV.W     r13,2(SP)             ; [] |432| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 433,column 5,is_stmt,isa 0
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 435,column 5,is_stmt,isa 0
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 438,column 2,is_stmt,isa 0
        MOV.W     #42240,&0x180         ; [] |438| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 440,column 2,is_stmt,isa 0
        TST.W     &privateXT1ClockFrequency+2 ; [] |440| 
        JNE       $C$L43                ; [] |440| 
                                          ; [] |440| 
;* --------------------------------------------------------------------------*
        CMP.W     #50001,&privateXT1ClockFrequency+0 ; [] |440| 
        JLO       $C$L44                ; [] |440| 
                                          ; [] |440| 
;* --------------------------------------------------------------------------*
$C$L43:    
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 442,column 3,is_stmt,isa 0
        OR.W      #49,&0x188            ; [] |442| 
        JMP       $C$L46                ; [] 
                                          ; [] 
;* --------------------------------------------------------------------------*
$C$L44:    
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 445,column 3,is_stmt,isa 0
        AND.W     #65503,&0x188         ; [] |445| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 446,column 3,is_stmt,isa 0
        OR.W      #17,&0x188            ; [] |446| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 449,column 2,is_stmt,isa 0
        JMP       $C$L46                ; [] |449| 
                                          ; [] |449| 
;* --------------------------------------------------------------------------*
$C$L45:    
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 452,column 3,is_stmt,isa 0
        BIC.B     #1,&0x18a             ; [] |452| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 457,column 3,is_stmt,isa 0
        BIC.B     #2,&0x102             ; [] |457| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP $C$L46
;* --------------------------------------------------------------------------*
$C$L46:    
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 449,column 9,is_stmt,isa 0
        BIT.B     #1,&0x18a             ; [] |449| 
        JEQ       $C$L47                ; [] |449| 
                                          ; [] |449| 
;* --------------------------------------------------------------------------*
        SUB.W     #1,0(SP)              ; [] |449| 
        SUBC.W    #0,2(SP)              ; [] |449| 
        JNE       $C$L45                ; [] |449| 
                                          ; [] |449| 
;* --------------------------------------------------------------------------*
        TST.W     0(SP)                 ; [] |449| 
        JNE       $C$L45                ; [] |449| 
                                          ; [] |449| 
;* --------------------------------------------------------------------------*
$C$L47:    
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 462,column 2,is_stmt,isa 0
        MOV.B     #0,&0x181             ; [] |462| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 464,column 5,is_stmt,isa 0
        TST.W     2(SP)                 ; [] |464| 
        JNE       $C$L48                ; [] |464| 
                                          ; [] |464| 
;* --------------------------------------------------------------------------*
        TST.W     0(SP)                 ; [] |464| 
        JEQ       $C$L49                ; [] |464| 
                                          ; [] |464| 
;* --------------------------------------------------------------------------*
$C$L48:    
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 465,column 9,is_stmt,isa 0
        MOV.B     #1,r12                ; [] |465| 
        JMP       $C$L50                ; [] |465| 
                                          ; [] |465| 
;* --------------------------------------------------------------------------*
$C$L49:    
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 467,column 9,is_stmt,isa 0
        MOV.B     #0,r12                ; [] |467| 
;* --------------------------------------------------------------------------*
$C$L50:    
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 469,column 1,is_stmt,isa 0
        ADD.W     #4,SP                 ; [] 
	.dwcfi	cfa_offset, 2
$C$DW$65	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$65, DW_AT_low_pc(0x00)
	.dwattr $C$DW$65, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$62, DW_AT_TI_end_file("../driverlib/MSP430FR57xx/cs.c")
	.dwattr $C$DW$62, DW_AT_TI_end_line(0x1d5)
	.dwattr $C$DW$62, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$62

	.sect	".text:CS_turnOffXT1"
	.clink
	.global	CS_turnOffXT1

$C$DW$66	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$66, DW_AT_name("CS_turnOffXT1")
	.dwattr $C$DW$66, DW_AT_low_pc(CS_turnOffXT1)
	.dwattr $C$DW$66, DW_AT_high_pc(0x00)
	.dwattr $C$DW$66, DW_AT_TI_symbol_name("CS_turnOffXT1")
	.dwattr $C$DW$66, DW_AT_external
	.dwattr $C$DW$66, DW_AT_TI_begin_file("../driverlib/MSP430FR57xx/cs.c")
	.dwattr $C$DW$66, DW_AT_TI_begin_line(0x1d7)
	.dwattr $C$DW$66, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$66, DW_AT_decl_file("../driverlib/MSP430FR57xx/cs.c")
	.dwattr $C$DW$66, DW_AT_decl_line(0x1d7)
	.dwattr $C$DW$66, DW_AT_decl_column(0x06)
	.dwattr $C$DW$66, DW_AT_TI_max_frame_size(0x02)
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 472,column 1,is_stmt,address CS_turnOffXT1,isa 0

	.dwfde $C$DW$CIE, CS_turnOffXT1

;*****************************************************************************
;* FUNCTION NAME: CS_turnOffXT1                                              *
;*                                                                           *
;*   Regs Modified     : SP                                                  *
;*   Regs Used         : SP                                                  *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
CS_turnOffXT1:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 474,column 2,is_stmt,isa 0
        MOV.W     #42240,&0x180         ; [] |474| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 476,column 5,is_stmt,isa 0
        OR.W      #1,&0x188             ; [] |476| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 478,column 2,is_stmt,isa 0
        MOV.B     #0,&0x181             ; [] |478| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 479,column 1,is_stmt,isa 0
$C$DW$67	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$67, DW_AT_low_pc(0x00)
	.dwattr $C$DW$67, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$66, DW_AT_TI_end_file("../driverlib/MSP430FR57xx/cs.c")
	.dwattr $C$DW$66, DW_AT_TI_end_line(0x1df)
	.dwattr $C$DW$66, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$66

	.sect	".text:CS_turnOnXT2"
	.clink
	.global	CS_turnOnXT2

$C$DW$68	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$68, DW_AT_name("CS_turnOnXT2")
	.dwattr $C$DW$68, DW_AT_low_pc(CS_turnOnXT2)
	.dwattr $C$DW$68, DW_AT_high_pc(0x00)
	.dwattr $C$DW$68, DW_AT_TI_symbol_name("CS_turnOnXT2")
	.dwattr $C$DW$68, DW_AT_external
	.dwattr $C$DW$68, DW_AT_TI_begin_file("../driverlib/MSP430FR57xx/cs.c")
	.dwattr $C$DW$68, DW_AT_TI_begin_line(0x1e1)
	.dwattr $C$DW$68, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$68, DW_AT_decl_file("../driverlib/MSP430FR57xx/cs.c")
	.dwattr $C$DW$68, DW_AT_decl_line(0x1e1)
	.dwattr $C$DW$68, DW_AT_decl_column(0x06)
	.dwattr $C$DW$68, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 483,column 1,is_stmt,address CS_turnOnXT2,isa 0

	.dwfde $C$DW$CIE, CS_turnOnXT2
$C$DW$69	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$69, DW_AT_name("xt2drive")
	.dwattr $C$DW$69, DW_AT_TI_symbol_name("xt2drive")
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$69, DW_AT_location[DW_OP_reg12]


;*****************************************************************************
;* FUNCTION NAME: CS_turnOnXT2                                               *
;*                                                                           *
;*   Regs Modified     : SP,SR,r15                                           *
;*   Regs Used         : SP,SR,r12,r15                                       *
;*   Local Frame Size  : 0 Args + 2 Auto + 0 Save = 2 byte                   *
;*****************************************************************************
CS_turnOnXT2:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
        SUB.W     #2,SP                 ; [] 
	.dwcfi	cfa_offset, 4
$C$DW$70	.dwtag  DW_TAG_variable
	.dwattr $C$DW$70, DW_AT_name("xt2drive")
	.dwattr $C$DW$70, DW_AT_TI_symbol_name("xt2drive")
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$70, DW_AT_location[DW_OP_breg1 0]

        MOV.W     r12,0(SP)             ; [] |483| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 484,column 2,is_stmt,isa 0
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 486,column 5,is_stmt,isa 0
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 492,column 2,is_stmt,isa 0
        MOV.W     #42240,&0x180         ; [] |492| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 495,column 5,is_stmt,isa 0
        AND.W     #65279,&0x188         ; [] |495| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 498,column 5,is_stmt,isa 0
        AND.W     #61439,&0x188         ; [] |498| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 500,column 5,is_stmt,isa 0
        JMP       $C$L52                ; [] |500| 
                                          ; [] |500| 
;* --------------------------------------------------------------------------*
$C$L51:    
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 502,column 6,is_stmt,isa 0
        BIC.B     #2,&0x18a             ; [] |502| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 505,column 6,is_stmt,isa 0
        BIC.B     #2,&0x102             ; [] |505| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP $C$L52
;* --------------------------------------------------------------------------*
$C$L52:    
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 500,column 5,is_stmt,isa 0
        BIT.B     #2,&0x18a             ; [] |500| 
        JNE       $C$L51                ; [] |500| 
                                          ; [] |500| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 508,column 5,is_stmt,isa 0
        MOV.W     #16383,r15            ; [] |508| 
        AND.W     &0x188,r15            ; [] |508| 
        OR.W      0(SP),r15             ; [] |508| 
        MOV.W     r15,&0x188            ; [] |508| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 513,column 2,is_stmt,isa 0
        MOV.B     #0,&0x181             ; [] |513| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 515,column 1,is_stmt,isa 0
        ADD.W     #2,SP                 ; [] 
	.dwcfi	cfa_offset, 2
$C$DW$71	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$71, DW_AT_low_pc(0x00)
	.dwattr $C$DW$71, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$68, DW_AT_TI_end_file("../driverlib/MSP430FR57xx/cs.c")
	.dwattr $C$DW$68, DW_AT_TI_end_line(0x203)
	.dwattr $C$DW$68, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$68

	.sect	".text:CS_bypassXT2"
	.clink
	.global	CS_bypassXT2

$C$DW$72	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$72, DW_AT_name("CS_bypassXT2")
	.dwattr $C$DW$72, DW_AT_low_pc(CS_bypassXT2)
	.dwattr $C$DW$72, DW_AT_high_pc(0x00)
	.dwattr $C$DW$72, DW_AT_TI_symbol_name("CS_bypassXT2")
	.dwattr $C$DW$72, DW_AT_external
	.dwattr $C$DW$72, DW_AT_TI_begin_file("../driverlib/MSP430FR57xx/cs.c")
	.dwattr $C$DW$72, DW_AT_TI_begin_line(0x205)
	.dwattr $C$DW$72, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$72, DW_AT_decl_file("../driverlib/MSP430FR57xx/cs.c")
	.dwattr $C$DW$72, DW_AT_decl_line(0x205)
	.dwattr $C$DW$72, DW_AT_decl_column(0x06)
	.dwattr $C$DW$72, DW_AT_TI_max_frame_size(0x02)
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 518,column 1,is_stmt,address CS_bypassXT2,isa 0

	.dwfde $C$DW$CIE, CS_bypassXT2

;*****************************************************************************
;* FUNCTION NAME: CS_bypassXT2                                               *
;*                                                                           *
;*   Regs Modified     : SP,SR                                               *
;*   Regs Used         : SP,SR                                               *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
CS_bypassXT2:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 520,column 2,is_stmt,isa 0
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 523,column 2,is_stmt,isa 0
        MOV.W     #42240,&0x180         ; [] |523| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 526,column 5,is_stmt,isa 0
        OR.W      #4352,&0x188          ; [] |526| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 528,column 3,is_stmt,isa 0
        JMP       $C$L54                ; [] |528| 
                                          ; [] |528| 
;* --------------------------------------------------------------------------*
$C$L53:    
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 530,column 6,is_stmt,isa 0
        BIC.B     #2,&0x18a             ; [] |530| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 533,column 6,is_stmt,isa 0
        BIC.B     #2,&0x102             ; [] |533| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP $C$L54
;* --------------------------------------------------------------------------*
$C$L54:    
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 528,column 3,is_stmt,isa 0
        BIT.B     #2,&0x18a             ; [] |528| 
        JNE       $C$L53                ; [] |528| 
                                          ; [] |528| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 537,column 2,is_stmt,isa 0
        MOV.B     #0,&0x181             ; [] |537| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 538,column 1,is_stmt,isa 0
$C$DW$73	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$73, DW_AT_low_pc(0x00)
	.dwattr $C$DW$73, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$72, DW_AT_TI_end_file("../driverlib/MSP430FR57xx/cs.c")
	.dwattr $C$DW$72, DW_AT_TI_end_line(0x21a)
	.dwattr $C$DW$72, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$72

	.sect	".text:CS_turnOnXT2WithTimeout"
	.clink
	.global	CS_turnOnXT2WithTimeout

$C$DW$74	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$74, DW_AT_name("CS_turnOnXT2WithTimeout")
	.dwattr $C$DW$74, DW_AT_low_pc(CS_turnOnXT2WithTimeout)
	.dwattr $C$DW$74, DW_AT_high_pc(0x00)
	.dwattr $C$DW$74, DW_AT_TI_symbol_name("CS_turnOnXT2WithTimeout")
	.dwattr $C$DW$74, DW_AT_external
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$154)
	.dwattr $C$DW$74, DW_AT_TI_begin_file("../driverlib/MSP430FR57xx/cs.c")
	.dwattr $C$DW$74, DW_AT_TI_begin_line(0x21c)
	.dwattr $C$DW$74, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$74, DW_AT_decl_file("../driverlib/MSP430FR57xx/cs.c")
	.dwattr $C$DW$74, DW_AT_decl_line(0x21c)
	.dwattr $C$DW$74, DW_AT_decl_column(0x06)
	.dwattr $C$DW$74, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 543,column 1,is_stmt,address CS_turnOnXT2WithTimeout,isa 0

	.dwfde $C$DW$CIE, CS_turnOnXT2WithTimeout
$C$DW$75	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$75, DW_AT_name("xt2drive")
	.dwattr $C$DW$75, DW_AT_TI_symbol_name("xt2drive")
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$75, DW_AT_location[DW_OP_reg12]

$C$DW$76	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$76, DW_AT_name("timeout")
	.dwattr $C$DW$76, DW_AT_TI_symbol_name("timeout")
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$76, DW_AT_location[DW_OP_reg13]


;*****************************************************************************
;* FUNCTION NAME: CS_turnOnXT2WithTimeout                                    *
;*                                                                           *
;*   Regs Modified     : SP,SR,r12,r15                                       *
;*   Regs Used         : SP,SR,r12,r13,r14,r15                               *
;*   Local Frame Size  : 0 Args + 6 Auto + 0 Save = 6 byte                   *
;*****************************************************************************
CS_turnOnXT2WithTimeout:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
        SUB.W     #6,SP                 ; [] 
	.dwcfi	cfa_offset, 8
$C$DW$77	.dwtag  DW_TAG_variable
	.dwattr $C$DW$77, DW_AT_name("timeout")
	.dwattr $C$DW$77, DW_AT_TI_symbol_name("timeout")
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$77, DW_AT_location[DW_OP_breg1 0]

$C$DW$78	.dwtag  DW_TAG_variable
	.dwattr $C$DW$78, DW_AT_name("xt2drive")
	.dwattr $C$DW$78, DW_AT_TI_symbol_name("xt2drive")
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$78, DW_AT_location[DW_OP_breg1 4]

        MOV.W     r13,0(SP)             ; [] |543| 
        MOV.W     r14,2(SP)             ; [] |543| 
        MOV.W     r12,4(SP)             ; [] |543| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 545,column 2,is_stmt,isa 0
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 547,column 5,is_stmt,isa 0
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 550,column 2,is_stmt,isa 0
        MOV.W     #42240,&0x180         ; [] |550| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 553,column 5,is_stmt,isa 0
        AND.W     #65279,&0x188         ; [] |553| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 556,column 5,is_stmt,isa 0
        AND.W     #61439,&0x188         ; [] |556| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 558,column 2,is_stmt,isa 0
        JMP       $C$L56                ; [] |558| 
                                          ; [] |558| 
;* --------------------------------------------------------------------------*
$C$L55:    
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 561,column 3,is_stmt,isa 0
        BIC.B     #2,&0x18a             ; [] |561| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 566,column 3,is_stmt,isa 0
        BIC.B     #2,&0x102             ; [] |566| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP $C$L56
;* --------------------------------------------------------------------------*
$C$L56:    
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 558,column 9,is_stmt,isa 0
        BIT.B     #2,&0x18a             ; [] |558| 
        JEQ       $C$L57                ; [] |558| 
                                          ; [] |558| 
;* --------------------------------------------------------------------------*
        SUB.W     #1,0(SP)              ; [] |558| 
        SUBC.W    #0,2(SP)              ; [] |558| 
        JNE       $C$L55                ; [] |558| 
                                          ; [] |558| 
;* --------------------------------------------------------------------------*
        TST.W     0(SP)                 ; [] |558| 
        JNE       $C$L55                ; [] |558| 
                                          ; [] |558| 
;* --------------------------------------------------------------------------*
$C$L57:    
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 570,column 5,is_stmt,isa 0
        TST.W     2(SP)                 ; [] |570| 
        JNE       $C$L58                ; [] |570| 
                                          ; [] |570| 
;* --------------------------------------------------------------------------*
        TST.W     0(SP)                 ; [] |570| 
        JEQ       $C$L59                ; [] |570| 
                                          ; [] |570| 
;* --------------------------------------------------------------------------*
$C$L58:    
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 572,column 6,is_stmt,isa 0
        MOV.W     #16383,r15            ; [] |572| 
        AND.W     &0x188,r15            ; [] |572| 
        OR.W      4(SP),r15             ; [] |572| 
        MOV.W     r15,&0x188            ; [] |572| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 578,column 9,is_stmt,isa 0
        MOV.B     #0,&0x181             ; [] |578| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 580,column 9,is_stmt,isa 0
        MOV.B     #1,r12                ; [] |580| 
        JMP       $C$L60                ; [] |580| 
                                          ; [] |580| 
;* --------------------------------------------------------------------------*
$C$L59:    
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 582,column 9,is_stmt,isa 0
        MOV.B     #0,r12                ; [] |582| 
;* --------------------------------------------------------------------------*
$C$L60:    
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 584,column 1,is_stmt,isa 0
        ADD.W     #6,SP                 ; [] 
	.dwcfi	cfa_offset, 2
$C$DW$79	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$79, DW_AT_low_pc(0x00)
	.dwattr $C$DW$79, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$74, DW_AT_TI_end_file("../driverlib/MSP430FR57xx/cs.c")
	.dwattr $C$DW$74, DW_AT_TI_end_line(0x248)
	.dwattr $C$DW$74, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$74

	.sect	".text:CS_bypassXT2WithTimeout"
	.clink
	.global	CS_bypassXT2WithTimeout

$C$DW$80	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$80, DW_AT_name("CS_bypassXT2WithTimeout")
	.dwattr $C$DW$80, DW_AT_low_pc(CS_bypassXT2WithTimeout)
	.dwattr $C$DW$80, DW_AT_high_pc(0x00)
	.dwattr $C$DW$80, DW_AT_TI_symbol_name("CS_bypassXT2WithTimeout")
	.dwattr $C$DW$80, DW_AT_external
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$154)
	.dwattr $C$DW$80, DW_AT_TI_begin_file("../driverlib/MSP430FR57xx/cs.c")
	.dwattr $C$DW$80, DW_AT_TI_begin_line(0x24a)
	.dwattr $C$DW$80, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$80, DW_AT_decl_file("../driverlib/MSP430FR57xx/cs.c")
	.dwattr $C$DW$80, DW_AT_decl_line(0x24a)
	.dwattr $C$DW$80, DW_AT_decl_column(0x06)
	.dwattr $C$DW$80, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 588,column 1,is_stmt,address CS_bypassXT2WithTimeout,isa 0

	.dwfde $C$DW$CIE, CS_bypassXT2WithTimeout
$C$DW$81	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$81, DW_AT_name("timeout")
	.dwattr $C$DW$81, DW_AT_TI_symbol_name("timeout")
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$81, DW_AT_location[DW_OP_reg12]


;*****************************************************************************
;* FUNCTION NAME: CS_bypassXT2WithTimeout                                    *
;*                                                                           *
;*   Regs Modified     : SP,SR,r12                                           *
;*   Regs Used         : SP,SR,r12,r13                                       *
;*   Local Frame Size  : 0 Args + 4 Auto + 0 Save = 4 byte                   *
;*****************************************************************************
CS_bypassXT2WithTimeout:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
        SUB.W     #4,SP                 ; [] 
	.dwcfi	cfa_offset, 6
$C$DW$82	.dwtag  DW_TAG_variable
	.dwattr $C$DW$82, DW_AT_name("timeout")
	.dwattr $C$DW$82, DW_AT_TI_symbol_name("timeout")
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$82, DW_AT_location[DW_OP_breg1 0]

        MOV.W     r12,0(SP)             ; [] |588| 
        MOV.W     r13,2(SP)             ; [] |588| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 590,column 2,is_stmt,isa 0
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 592,column 5,is_stmt,isa 0
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 595,column 2,is_stmt,isa 0
        MOV.W     #42240,&0x180         ; [] |595| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 598,column 5,is_stmt,isa 0
        OR.W      #4352,&0x188          ; [] |598| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 600,column 2,is_stmt,isa 0
        JMP       $C$L62                ; [] |600| 
                                          ; [] |600| 
;* --------------------------------------------------------------------------*
$C$L61:    
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 603,column 3,is_stmt,isa 0
        BIC.B     #2,&0x18a             ; [] |603| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 608,column 3,is_stmt,isa 0
        BIC.B     #2,&0x102             ; [] |608| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP $C$L62
;* --------------------------------------------------------------------------*
$C$L62:    
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 600,column 9,is_stmt,isa 0
        BIT.B     #2,&0x18a             ; [] |600| 
        JEQ       $C$L63                ; [] |600| 
                                          ; [] |600| 
;* --------------------------------------------------------------------------*
        SUB.W     #1,0(SP)              ; [] |600| 
        SUBC.W    #0,2(SP)              ; [] |600| 
        JNE       $C$L61                ; [] |600| 
                                          ; [] |600| 
;* --------------------------------------------------------------------------*
        TST.W     0(SP)                 ; [] |600| 
        JNE       $C$L61                ; [] |600| 
                                          ; [] |600| 
;* --------------------------------------------------------------------------*
$C$L63:    
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 613,column 2,is_stmt,isa 0
        MOV.B     #0,&0x181             ; [] |613| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 615,column 5,is_stmt,isa 0
        TST.W     2(SP)                 ; [] |615| 
        JNE       $C$L64                ; [] |615| 
                                          ; [] |615| 
;* --------------------------------------------------------------------------*
        TST.W     0(SP)                 ; [] |615| 
        JEQ       $C$L65                ; [] |615| 
                                          ; [] |615| 
;* --------------------------------------------------------------------------*
$C$L64:    
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 616,column 9,is_stmt,isa 0
        MOV.B     #1,r12                ; [] |616| 
        JMP       $C$L66                ; [] |616| 
                                          ; [] |616| 
;* --------------------------------------------------------------------------*
$C$L65:    
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 618,column 9,is_stmt,isa 0
        MOV.B     #0,r12                ; [] |618| 
;* --------------------------------------------------------------------------*
$C$L66:    
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 620,column 1,is_stmt,isa 0
        ADD.W     #4,SP                 ; [] 
	.dwcfi	cfa_offset, 2
$C$DW$83	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$83, DW_AT_low_pc(0x00)
	.dwattr $C$DW$83, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$80, DW_AT_TI_end_file("../driverlib/MSP430FR57xx/cs.c")
	.dwattr $C$DW$80, DW_AT_TI_end_line(0x26c)
	.dwattr $C$DW$80, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$80

	.sect	".text:CS_turnOffXT2"
	.clink
	.global	CS_turnOffXT2

$C$DW$84	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$84, DW_AT_name("CS_turnOffXT2")
	.dwattr $C$DW$84, DW_AT_low_pc(CS_turnOffXT2)
	.dwattr $C$DW$84, DW_AT_high_pc(0x00)
	.dwattr $C$DW$84, DW_AT_TI_symbol_name("CS_turnOffXT2")
	.dwattr $C$DW$84, DW_AT_external
	.dwattr $C$DW$84, DW_AT_TI_begin_file("../driverlib/MSP430FR57xx/cs.c")
	.dwattr $C$DW$84, DW_AT_TI_begin_line(0x26e)
	.dwattr $C$DW$84, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$84, DW_AT_decl_file("../driverlib/MSP430FR57xx/cs.c")
	.dwattr $C$DW$84, DW_AT_decl_line(0x26e)
	.dwattr $C$DW$84, DW_AT_decl_column(0x06)
	.dwattr $C$DW$84, DW_AT_TI_max_frame_size(0x02)
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 623,column 1,is_stmt,address CS_turnOffXT2,isa 0

	.dwfde $C$DW$CIE, CS_turnOffXT2

;*****************************************************************************
;* FUNCTION NAME: CS_turnOffXT2                                              *
;*                                                                           *
;*   Regs Modified     : SP                                                  *
;*   Regs Used         : SP                                                  *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
CS_turnOffXT2:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 625,column 2,is_stmt,isa 0
        MOV.W     #42240,&0x180         ; [] |625| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 628,column 5,is_stmt,isa 0
        OR.W      #256,&0x188           ; [] |628| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 631,column 2,is_stmt,isa 0
        MOV.B     #0,&0x181             ; [] |631| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 632,column 1,is_stmt,isa 0
$C$DW$85	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$85, DW_AT_low_pc(0x00)
	.dwattr $C$DW$85, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$84, DW_AT_TI_end_file("../driverlib/MSP430FR57xx/cs.c")
	.dwattr $C$DW$84, DW_AT_TI_end_line(0x278)
	.dwattr $C$DW$84, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$84

	.sect	".text:CS_enableClockRequest"
	.clink
	.global	CS_enableClockRequest

$C$DW$86	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$86, DW_AT_name("CS_enableClockRequest")
	.dwattr $C$DW$86, DW_AT_low_pc(CS_enableClockRequest)
	.dwattr $C$DW$86, DW_AT_high_pc(0x00)
	.dwattr $C$DW$86, DW_AT_TI_symbol_name("CS_enableClockRequest")
	.dwattr $C$DW$86, DW_AT_external
	.dwattr $C$DW$86, DW_AT_TI_begin_file("../driverlib/MSP430FR57xx/cs.c")
	.dwattr $C$DW$86, DW_AT_TI_begin_line(0x27a)
	.dwattr $C$DW$86, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$86, DW_AT_decl_file("../driverlib/MSP430FR57xx/cs.c")
	.dwattr $C$DW$86, DW_AT_decl_line(0x27a)
	.dwattr $C$DW$86, DW_AT_decl_column(0x06)
	.dwattr $C$DW$86, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 636,column 1,is_stmt,address CS_enableClockRequest,isa 0

	.dwfde $C$DW$CIE, CS_enableClockRequest
$C$DW$87	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$87, DW_AT_name("selectClock")
	.dwattr $C$DW$87, DW_AT_TI_symbol_name("selectClock")
	.dwattr $C$DW$87, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$87, DW_AT_location[DW_OP_reg12]


;*****************************************************************************
;* FUNCTION NAME: CS_enableClockRequest                                      *
;*                                                                           *
;*   Regs Modified     : SP,SR                                               *
;*   Regs Used         : SP,SR,r12                                           *
;*   Local Frame Size  : 0 Args + 2 Auto + 0 Save = 2 byte                   *
;*****************************************************************************
CS_enableClockRequest:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
        SUB.W     #2,SP                 ; [] 
	.dwcfi	cfa_offset, 4
$C$DW$88	.dwtag  DW_TAG_variable
	.dwattr $C$DW$88, DW_AT_name("selectClock")
	.dwattr $C$DW$88, DW_AT_TI_symbol_name("selectClock")
	.dwattr $C$DW$88, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$88, DW_AT_location[DW_OP_breg1 0]

        MOV.B     r12,0(SP)             ; [] |636| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 637,column 2,is_stmt,isa 0
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 644,column 2,is_stmt,isa 0
        MOV.W     #42240,&0x180         ; [] |644| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 646,column 5,is_stmt,isa 0
        OR.B      0(SP),&0x18c          ; [] |646| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 649,column 2,is_stmt,isa 0
        MOV.B     #0,&0x181             ; [] |649| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 650,column 1,is_stmt,isa 0
        ADD.W     #2,SP                 ; [] 
	.dwcfi	cfa_offset, 2
$C$DW$89	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$89, DW_AT_low_pc(0x00)
	.dwattr $C$DW$89, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$86, DW_AT_TI_end_file("../driverlib/MSP430FR57xx/cs.c")
	.dwattr $C$DW$86, DW_AT_TI_end_line(0x28a)
	.dwattr $C$DW$86, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$86

	.sect	".text:CS_disableClockRequest"
	.clink
	.global	CS_disableClockRequest

$C$DW$90	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$90, DW_AT_name("CS_disableClockRequest")
	.dwattr $C$DW$90, DW_AT_low_pc(CS_disableClockRequest)
	.dwattr $C$DW$90, DW_AT_high_pc(0x00)
	.dwattr $C$DW$90, DW_AT_TI_symbol_name("CS_disableClockRequest")
	.dwattr $C$DW$90, DW_AT_external
	.dwattr $C$DW$90, DW_AT_TI_begin_file("../driverlib/MSP430FR57xx/cs.c")
	.dwattr $C$DW$90, DW_AT_TI_begin_line(0x28c)
	.dwattr $C$DW$90, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$90, DW_AT_decl_file("../driverlib/MSP430FR57xx/cs.c")
	.dwattr $C$DW$90, DW_AT_decl_line(0x28c)
	.dwattr $C$DW$90, DW_AT_decl_column(0x06)
	.dwattr $C$DW$90, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 654,column 1,is_stmt,address CS_disableClockRequest,isa 0

	.dwfde $C$DW$CIE, CS_disableClockRequest
$C$DW$91	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$91, DW_AT_name("selectClock")
	.dwattr $C$DW$91, DW_AT_TI_symbol_name("selectClock")
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$91, DW_AT_location[DW_OP_reg12]


;*****************************************************************************
;* FUNCTION NAME: CS_disableClockRequest                                     *
;*                                                                           *
;*   Regs Modified     : SP,SR                                               *
;*   Regs Used         : SP,SR,r12                                           *
;*   Local Frame Size  : 0 Args + 2 Auto + 0 Save = 2 byte                   *
;*****************************************************************************
CS_disableClockRequest:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
        SUB.W     #2,SP                 ; [] 
	.dwcfi	cfa_offset, 4
$C$DW$92	.dwtag  DW_TAG_variable
	.dwattr $C$DW$92, DW_AT_name("selectClock")
	.dwattr $C$DW$92, DW_AT_TI_symbol_name("selectClock")
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$92, DW_AT_location[DW_OP_breg1 0]

        MOV.B     r12,0(SP)             ; [] |654| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 655,column 2,is_stmt,isa 0
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 662,column 2,is_stmt,isa 0
        MOV.W     #42240,&0x180         ; [] |662| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 664,column 5,is_stmt,isa 0
        BIC.B     0(SP),&0x18c          ; [] |664| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 667,column 2,is_stmt,isa 0
        MOV.B     #0,&0x181             ; [] |667| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 668,column 1,is_stmt,isa 0
        ADD.W     #2,SP                 ; [] 
	.dwcfi	cfa_offset, 2
$C$DW$93	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$93, DW_AT_low_pc(0x00)
	.dwattr $C$DW$93, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$90, DW_AT_TI_end_file("../driverlib/MSP430FR57xx/cs.c")
	.dwattr $C$DW$90, DW_AT_TI_end_line(0x29c)
	.dwattr $C$DW$90, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$90

	.sect	".text:CS_getFaultFlagStatus"
	.clink
	.global	CS_getFaultFlagStatus

$C$DW$94	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$94, DW_AT_name("CS_getFaultFlagStatus")
	.dwattr $C$DW$94, DW_AT_low_pc(CS_getFaultFlagStatus)
	.dwattr $C$DW$94, DW_AT_high_pc(0x00)
	.dwattr $C$DW$94, DW_AT_TI_symbol_name("CS_getFaultFlagStatus")
	.dwattr $C$DW$94, DW_AT_external
	.dwattr $C$DW$94, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$94, DW_AT_TI_begin_file("../driverlib/MSP430FR57xx/cs.c")
	.dwattr $C$DW$94, DW_AT_TI_begin_line(0x29e)
	.dwattr $C$DW$94, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$94, DW_AT_decl_file("../driverlib/MSP430FR57xx/cs.c")
	.dwattr $C$DW$94, DW_AT_decl_line(0x29e)
	.dwattr $C$DW$94, DW_AT_decl_column(0x09)
	.dwattr $C$DW$94, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 672,column 1,is_stmt,address CS_getFaultFlagStatus,isa 0

	.dwfde $C$DW$CIE, CS_getFaultFlagStatus
$C$DW$95	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$95, DW_AT_name("mask")
	.dwattr $C$DW$95, DW_AT_TI_symbol_name("mask")
	.dwattr $C$DW$95, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$95, DW_AT_location[DW_OP_reg12]


;*****************************************************************************
;* FUNCTION NAME: CS_getFaultFlagStatus                                      *
;*                                                                           *
;*   Regs Modified     : SP,SR,r12                                           *
;*   Regs Used         : SP,SR,r12                                           *
;*   Local Frame Size  : 0 Args + 2 Auto + 0 Save = 2 byte                   *
;*****************************************************************************
CS_getFaultFlagStatus:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
        SUB.W     #2,SP                 ; [] 
	.dwcfi	cfa_offset, 4
$C$DW$96	.dwtag  DW_TAG_variable
	.dwattr $C$DW$96, DW_AT_name("mask")
	.dwattr $C$DW$96, DW_AT_TI_symbol_name("mask")
	.dwattr $C$DW$96, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$96, DW_AT_location[DW_OP_breg1 0]

        MOV.B     r12,0(SP)             ; [] |672| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 673,column 5,is_stmt,isa 0
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 674,column 5,is_stmt,isa 0
        MOV.B     0(SP),r12             ; [] |674| 
        AND.B     &0x18a,r12            ; [] |674| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 675,column 1,is_stmt,isa 0
        ADD.W     #2,SP                 ; [] 
	.dwcfi	cfa_offset, 2
$C$DW$97	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$97, DW_AT_low_pc(0x00)
	.dwattr $C$DW$97, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$94, DW_AT_TI_end_file("../driverlib/MSP430FR57xx/cs.c")
	.dwattr $C$DW$94, DW_AT_TI_end_line(0x2a3)
	.dwattr $C$DW$94, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$94

	.sect	".text:CS_clearFaultFlag"
	.clink
	.global	CS_clearFaultFlag

$C$DW$98	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$98, DW_AT_name("CS_clearFaultFlag")
	.dwattr $C$DW$98, DW_AT_low_pc(CS_clearFaultFlag)
	.dwattr $C$DW$98, DW_AT_high_pc(0x00)
	.dwattr $C$DW$98, DW_AT_TI_symbol_name("CS_clearFaultFlag")
	.dwattr $C$DW$98, DW_AT_external
	.dwattr $C$DW$98, DW_AT_TI_begin_file("../driverlib/MSP430FR57xx/cs.c")
	.dwattr $C$DW$98, DW_AT_TI_begin_line(0x2a5)
	.dwattr $C$DW$98, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$98, DW_AT_decl_file("../driverlib/MSP430FR57xx/cs.c")
	.dwattr $C$DW$98, DW_AT_decl_line(0x2a5)
	.dwattr $C$DW$98, DW_AT_decl_column(0x06)
	.dwattr $C$DW$98, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 679,column 1,is_stmt,address CS_clearFaultFlag,isa 0

	.dwfde $C$DW$CIE, CS_clearFaultFlag
$C$DW$99	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$99, DW_AT_name("mask")
	.dwattr $C$DW$99, DW_AT_TI_symbol_name("mask")
	.dwattr $C$DW$99, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$99, DW_AT_location[DW_OP_reg12]


;*****************************************************************************
;* FUNCTION NAME: CS_clearFaultFlag                                          *
;*                                                                           *
;*   Regs Modified     : SP,SR                                               *
;*   Regs Used         : SP,SR,r12                                           *
;*   Local Frame Size  : 0 Args + 2 Auto + 0 Save = 2 byte                   *
;*****************************************************************************
CS_clearFaultFlag:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
        SUB.W     #2,SP                 ; [] 
	.dwcfi	cfa_offset, 4
$C$DW$100	.dwtag  DW_TAG_variable
	.dwattr $C$DW$100, DW_AT_name("mask")
	.dwattr $C$DW$100, DW_AT_TI_symbol_name("mask")
	.dwattr $C$DW$100, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$100, DW_AT_location[DW_OP_breg1 0]

        MOV.B     r12,0(SP)             ; [] |679| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 680,column 5,is_stmt,isa 0
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 683,column 2,is_stmt,isa 0
        MOV.W     #42240,&0x180         ; [] |683| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 685,column 5,is_stmt,isa 0
        BIC.B     0(SP),&0x18a          ; [] |685| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 688,column 2,is_stmt,isa 0
        MOV.B     #0,&0x181             ; [] |688| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 690,column 1,is_stmt,isa 0
        ADD.W     #2,SP                 ; [] 
	.dwcfi	cfa_offset, 2
$C$DW$101	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$101, DW_AT_low_pc(0x00)
	.dwattr $C$DW$101, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$98, DW_AT_TI_end_file("../driverlib/MSP430FR57xx/cs.c")
	.dwattr $C$DW$98, DW_AT_TI_end_line(0x2b2)
	.dwattr $C$DW$98, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$98

	.sect	".text:CS_getACLK"
	.clink
	.global	CS_getACLK

$C$DW$102	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$102, DW_AT_name("CS_getACLK")
	.dwattr $C$DW$102, DW_AT_low_pc(CS_getACLK)
	.dwattr $C$DW$102, DW_AT_high_pc(0x00)
	.dwattr $C$DW$102, DW_AT_TI_symbol_name("CS_getACLK")
	.dwattr $C$DW$102, DW_AT_external
	.dwattr $C$DW$102, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$102, DW_AT_TI_begin_file("../driverlib/MSP430FR57xx/cs.c")
	.dwattr $C$DW$102, DW_AT_TI_begin_line(0x2b4)
	.dwattr $C$DW$102, DW_AT_TI_begin_column(0x0a)
	.dwattr $C$DW$102, DW_AT_decl_file("../driverlib/MSP430FR57xx/cs.c")
	.dwattr $C$DW$102, DW_AT_decl_line(0x2b4)
	.dwattr $C$DW$102, DW_AT_decl_column(0x0a)
	.dwattr $C$DW$102, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 693,column 1,is_stmt,address CS_getACLK,isa 0

	.dwfde $C$DW$CIE, CS_getACLK

;*****************************************************************************
;* FUNCTION NAME: CS_getACLK                                                 *
;*                                                                           *
;*   Regs Modified     : SP,SR,r11,r12,r13,r14,r15                           *
;*   Regs Used         : SP,SR,r11,r12,r13,r14,r15                           *
;*   Local Frame Size  : 0 Args + 4 Auto + 0 Save = 4 byte                   *
;*****************************************************************************
CS_getACLK:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
        SUB.W     #4,SP                 ; [] 
	.dwcfi	cfa_offset, 6
$C$DW$103	.dwtag  DW_TAG_variable
	.dwattr $C$DW$103, DW_AT_name("ACLKSource")
	.dwattr $C$DW$103, DW_AT_TI_symbol_name("ACLKSource")
	.dwattr $C$DW$103, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$103, DW_AT_location[DW_OP_breg1 0]

$C$DW$104	.dwtag  DW_TAG_variable
	.dwattr $C$DW$104, DW_AT_name("ACLKSourceDivider")
	.dwattr $C$DW$104, DW_AT_TI_symbol_name("ACLKSourceDivider")
	.dwattr $C$DW$104, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$104, DW_AT_location[DW_OP_breg1 2]

	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 695,column 22,is_stmt,isa 0
        MOV.W     #1792,r12             ; [] |695| 
        AND.W     &0x184,r12            ; [] |695| 
        MOV.W     r12,0(SP)             ; [] |695| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 696,column 2,is_stmt,isa 0
        SWPB      r12                   ; [] |696| 
        MOV.B     r12,r12               ; [] |696| 
        MOV.W     r12,0(SP)             ; [] |696| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 699,column 29,is_stmt,isa 0
        MOV.W     #1792,r13             ; [] |699| 
        AND.W     &0x186,r13            ; [] |699| 
        MOV.W     r13,2(SP)             ; [] |699| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 700,column 2,is_stmt,isa 0
        SWPB      r13                   ; [] |700| 
        MOV.B     r13,r13               ; [] |700| 
        MOV.W     r13,2(SP)             ; [] |700| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 702,column 2,is_stmt,isa 0
$C$DW$105	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$105, DW_AT_low_pc(0x00)
	.dwattr $C$DW$105, DW_AT_name("privateCSComputeCLKFrequency")
	.dwattr $C$DW$105, DW_AT_TI_call

        CALL      #privateCSComputeCLKFrequency ; [] |702| 
                                          ; [] |702| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 705,column 1,is_stmt,isa 0
        ADD.W     #4,SP                 ; [] 
	.dwcfi	cfa_offset, 2
$C$DW$106	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$106, DW_AT_low_pc(0x00)
	.dwattr $C$DW$106, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$102, DW_AT_TI_end_file("../driverlib/MSP430FR57xx/cs.c")
	.dwattr $C$DW$102, DW_AT_TI_end_line(0x2c1)
	.dwattr $C$DW$102, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$102

	.sect	".text:CS_getSMCLK"
	.clink
	.global	CS_getSMCLK

$C$DW$107	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$107, DW_AT_name("CS_getSMCLK")
	.dwattr $C$DW$107, DW_AT_low_pc(CS_getSMCLK)
	.dwattr $C$DW$107, DW_AT_high_pc(0x00)
	.dwattr $C$DW$107, DW_AT_TI_symbol_name("CS_getSMCLK")
	.dwattr $C$DW$107, DW_AT_external
	.dwattr $C$DW$107, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$107, DW_AT_TI_begin_file("../driverlib/MSP430FR57xx/cs.c")
	.dwattr $C$DW$107, DW_AT_TI_begin_line(0x2c3)
	.dwattr $C$DW$107, DW_AT_TI_begin_column(0x0a)
	.dwattr $C$DW$107, DW_AT_decl_file("../driverlib/MSP430FR57xx/cs.c")
	.dwattr $C$DW$107, DW_AT_decl_line(0x2c3)
	.dwattr $C$DW$107, DW_AT_decl_column(0x0a)
	.dwattr $C$DW$107, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 708,column 1,is_stmt,address CS_getSMCLK,isa 0

	.dwfde $C$DW$CIE, CS_getSMCLK

;*****************************************************************************
;* FUNCTION NAME: CS_getSMCLK                                                *
;*                                                                           *
;*   Regs Modified     : SP,SR,r11,r12,r13,r14,r15                           *
;*   Regs Used         : SP,SR,r11,r12,r13,r14,r15                           *
;*   Local Frame Size  : 0 Args + 4 Auto + 0 Save = 4 byte                   *
;*****************************************************************************
CS_getSMCLK:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
        SUB.W     #4,SP                 ; [] 
	.dwcfi	cfa_offset, 6
$C$DW$108	.dwtag  DW_TAG_variable
	.dwattr $C$DW$108, DW_AT_name("SMCLKSource")
	.dwattr $C$DW$108, DW_AT_TI_symbol_name("SMCLKSource")
	.dwattr $C$DW$108, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$108, DW_AT_location[DW_OP_breg1 0]

$C$DW$109	.dwtag  DW_TAG_variable
	.dwattr $C$DW$109, DW_AT_name("SMCLKSourceDivider")
	.dwattr $C$DW$109, DW_AT_TI_symbol_name("SMCLKSourceDivider")
	.dwattr $C$DW$109, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$109, DW_AT_location[DW_OP_breg1 2]

	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 710,column 23,is_stmt,isa 0
        MOV.B     &0x184,r12            ; [] |710| 
        AND.W     #112,r12              ; [] |710| 
        MOV.W     r12,0(SP)             ; [] |710| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 712,column 2,is_stmt,isa 0
$C$DW$110	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$110, DW_AT_low_pc(0x00)
	.dwattr $C$DW$110, DW_AT_name("__mspabi_srli_4")
	.dwattr $C$DW$110, DW_AT_TI_call

        CALL      #__mspabi_srli_4      ; [] |712| 
                                          ; [] |712| 
        MOV.W     r12,0(SP)             ; [] |712| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 715,column 30,is_stmt,isa 0
        MOV.W     #112,r12              ; [] |715| 
        AND.W     &0x186,r12            ; [] |715| 
        MOV.W     r12,2(SP)             ; [] |715| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 716,column 2,is_stmt,isa 0
$C$DW$111	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$111, DW_AT_low_pc(0x00)
	.dwattr $C$DW$111, DW_AT_name("__mspabi_srli_4")
	.dwattr $C$DW$111, DW_AT_TI_call

        CALL      #__mspabi_srli_4      ; [] |716| 
                                          ; [] |716| 
        MOV.W     r12,r13               ; [] |716| 
        MOV.W     r13,2(SP)             ; [] |716| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 718,column 2,is_stmt,isa 0
        MOV.W     0(SP),r12             ; [] |718| 
$C$DW$112	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$112, DW_AT_low_pc(0x00)
	.dwattr $C$DW$112, DW_AT_name("privateCSComputeCLKFrequency")
	.dwattr $C$DW$112, DW_AT_TI_call

        CALL      #privateCSComputeCLKFrequency ; [] |718| 
                                          ; [] |718| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 722,column 1,is_stmt,isa 0
        ADD.W     #4,SP                 ; [] 
	.dwcfi	cfa_offset, 2
$C$DW$113	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$113, DW_AT_low_pc(0x00)
	.dwattr $C$DW$113, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$107, DW_AT_TI_end_file("../driverlib/MSP430FR57xx/cs.c")
	.dwattr $C$DW$107, DW_AT_TI_end_line(0x2d2)
	.dwattr $C$DW$107, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$107

	.sect	".text:CS_getMCLK"
	.clink
	.global	CS_getMCLK

$C$DW$114	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$114, DW_AT_name("CS_getMCLK")
	.dwattr $C$DW$114, DW_AT_low_pc(CS_getMCLK)
	.dwattr $C$DW$114, DW_AT_high_pc(0x00)
	.dwattr $C$DW$114, DW_AT_TI_symbol_name("CS_getMCLK")
	.dwattr $C$DW$114, DW_AT_external
	.dwattr $C$DW$114, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$114, DW_AT_TI_begin_file("../driverlib/MSP430FR57xx/cs.c")
	.dwattr $C$DW$114, DW_AT_TI_begin_line(0x2d4)
	.dwattr $C$DW$114, DW_AT_TI_begin_column(0x0a)
	.dwattr $C$DW$114, DW_AT_decl_file("../driverlib/MSP430FR57xx/cs.c")
	.dwattr $C$DW$114, DW_AT_decl_line(0x2d4)
	.dwattr $C$DW$114, DW_AT_decl_column(0x0a)
	.dwattr $C$DW$114, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 725,column 1,is_stmt,address CS_getMCLK,isa 0

	.dwfde $C$DW$CIE, CS_getMCLK

;*****************************************************************************
;* FUNCTION NAME: CS_getMCLK                                                 *
;*                                                                           *
;*   Regs Modified     : SP,SR,r11,r12,r13,r14,r15                           *
;*   Regs Used         : SP,SR,r11,r12,r13,r14,r15                           *
;*   Local Frame Size  : 0 Args + 4 Auto + 0 Save = 4 byte                   *
;*****************************************************************************
CS_getMCLK:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
        SUB.W     #4,SP                 ; [] 
	.dwcfi	cfa_offset, 6
$C$DW$115	.dwtag  DW_TAG_variable
	.dwattr $C$DW$115, DW_AT_name("MCLKSource")
	.dwattr $C$DW$115, DW_AT_TI_symbol_name("MCLKSource")
	.dwattr $C$DW$115, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$115, DW_AT_location[DW_OP_breg1 0]

$C$DW$116	.dwtag  DW_TAG_variable
	.dwattr $C$DW$116, DW_AT_name("MCLKSourceDivider")
	.dwattr $C$DW$116, DW_AT_TI_symbol_name("MCLKSourceDivider")
	.dwattr $C$DW$116, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$116, DW_AT_location[DW_OP_breg1 2]

	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 728,column 22,is_stmt,isa 0
        MOV.W     #7,r12                ; [] |728| 
        AND.W     &0x184,r12            ; [] |728| 
        MOV.W     r12,0(SP)             ; [] |728| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 730,column 29,is_stmt,isa 0
        MOV.W     #7,r13                ; [] |730| 
        AND.W     &0x186,r13            ; [] |730| 
        MOV.W     r13,2(SP)             ; [] |730| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 732,column 2,is_stmt,isa 0
$C$DW$117	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$117, DW_AT_low_pc(0x00)
	.dwattr $C$DW$117, DW_AT_name("privateCSComputeCLKFrequency")
	.dwattr $C$DW$117, DW_AT_TI_call

        CALL      #privateCSComputeCLKFrequency ; [] |732| 
                                          ; [] |732| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 736,column 1,is_stmt,isa 0
        ADD.W     #4,SP                 ; [] 
	.dwcfi	cfa_offset, 2
$C$DW$118	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$118, DW_AT_low_pc(0x00)
	.dwattr $C$DW$118, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$114, DW_AT_TI_end_file("../driverlib/MSP430FR57xx/cs.c")
	.dwattr $C$DW$114, DW_AT_TI_end_line(0x2e0)
	.dwattr $C$DW$114, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$114

	.sect	".text:CS_clearAllOscFlagsWithTimeout"
	.clink
	.global	CS_clearAllOscFlagsWithTimeout

$C$DW$119	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$119, DW_AT_name("CS_clearAllOscFlagsWithTimeout")
	.dwattr $C$DW$119, DW_AT_low_pc(CS_clearAllOscFlagsWithTimeout)
	.dwattr $C$DW$119, DW_AT_high_pc(0x00)
	.dwattr $C$DW$119, DW_AT_TI_symbol_name("CS_clearAllOscFlagsWithTimeout")
	.dwattr $C$DW$119, DW_AT_external
	.dwattr $C$DW$119, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$119, DW_AT_TI_begin_file("../driverlib/MSP430FR57xx/cs.c")
	.dwattr $C$DW$119, DW_AT_TI_begin_line(0x2e2)
	.dwattr $C$DW$119, DW_AT_TI_begin_column(0x0a)
	.dwattr $C$DW$119, DW_AT_decl_file("../driverlib/MSP430FR57xx/cs.c")
	.dwattr $C$DW$119, DW_AT_decl_line(0x2e2)
	.dwattr $C$DW$119, DW_AT_decl_column(0x0a)
	.dwattr $C$DW$119, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 740,column 1,is_stmt,address CS_clearAllOscFlagsWithTimeout,isa 0

	.dwfde $C$DW$CIE, CS_clearAllOscFlagsWithTimeout
$C$DW$120	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$120, DW_AT_name("timeout")
	.dwattr $C$DW$120, DW_AT_TI_symbol_name("timeout")
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$120, DW_AT_location[DW_OP_reg12]


;*****************************************************************************
;* FUNCTION NAME: CS_clearAllOscFlagsWithTimeout                             *
;*                                                                           *
;*   Regs Modified     : SP,SR,r12                                           *
;*   Regs Used         : SP,SR,r12,r13                                       *
;*   Local Frame Size  : 0 Args + 4 Auto + 0 Save = 4 byte                   *
;*****************************************************************************
CS_clearAllOscFlagsWithTimeout:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
        SUB.W     #4,SP                 ; [] 
	.dwcfi	cfa_offset, 6
$C$DW$121	.dwtag  DW_TAG_variable
	.dwattr $C$DW$121, DW_AT_name("timeout")
	.dwattr $C$DW$121, DW_AT_TI_symbol_name("timeout")
	.dwattr $C$DW$121, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$121, DW_AT_location[DW_OP_breg1 0]

        MOV.W     r12,0(SP)             ; [] |740| 
        MOV.W     r13,2(SP)             ; [] |740| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 741,column 5,is_stmt,isa 0
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 744,column 2,is_stmt,isa 0
        MOV.W     #42240,&0x180         ; [] |744| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP $C$L67
;*
;*   Loop source line                : 746
;*   Loop closing brace source line  : 755
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
$C$L67:    
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 749,column 7,is_stmt,isa 0
        AND.B     #252,&0x18a           ; [] |749| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 752,column 7,is_stmt,isa 0
        BIC.B     #2,&0x102             ; [] |752| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 755,column 14,is_stmt,isa 0
        BIT.B     #2,&0x102             ; [] |755| 
        JEQ       $C$L68                ; [] |755| 
                                          ; [] |755| 
;* --------------------------------------------------------------------------*
        SUB.W     #1,0(SP)              ; [] |755| 
        SUBC.W    #0,2(SP)              ; [] |755| 
        JNE       $C$L67                ; [] |755| 
                                          ; [] |755| 
;* --------------------------------------------------------------------------*
        TST.W     0(SP)                 ; [] |755| 
        JNE       $C$L67                ; [] |755| 
                                          ; [] |755| 
;* --------------------------------------------------------------------------*
$C$L68:    
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 758,column 2,is_stmt,isa 0
        MOV.B     #0,&0x181             ; [] |758| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 760,column 5,is_stmt,isa 0
        MOV.B     &0x18a,r12            ; [] |760| 
        AND.W     #3,r12                ; [] |760| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 761,column 1,is_stmt,isa 0
        ADD.W     #4,SP                 ; [] 
	.dwcfi	cfa_offset, 2
$C$DW$122	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$122, DW_AT_low_pc(0x00)
	.dwattr $C$DW$122, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$119, DW_AT_TI_end_file("../driverlib/MSP430FR57xx/cs.c")
	.dwattr $C$DW$119, DW_AT_TI_end_line(0x2f9)
	.dwattr $C$DW$119, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$119

	.sect	".text:CS_setDCOFreq"
	.clink
	.global	CS_setDCOFreq

$C$DW$123	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$123, DW_AT_name("CS_setDCOFreq")
	.dwattr $C$DW$123, DW_AT_low_pc(CS_setDCOFreq)
	.dwattr $C$DW$123, DW_AT_high_pc(0x00)
	.dwattr $C$DW$123, DW_AT_TI_symbol_name("CS_setDCOFreq")
	.dwattr $C$DW$123, DW_AT_external
	.dwattr $C$DW$123, DW_AT_TI_begin_file("../driverlib/MSP430FR57xx/cs.c")
	.dwattr $C$DW$123, DW_AT_TI_begin_line(0x2fb)
	.dwattr $C$DW$123, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$123, DW_AT_decl_file("../driverlib/MSP430FR57xx/cs.c")
	.dwattr $C$DW$123, DW_AT_decl_line(0x2fb)
	.dwattr $C$DW$123, DW_AT_decl_column(0x06)
	.dwattr $C$DW$123, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 765,column 1,is_stmt,address CS_setDCOFreq,isa 0

	.dwfde $C$DW$CIE, CS_setDCOFreq
$C$DW$124	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$124, DW_AT_name("dcorsel")
	.dwattr $C$DW$124, DW_AT_TI_symbol_name("dcorsel")
	.dwattr $C$DW$124, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$124, DW_AT_location[DW_OP_reg12]

$C$DW$125	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$125, DW_AT_name("dcofsel")
	.dwattr $C$DW$125, DW_AT_TI_symbol_name("dcofsel")
	.dwattr $C$DW$125, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$125, DW_AT_location[DW_OP_reg13]


;*****************************************************************************
;* FUNCTION NAME: CS_setDCOFreq                                              *
;*                                                                           *
;*   Regs Modified     : SP,SR,r13,r15                                       *
;*   Regs Used         : SP,SR,r12,r13,r15                                   *
;*   Local Frame Size  : 0 Args + 6 Auto + 0 Save = 6 byte                   *
;*****************************************************************************
CS_setDCOFreq:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
        SUB.W     #6,SP                 ; [] 
	.dwcfi	cfa_offset, 8
$C$DW$126	.dwtag  DW_TAG_variable
	.dwattr $C$DW$126, DW_AT_name("dcorsel")
	.dwattr $C$DW$126, DW_AT_TI_symbol_name("dcorsel")
	.dwattr $C$DW$126, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$126, DW_AT_location[DW_OP_breg1 0]

$C$DW$127	.dwtag  DW_TAG_variable
	.dwattr $C$DW$127, DW_AT_name("dcofsel")
	.dwattr $C$DW$127, DW_AT_TI_symbol_name("dcofsel")
	.dwattr $C$DW$127, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$127, DW_AT_location[DW_OP_breg1 2]

$C$DW$128	.dwtag  DW_TAG_variable
	.dwattr $C$DW$128, DW_AT_name("tempCSCTL3")
	.dwattr $C$DW$128, DW_AT_TI_symbol_name("tempCSCTL3")
	.dwattr $C$DW$128, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$128, DW_AT_location[DW_OP_breg1 4]

        MOV.W     r13,2(SP)             ; [] |765| 
        MOV.W     r12,0(SP)             ; [] |765| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 768,column 2,is_stmt,isa 0
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 776,column 2,is_stmt,isa 0
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 780,column 22,is_stmt,isa 0
        MOV.W     #0,4(SP)              ; [] |780| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 782,column 2,is_stmt,isa 0
        MOV.W     #42240,&0x180         ; [] |782| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 786,column 5,is_stmt,isa 0
        MOV.W     &0x186,4(SP)          ; [] |786| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 792,column 5,is_stmt,isa 0
        MOV.W     #63624,r15            ; [] |792| 
        AND.W     &0x186,r15            ; [] |792| 
        OR.W      #546,r15              ; [] |792| 
        MOV.W     r15,&0x186            ; [] |792| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 796,column 2,is_stmt,isa 0
        MOV.W     r13,r15               ; [] 
        ADD.W     0(SP),r15             ; [] |796| 
        MOV.W     r15,&0x182            ; [] |796| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 800,column 5,is_stmt,isa 0
        JMP       $C$L79                ; [] |800| 
                                          ; [] |800| 
;* --------------------------------------------------------------------------*
$C$L69:    
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 804,column 13,is_stmt,isa 0
        TST.W     0(SP)                 ; [] |804| 
        JNE       $C$L70                ; [] |804| 
                                          ; [] |804| 
;* --------------------------------------------------------------------------*
        ; Begin 34 cycle delay
        .newblock
        PUSH     r13
        MOV.W    #9, r13
$1:     SUB.W    #1, r13
        JNE      $1
        POP      r13
        ; End 34 cycle delay ; [] |804| 
        JMP       $C$L80                ; [] |804| 
                                          ; [] |804| 
;* --------------------------------------------------------------------------*
$C$L70:    
        ; Begin 60 cycle delay
        .newblock
        PUSH     r13
        MOV.W    #17, r13
$1:     SUB.W    #1, r13
        JNE      $1
        POP      r13
        JMP ($ + 2)
        ; End 60 cycle delay ; [] |804| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 805,column 13,is_stmt,isa 0
        JMP       $C$L80                ; [] |805| 
                                          ; [] |805| 
;* --------------------------------------------------------------------------*
$C$L71:    
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 808,column 13,is_stmt,isa 0
        TST.W     0(SP)                 ; [] |808| 
        JNE       $C$L72                ; [] |808| 
                                          ; [] |808| 
;* --------------------------------------------------------------------------*
        ; Begin 37 cycle delay
        .newblock
        PUSH     r13
        MOV.W    #10, r13
$1:     SUB.W    #1, r13
        JNE      $1
        POP      r13
        ; End 37 cycle delay ; [] |808| 
        JMP       $C$L80                ; [] |808| 
                                          ; [] |808| 
;* --------------------------------------------------------------------------*
$C$L72:    
        ; Begin 70 cycle delay
        .newblock
        PUSH     r13
        MOV.W    #21, r13
$1:     SUB.W    #1, r13
        JNE      $1
        POP      r13
        ; End 70 cycle delay ; [] |808| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 809,column 13,is_stmt,isa 0
        JMP       $C$L80                ; [] |809| 
                                          ; [] |809| 
;* --------------------------------------------------------------------------*
$C$L73:    
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 812,column 13,is_stmt,isa 0
        TST.W     0(SP)                 ; [] |812| 
        JNE       $C$L74                ; [] |812| 
                                          ; [] |812| 
;* --------------------------------------------------------------------------*
        ; Begin 34 cycle delay
        .newblock
        PUSH     r13
        MOV.W    #9, r13
$1:     SUB.W    #1, r13
        JNE      $1
        POP      r13
        ; End 34 cycle delay ; [] |812| 
        JMP       $C$L80                ; [] |812| 
                                          ; [] |812| 
;* --------------------------------------------------------------------------*
$C$L74:    
        ; Begin 60 cycle delay
        .newblock
        PUSH     r13
        MOV.W    #17, r13
$1:     SUB.W    #1, r13
        JNE      $1
        POP      r13
        JMP ($ + 2)
        ; End 60 cycle delay ; [] |812| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 813,column 9,is_stmt,isa 0
        JMP       $C$L80                ; [] |813| 
                                          ; [] |813| 
;* --------------------------------------------------------------------------*
$C$L75:    
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 816,column 13,is_stmt,isa 0
        TST.W     0(SP)                 ; [] |816| 
        JNE       $C$L76                ; [] |816| 
                                          ; [] |816| 
;* --------------------------------------------------------------------------*
        ; Begin 40 cycle delay
        .newblock
        PUSH     r13
        MOV.W    #11, r13
$1:     SUB.W    #1, r13
        JNE      $1
        POP      r13
        ; End 40 cycle delay ; [] |816| 
        JMP       $C$L80                ; [] |816| 
                                          ; [] |816| 
;* --------------------------------------------------------------------------*
$C$L76:    
        ; Begin 80 cycle delay
        .newblock
        PUSH     r13
        MOV.W    #24, r13
$1:     SUB.W    #1, r13
        JNE      $1
        POP      r13
        NOP
        ; End 80 cycle delay ; [] |816| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 817,column 13,is_stmt,isa 0
        JMP       $C$L80                ; [] |817| 
                                          ; [] |817| 
;* --------------------------------------------------------------------------*
$C$L77:    
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 820,column 13,is_stmt,isa 0
        TST.W     0(SP)                 ; [] |820| 
        JNE       $C$L78                ; [] |820| 
                                          ; [] |820| 
;* --------------------------------------------------------------------------*
        ; Begin 40 cycle delay
        .newblock
        PUSH     r13
        MOV.W    #11, r13
$1:     SUB.W    #1, r13
        JNE      $1
        POP      r13
        ; End 40 cycle delay ; [] |820| 
        JMP       $C$L80                ; [] |820| 
                                          ; [] |820| 
;* --------------------------------------------------------------------------*
$C$L78:    
        ; Begin 80 cycle delay
        .newblock
        PUSH     r13
        MOV.W    #24, r13
$1:     SUB.W    #1, r13
        JNE      $1
        POP      r13
        NOP
        ; End 80 cycle delay ; [] |820| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 821,column 13,is_stmt,isa 0
        JMP       $C$L80                ; [] |821| 
                                          ; [] |821| 
;* --------------------------------------------------------------------------*
;* --------------------------------------------------------------------------*
$C$L79:    
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 800,column 5,is_stmt,isa 0
        TST.W     r13                   ; [] |800| 
        JEQ       $C$L69                ; [] |800| 
                                          ; [] |800| 
;* --------------------------------------------------------------------------*
        SUB.W     #2,r13                ; [] |800| 
        JEQ       $C$L71                ; [] |800| 
                                          ; [] |800| 
;* --------------------------------------------------------------------------*
        SUB.W     #2,r13                ; [] |800| 
        JEQ       $C$L73                ; [] |800| 
                                          ; [] |800| 
;* --------------------------------------------------------------------------*
        SUB.W     #2,r13                ; [] |800| 
        JEQ       $C$L75                ; [] |800| 
                                          ; [] |800| 
;* --------------------------------------------------------------------------*
        JMP       $C$L77                ; [] |800| 
                                          ; [] |800| 
;* --------------------------------------------------------------------------*
$C$L80:    
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 825,column 5,is_stmt,isa 0
        MOV.W     4(SP),&0x186          ; [] |825| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 828,column 2,is_stmt,isa 0
        MOV.B     #0,&0x181             ; [] |828| 
	.dwpsn	file "../driverlib/MSP430FR57xx/cs.c",line 829,column 1,is_stmt,isa 0
        ADD.W     #6,SP                 ; [] 
	.dwcfi	cfa_offset, 2
$C$DW$129	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$129, DW_AT_low_pc(0x00)
	.dwattr $C$DW$129, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$123, DW_AT_TI_end_file("../driverlib/MSP430FR57xx/cs.c")
	.dwattr $C$DW$123, DW_AT_TI_end_line(0x33d)
	.dwattr $C$DW$123, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$123

;*****************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                             *
;*****************************************************************************
	.global	__mspabi_divli
	.global	__mspabi_divul
	.global	__mspabi_divi
	.global	__mspabi_slli_4
	.global	__mspabi_srli_4

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
$C$DW$130	.dwtag  DW_TAG_member
	.dwattr $C$DW$130, DW_AT_type(*$C$DW$T$14)
	.dwattr $C$DW$130, DW_AT_name("__max_align1")
	.dwattr $C$DW$130, DW_AT_TI_symbol_name("__max_align1")
	.dwattr $C$DW$130, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$130, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$130, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$130, DW_AT_decl_line(0x7b)
	.dwattr $C$DW$130, DW_AT_decl_column(0x0c)

$C$DW$131	.dwtag  DW_TAG_member
	.dwattr $C$DW$131, DW_AT_type(*$C$DW$T$18)
	.dwattr $C$DW$131, DW_AT_name("__max_align2")
	.dwattr $C$DW$131, DW_AT_TI_symbol_name("__max_align2")
	.dwattr $C$DW$131, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$131, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$131, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$131, DW_AT_decl_line(0x7c)
	.dwattr $C$DW$131, DW_AT_decl_column(0x0e)

	.dwattr $C$DW$T$21, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$21, DW_AT_decl_line(0x7a)
	.dwattr $C$DW$T$21, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$21

$C$DW$T$22	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$22, DW_AT_name("__max_align_t")
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$22, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$22, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$22, DW_AT_decl_line(0x7d)
	.dwattr $C$DW$T$22, DW_AT_decl_column(0x03)

$C$DW$T$2	.dwtag  DW_TAG_unspecified_type
	.dwattr $C$DW$T$2, DW_AT_name("void")


$C$DW$T$35	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$35, DW_AT_language(DW_LANG_C)
	.dwendtag $C$DW$T$35

$C$DW$T$36	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$T$36, DW_AT_address_class(0x10)

$C$DW$T$37	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$37, DW_AT_name("__SFR_FARPTR")
	.dwattr $C$DW$T$37, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$T$37, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$37, DW_AT_decl_file("C:\ti\ccs1040\ccs\ccs_base\msp430\include\colt430fr2355.h")
	.dwattr $C$DW$T$37, DW_AT_decl_line(0x43)
	.dwattr $C$DW$T$37, DW_AT_decl_column(0x11)

$C$DW$T$4	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$4, DW_AT_encoding(DW_ATE_boolean)
	.dwattr $C$DW$T$4, DW_AT_name("bool")
	.dwattr $C$DW$T$4, DW_AT_byte_size(0x01)

$C$DW$T$5	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$5, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$5, DW_AT_name("signed char")
	.dwattr $C$DW$T$5, DW_AT_byte_size(0x01)

$C$DW$T$38	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$38, DW_AT_name("__int8_t")
	.dwattr $C$DW$T$38, DW_AT_type(*$C$DW$T$5)
	.dwattr $C$DW$T$38, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$38, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$38, DW_AT_decl_line(0x36)
	.dwattr $C$DW$T$38, DW_AT_decl_column(0x16)

$C$DW$T$39	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$39, DW_AT_name("__int_least8_t")
	.dwattr $C$DW$T$39, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$T$39, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$39, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$39, DW_AT_decl_line(0x5a)
	.dwattr $C$DW$T$39, DW_AT_decl_column(0x12)

$C$DW$T$40	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$40, DW_AT_name("int_least8_t")
	.dwattr $C$DW$T$40, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$T$40, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$40, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$40, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$T$40, DW_AT_decl_column(0x19)

$C$DW$T$41	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$41, DW_AT_name("int8_t")
	.dwattr $C$DW$T$41, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$T$41, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$41, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$41, DW_AT_decl_line(0x25)
	.dwattr $C$DW$T$41, DW_AT_decl_column(0x13)

$C$DW$T$6	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$6, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$6, DW_AT_byte_size(0x01)

$C$DW$T$26	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$26, DW_AT_name("__uint8_t")
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$26, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$26, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$26, DW_AT_decl_line(0x37)
	.dwattr $C$DW$T$26, DW_AT_decl_column(0x18)

$C$DW$T$42	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$42, DW_AT_name("__sa_family_t")
	.dwattr $C$DW$T$42, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$42, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$42, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$42, DW_AT_decl_line(0x47)
	.dwattr $C$DW$T$42, DW_AT_decl_column(0x13)

$C$DW$T$43	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$43, DW_AT_name("__uint_least8_t")
	.dwattr $C$DW$T$43, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$43, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$43, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$43, DW_AT_decl_line(0x74)
	.dwattr $C$DW$T$43, DW_AT_decl_column(0x13)

$C$DW$T$44	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$44, DW_AT_name("uint_least8_t")
	.dwattr $C$DW$T$44, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$T$44, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$44, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$44, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$T$44, DW_AT_decl_column(0x1a)

$C$DW$T$27	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$27, DW_AT_name("uint8_t")
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$27, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$27, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$27, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$T$27, DW_AT_decl_column(0x14)

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

$C$DW$T$48	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$48, DW_AT_name("_Mbstatet")
	.dwattr $C$DW$T$48, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$48, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$48, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$48, DW_AT_decl_line(0x8f)
	.dwattr $C$DW$T$48, DW_AT_decl_column(0x0d)

$C$DW$T$49	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$49, DW_AT_name("__mbstate_t")
	.dwattr $C$DW$T$49, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$T$49, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$49, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$49, DW_AT_decl_line(0x92)
	.dwattr $C$DW$T$49, DW_AT_decl_column(0x13)

$C$DW$T$50	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$50, DW_AT_name("__accmode_t")
	.dwattr $C$DW$T$50, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$50, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$50, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$50, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$T$50, DW_AT_decl_column(0x0e)

$C$DW$T$51	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$51, DW_AT_name("__cpulevel_t")
	.dwattr $C$DW$T$51, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$51, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$51, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$51, DW_AT_decl_line(0x50)
	.dwattr $C$DW$T$51, DW_AT_decl_column(0x0e)

$C$DW$T$52	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$52, DW_AT_name("__cpusetid_t")
	.dwattr $C$DW$T$52, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$52, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$52, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$52, DW_AT_decl_line(0x51)
	.dwattr $C$DW$T$52, DW_AT_decl_column(0x0e)

$C$DW$T$53	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$53, DW_AT_name("__cpuwhich_t")
	.dwattr $C$DW$T$53, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$53, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$53, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$53, DW_AT_decl_line(0x4f)
	.dwattr $C$DW$T$53, DW_AT_decl_column(0x0e)

$C$DW$T$54	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$54, DW_AT_name("__ct_rune_t")
	.dwattr $C$DW$T$54, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$54, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$54, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$54, DW_AT_decl_line(0x69)
	.dwattr $C$DW$T$54, DW_AT_decl_column(0x0e)

$C$DW$T$55	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$55, DW_AT_name("__rune_t")
	.dwattr $C$DW$T$55, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$T$55, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$55, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$55, DW_AT_decl_line(0x6c)
	.dwattr $C$DW$T$55, DW_AT_decl_column(0x15)

$C$DW$T$56	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$56, DW_AT_name("__wint_t")
	.dwattr $C$DW$T$56, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$T$56, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$56, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$56, DW_AT_decl_line(0x6d)
	.dwattr $C$DW$T$56, DW_AT_decl_column(0x15)

$C$DW$T$57	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$57, DW_AT_name("__int16_t")
	.dwattr $C$DW$T$57, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$57, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$57, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$57, DW_AT_decl_line(0x38)
	.dwattr $C$DW$T$57, DW_AT_decl_column(0x0f)

$C$DW$T$58	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$58, DW_AT_name("__int_fast16_t")
	.dwattr $C$DW$T$58, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$T$58, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$58, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$58, DW_AT_decl_line(0x57)
	.dwattr $C$DW$T$58, DW_AT_decl_column(0x13)

$C$DW$T$59	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$59, DW_AT_name("int_fast16_t")
	.dwattr $C$DW$T$59, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$T$59, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$59, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$59, DW_AT_decl_line(0x35)
	.dwattr $C$DW$T$59, DW_AT_decl_column(0x19)

$C$DW$T$60	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$60, DW_AT_name("__int_fast8_t")
	.dwattr $C$DW$T$60, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$T$60, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$60, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$60, DW_AT_decl_line(0x56)
	.dwattr $C$DW$T$60, DW_AT_decl_column(0x13)

$C$DW$T$61	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$61, DW_AT_name("int_fast8_t")
	.dwattr $C$DW$T$61, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$T$61, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$61, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$61, DW_AT_decl_line(0x34)
	.dwattr $C$DW$T$61, DW_AT_decl_column(0x18)

$C$DW$T$62	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$62, DW_AT_name("__int_least16_t")
	.dwattr $C$DW$T$62, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$T$62, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$62, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$62, DW_AT_decl_line(0x5b)
	.dwattr $C$DW$T$62, DW_AT_decl_column(0x13)

$C$DW$T$63	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$63, DW_AT_name("int_least16_t")
	.dwattr $C$DW$T$63, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$T$63, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$63, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$63, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$T$63, DW_AT_decl_column(0x1a)

$C$DW$T$64	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$64, DW_AT_name("__intptr_t")
	.dwattr $C$DW$T$64, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$T$64, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$64, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$64, DW_AT_decl_line(0x53)
	.dwattr $C$DW$T$64, DW_AT_decl_column(0x19)

$C$DW$T$65	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$65, DW_AT_name("intptr_t")
	.dwattr $C$DW$T$65, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$T$65, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$65, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$65, DW_AT_decl_line(0x50)
	.dwattr $C$DW$T$65, DW_AT_decl_column(0x15)

$C$DW$T$66	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$66, DW_AT_name("__register_t")
	.dwattr $C$DW$T$66, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$T$66, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$66, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$66, DW_AT_decl_line(0x5f)
	.dwattr $C$DW$T$66, DW_AT_decl_column(0x13)

$C$DW$T$67	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$67, DW_AT_name("int16_t")
	.dwattr $C$DW$T$67, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$T$67, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$67, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$67, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$T$67, DW_AT_decl_column(0x14)

$C$DW$T$68	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$68, DW_AT_name("__nl_item")
	.dwattr $C$DW$T$68, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$68, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$68, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$68, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$T$68, DW_AT_decl_column(0x0e)

$C$DW$T$69	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$69, DW_AT_name("__ptrdiff_t")
	.dwattr $C$DW$T$69, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$69, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$69, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$69, DW_AT_decl_line(0x5e)
	.dwattr $C$DW$T$69, DW_AT_decl_column(0x1c)

$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x02)

$C$DW$T$70	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$70, DW_AT_name("___wchar_t")
	.dwattr $C$DW$T$70, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$70, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$70, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$70, DW_AT_decl_line(0x7d)
	.dwattr $C$DW$T$70, DW_AT_decl_column(0x1a)

$C$DW$T$71	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$71, DW_AT_name("__size_t")
	.dwattr $C$DW$T$71, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$71, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$71, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$71, DW_AT_decl_line(0x61)
	.dwattr $C$DW$T$71, DW_AT_decl_column(0x19)

$C$DW$T$28	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$28, DW_AT_name("__uint16_t")
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$28, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$28, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$28, DW_AT_decl_line(0x39)
	.dwattr $C$DW$T$28, DW_AT_decl_column(0x17)

$C$DW$T$72	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$72, DW_AT_name("__mode_t")
	.dwattr $C$DW$T$72, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$T$72, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$72, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$72, DW_AT_decl_line(0x3a)
	.dwattr $C$DW$T$72, DW_AT_decl_column(0x14)

$C$DW$T$73	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$73, DW_AT_name("__u_register_t")
	.dwattr $C$DW$T$73, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$T$73, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$73, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$73, DW_AT_decl_line(0x78)
	.dwattr $C$DW$T$73, DW_AT_decl_column(0x14)

$C$DW$T$74	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$74, DW_AT_name("__uint_fast16_t")
	.dwattr $C$DW$T$74, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$T$74, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$74, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$74, DW_AT_decl_line(0x71)
	.dwattr $C$DW$T$74, DW_AT_decl_column(0x14)

$C$DW$T$75	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$75, DW_AT_name("uint_fast16_t")
	.dwattr $C$DW$T$75, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$T$75, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$75, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$75, DW_AT_decl_line(0x3a)
	.dwattr $C$DW$T$75, DW_AT_decl_column(0x1a)

$C$DW$T$76	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$76, DW_AT_name("__uint_fast8_t")
	.dwattr $C$DW$T$76, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$T$76, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$76, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$76, DW_AT_decl_line(0x70)
	.dwattr $C$DW$T$76, DW_AT_decl_column(0x14)

$C$DW$T$77	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$77, DW_AT_name("uint_fast8_t")
	.dwattr $C$DW$T$77, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$T$77, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$77, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$77, DW_AT_decl_line(0x39)
	.dwattr $C$DW$T$77, DW_AT_decl_column(0x19)

$C$DW$T$78	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$78, DW_AT_name("__uint_least16_t")
	.dwattr $C$DW$T$78, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$T$78, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$78, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$78, DW_AT_decl_line(0x75)
	.dwattr $C$DW$T$78, DW_AT_decl_column(0x14)

$C$DW$T$79	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$79, DW_AT_name("__char16_t")
	.dwattr $C$DW$T$79, DW_AT_type(*$C$DW$T$78)
	.dwattr $C$DW$T$79, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$79, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$79, DW_AT_decl_line(0x71)
	.dwattr $C$DW$T$79, DW_AT_decl_column(0x1a)

$C$DW$T$80	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$80, DW_AT_name("uint_least16_t")
	.dwattr $C$DW$T$80, DW_AT_type(*$C$DW$T$78)
	.dwattr $C$DW$T$80, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$80, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$80, DW_AT_decl_line(0x30)
	.dwattr $C$DW$T$80, DW_AT_decl_column(0x1a)

$C$DW$T$81	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$81, DW_AT_name("__uintptr_t")
	.dwattr $C$DW$T$81, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$T$81, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$81, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$81, DW_AT_decl_line(0x6d)
	.dwattr $C$DW$T$81, DW_AT_decl_column(0x14)

$C$DW$T$82	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$82, DW_AT_name("uintptr_t")
	.dwattr $C$DW$T$82, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$T$82, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$82, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$82, DW_AT_decl_line(0x54)
	.dwattr $C$DW$T$82, DW_AT_decl_column(0x16)

$C$DW$T$29	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$29, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$29, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$T$29, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$29, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$29, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$29, DW_AT_decl_column(0x15)

$C$DW$T$86	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$86, DW_AT_name("__useconds_t")
	.dwattr $C$DW$T$86, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$86, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$86, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$86, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$T$86, DW_AT_decl_column(0x16)

$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x04)

$C$DW$T$87	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$87, DW_AT_name("__int32_t")
	.dwattr $C$DW$T$87, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$87, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$87, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$87, DW_AT_decl_line(0x3a)
	.dwattr $C$DW$T$87, DW_AT_decl_column(0x10)

$C$DW$T$88	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$88, DW_AT_name("__blksize_t")
	.dwattr $C$DW$T$88, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$T$88, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$88, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$88, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$T$88, DW_AT_decl_column(0x13)

$C$DW$T$89	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$89, DW_AT_name("__clockid_t")
	.dwattr $C$DW$T$89, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$T$89, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$89, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$89, DW_AT_decl_line(0x31)
	.dwattr $C$DW$T$89, DW_AT_decl_column(0x13)

$C$DW$T$90	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$90, DW_AT_name("__critical_t")
	.dwattr $C$DW$T$90, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$T$90, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$90, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$90, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$T$90, DW_AT_decl_column(0x13)

$C$DW$T$91	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$91, DW_AT_name("__int_fast32_t")
	.dwattr $C$DW$T$91, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$T$91, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$91, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$91, DW_AT_decl_line(0x58)
	.dwattr $C$DW$T$91, DW_AT_decl_column(0x13)

$C$DW$T$92	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$92, DW_AT_name("int_fast32_t")
	.dwattr $C$DW$T$92, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$T$92, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$92, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$92, DW_AT_decl_line(0x36)
	.dwattr $C$DW$T$92, DW_AT_decl_column(0x19)

$C$DW$T$93	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$93, DW_AT_name("__int_least32_t")
	.dwattr $C$DW$T$93, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$T$93, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$93, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$93, DW_AT_decl_line(0x5c)
	.dwattr $C$DW$T$93, DW_AT_decl_column(0x13)

$C$DW$T$94	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$94, DW_AT_name("int_least32_t")
	.dwattr $C$DW$T$94, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$T$94, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$94, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$94, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$T$94, DW_AT_decl_column(0x1a)

$C$DW$T$95	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$95, DW_AT_name("__intfptr_t")
	.dwattr $C$DW$T$95, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$T$95, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$95, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$95, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$T$95, DW_AT_decl_column(0x13)

$C$DW$T$96	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$96, DW_AT_name("__lwpid_t")
	.dwattr $C$DW$T$96, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$T$96, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$96, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$96, DW_AT_decl_line(0x39)
	.dwattr $C$DW$T$96, DW_AT_decl_column(0x13)

$C$DW$T$97	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$97, DW_AT_name("__pid_t")
	.dwattr $C$DW$T$97, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$T$97, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$97, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$97, DW_AT_decl_line(0x40)
	.dwattr $C$DW$T$97, DW_AT_decl_column(0x13)

$C$DW$T$98	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$98, DW_AT_name("__segsz_t")
	.dwattr $C$DW$T$98, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$T$98, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$98, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$98, DW_AT_decl_line(0x60)
	.dwattr $C$DW$T$98, DW_AT_decl_column(0x13)

$C$DW$T$99	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$99, DW_AT_name("__ssize_t")
	.dwattr $C$DW$T$99, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$T$99, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$99, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$99, DW_AT_decl_line(0x62)
	.dwattr $C$DW$T$99, DW_AT_decl_column(0x13)

$C$DW$T$100	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$100, DW_AT_name("int32_t")
	.dwattr $C$DW$T$100, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$T$100, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$100, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$100, DW_AT_decl_line(0x30)
	.dwattr $C$DW$T$100, DW_AT_decl_column(0x14)

$C$DW$T$101	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$101, DW_AT_name("__key_t")
	.dwattr $C$DW$T$101, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$101, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$101, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$101, DW_AT_decl_line(0x38)
	.dwattr $C$DW$T$101, DW_AT_decl_column(0x0f)

$C$DW$T$102	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$102, DW_AT_name("__suseconds_t")
	.dwattr $C$DW$T$102, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$102, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$102, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$102, DW_AT_decl_line(0x4a)
	.dwattr $C$DW$T$102, DW_AT_decl_column(0x0f)

$C$DW$T$103	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$103, DW_AT_name("_off_t")
	.dwattr $C$DW$T$103, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$103, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$103, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$103, DW_AT_decl_line(0x8d)
	.dwattr $C$DW$T$103, DW_AT_decl_column(0x12)

$C$DW$T$104	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$104, DW_AT_name("__off_t")
	.dwattr $C$DW$T$104, DW_AT_type(*$C$DW$T$103)
	.dwattr $C$DW$T$104, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$104, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$104, DW_AT_decl_line(0x3e)
	.dwattr $C$DW$T$104, DW_AT_decl_column(0x18)

$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x04)

$C$DW$T$23	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$23, DW_AT_name("__uint32_t")
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$23, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$23, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$23, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$T$23, DW_AT_decl_column(0x18)

$C$DW$T$105	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$105, DW_AT_name("__clock_t")
	.dwattr $C$DW$T$105, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$105, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$105, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$105, DW_AT_decl_line(0x4a)
	.dwattr $C$DW$T$105, DW_AT_decl_column(0x14)

$C$DW$T$106	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$106, DW_AT_name("__fflags_t")
	.dwattr $C$DW$T$106, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$106, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$106, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$106, DW_AT_decl_line(0x32)
	.dwattr $C$DW$T$106, DW_AT_decl_column(0x14)

$C$DW$T$107	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$107, DW_AT_name("__fixpt_t")
	.dwattr $C$DW$T$107, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$107, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$107, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$107, DW_AT_decl_line(0x81)
	.dwattr $C$DW$T$107, DW_AT_decl_column(0x14)

$C$DW$T$108	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$108, DW_AT_name("__gid_t")
	.dwattr $C$DW$T$108, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$108, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$108, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$108, DW_AT_decl_line(0x35)
	.dwattr $C$DW$T$108, DW_AT_decl_column(0x14)

$C$DW$T$109	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$109, DW_AT_name("__socklen_t")
	.dwattr $C$DW$T$109, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$109, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$109, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$109, DW_AT_decl_line(0x49)
	.dwattr $C$DW$T$109, DW_AT_decl_column(0x14)

$C$DW$T$110	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$110, DW_AT_name("__time_t")
	.dwattr $C$DW$T$110, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$110, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$110, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$110, DW_AT_decl_line(0x66)
	.dwattr $C$DW$T$110, DW_AT_decl_column(0x19)

$C$DW$T$111	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$111, DW_AT_name("__uid_t")
	.dwattr $C$DW$T$111, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$111, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$111, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$111, DW_AT_decl_line(0x4d)
	.dwattr $C$DW$T$111, DW_AT_decl_column(0x14)

$C$DW$T$112	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$112, DW_AT_name("__uint_fast32_t")
	.dwattr $C$DW$T$112, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$112, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$112, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$112, DW_AT_decl_line(0x72)
	.dwattr $C$DW$T$112, DW_AT_decl_column(0x14)

$C$DW$T$113	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$113, DW_AT_name("uint_fast32_t")
	.dwattr $C$DW$T$113, DW_AT_type(*$C$DW$T$112)
	.dwattr $C$DW$T$113, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$113, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$113, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$T$113, DW_AT_decl_column(0x1a)

$C$DW$T$114	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$114, DW_AT_name("__uint_least32_t")
	.dwattr $C$DW$T$114, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$114, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$114, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$114, DW_AT_decl_line(0x76)
	.dwattr $C$DW$T$114, DW_AT_decl_column(0x14)

$C$DW$T$115	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$115, DW_AT_name("__char32_t")
	.dwattr $C$DW$T$115, DW_AT_type(*$C$DW$T$114)
	.dwattr $C$DW$T$115, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$115, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$115, DW_AT_decl_line(0x72)
	.dwattr $C$DW$T$115, DW_AT_decl_column(0x1a)

$C$DW$T$116	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$116, DW_AT_name("uint_least32_t")
	.dwattr $C$DW$T$116, DW_AT_type(*$C$DW$T$114)
	.dwattr $C$DW$T$116, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$116, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$116, DW_AT_decl_line(0x31)
	.dwattr $C$DW$T$116, DW_AT_decl_column(0x1a)

$C$DW$T$117	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$117, DW_AT_name("__uintfptr_t")
	.dwattr $C$DW$T$117, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$117, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$117, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$117, DW_AT_decl_line(0x68)
	.dwattr $C$DW$T$117, DW_AT_decl_column(0x14)

$C$DW$T$118	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$118, DW_AT_name("__vm_offset_t")
	.dwattr $C$DW$T$118, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$118, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$118, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$118, DW_AT_decl_line(0x79)
	.dwattr $C$DW$T$118, DW_AT_decl_column(0x14)

$C$DW$T$119	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$119, DW_AT_name("__vm_paddr_t")
	.dwattr $C$DW$T$119, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$119, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$119, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$119, DW_AT_decl_line(0x7a)
	.dwattr $C$DW$T$119, DW_AT_decl_column(0x14)

$C$DW$T$120	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$120, DW_AT_name("__vm_size_t")
	.dwattr $C$DW$T$120, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$120, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$120, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$120, DW_AT_decl_line(0x7b)
	.dwattr $C$DW$T$120, DW_AT_decl_column(0x14)

$C$DW$T$24	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$24, DW_AT_name("uint32_t")
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$24, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$24, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$24, DW_AT_decl_line(0x46)
	.dwattr $C$DW$T$24, DW_AT_decl_column(0x15)

$C$DW$T$14	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$14, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$14, DW_AT_name("long long")
	.dwattr $C$DW$T$14, DW_AT_byte_size(0x08)

$C$DW$T$126	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$126, DW_AT_name("__int64_t")
	.dwattr $C$DW$T$126, DW_AT_type(*$C$DW$T$14)
	.dwattr $C$DW$T$126, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$126, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$126, DW_AT_decl_line(0x40)
	.dwattr $C$DW$T$126, DW_AT_decl_column(0x14)

$C$DW$T$127	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$127, DW_AT_name("__blkcnt_t")
	.dwattr $C$DW$T$127, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$T$127, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$127, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$127, DW_AT_decl_line(0x30)
	.dwattr $C$DW$T$127, DW_AT_decl_column(0x13)

$C$DW$T$128	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$128, DW_AT_name("__id_t")
	.dwattr $C$DW$T$128, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$T$128, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$128, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$128, DW_AT_decl_line(0x36)
	.dwattr $C$DW$T$128, DW_AT_decl_column(0x13)

$C$DW$T$129	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$129, DW_AT_name("__int_fast64_t")
	.dwattr $C$DW$T$129, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$T$129, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$129, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$129, DW_AT_decl_line(0x59)
	.dwattr $C$DW$T$129, DW_AT_decl_column(0x13)

$C$DW$T$130	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$130, DW_AT_name("int_fast64_t")
	.dwattr $C$DW$T$130, DW_AT_type(*$C$DW$T$129)
	.dwattr $C$DW$T$130, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$130, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$130, DW_AT_decl_line(0x37)
	.dwattr $C$DW$T$130, DW_AT_decl_column(0x19)

$C$DW$T$131	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$131, DW_AT_name("__int_least64_t")
	.dwattr $C$DW$T$131, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$T$131, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$131, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$131, DW_AT_decl_line(0x5d)
	.dwattr $C$DW$T$131, DW_AT_decl_column(0x13)

$C$DW$T$132	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$132, DW_AT_name("int_least64_t")
	.dwattr $C$DW$T$132, DW_AT_type(*$C$DW$T$131)
	.dwattr $C$DW$T$132, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$132, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$132, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$T$132, DW_AT_decl_column(0x1a)

$C$DW$T$133	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$133, DW_AT_name("__intmax_t")
	.dwattr $C$DW$T$133, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$T$133, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$133, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$133, DW_AT_decl_line(0x4f)
	.dwattr $C$DW$T$133, DW_AT_decl_column(0x13)

$C$DW$T$134	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$134, DW_AT_name("intmax_t")
	.dwattr $C$DW$T$134, DW_AT_type(*$C$DW$T$133)
	.dwattr $C$DW$T$134, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$134, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$134, DW_AT_decl_line(0x58)
	.dwattr $C$DW$T$134, DW_AT_decl_column(0x15)

$C$DW$T$135	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$135, DW_AT_name("__off64_t")
	.dwattr $C$DW$T$135, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$T$135, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$135, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$135, DW_AT_decl_line(0x3f)
	.dwattr $C$DW$T$135, DW_AT_decl_column(0x13)

$C$DW$T$136	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$136, DW_AT_name("__rlim_t")
	.dwattr $C$DW$T$136, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$T$136, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$136, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$136, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$136, DW_AT_decl_column(0x13)

$C$DW$T$137	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$137, DW_AT_name("int64_t")
	.dwattr $C$DW$T$137, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$T$137, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$137, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$137, DW_AT_decl_line(0x35)
	.dwattr $C$DW$T$137, DW_AT_decl_column(0x14)

$C$DW$T$15	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$15, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$15, DW_AT_name("unsigned long long")
	.dwattr $C$DW$T$15, DW_AT_byte_size(0x08)

$C$DW$T$138	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$138, DW_AT_name("__uint64_t")
	.dwattr $C$DW$T$138, DW_AT_type(*$C$DW$T$15)
	.dwattr $C$DW$T$138, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$138, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$138, DW_AT_decl_line(0x45)
	.dwattr $C$DW$T$138, DW_AT_decl_column(0x1c)

$C$DW$T$139	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$139, DW_AT_name("__dev_t")
	.dwattr $C$DW$T$139, DW_AT_type(*$C$DW$T$138)
	.dwattr $C$DW$T$139, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$139, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$139, DW_AT_decl_line(0x7f)
	.dwattr $C$DW$T$139, DW_AT_decl_column(0x14)

$C$DW$T$140	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$140, DW_AT_name("__fsblkcnt_t")
	.dwattr $C$DW$T$140, DW_AT_type(*$C$DW$T$138)
	.dwattr $C$DW$T$140, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$140, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$140, DW_AT_decl_line(0x33)
	.dwattr $C$DW$T$140, DW_AT_decl_column(0x14)

$C$DW$T$141	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$141, DW_AT_name("__fsfilcnt_t")
	.dwattr $C$DW$T$141, DW_AT_type(*$C$DW$T$138)
	.dwattr $C$DW$T$141, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$141, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$141, DW_AT_decl_line(0x34)
	.dwattr $C$DW$T$141, DW_AT_decl_column(0x14)

$C$DW$T$142	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$142, DW_AT_name("__ino_t")
	.dwattr $C$DW$T$142, DW_AT_type(*$C$DW$T$138)
	.dwattr $C$DW$T$142, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$142, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$142, DW_AT_decl_line(0x37)
	.dwattr $C$DW$T$142, DW_AT_decl_column(0x14)

$C$DW$T$143	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$143, DW_AT_name("__nlink_t")
	.dwattr $C$DW$T$143, DW_AT_type(*$C$DW$T$138)
	.dwattr $C$DW$T$143, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$143, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$143, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$T$143, DW_AT_decl_column(0x14)

$C$DW$T$144	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$144, DW_AT_name("__uint_fast64_t")
	.dwattr $C$DW$T$144, DW_AT_type(*$C$DW$T$138)
	.dwattr $C$DW$T$144, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$144, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$144, DW_AT_decl_line(0x73)
	.dwattr $C$DW$T$144, DW_AT_decl_column(0x14)

$C$DW$T$145	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$145, DW_AT_name("uint_fast64_t")
	.dwattr $C$DW$T$145, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$T$145, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$145, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$145, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$T$145, DW_AT_decl_column(0x1a)

$C$DW$T$146	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$146, DW_AT_name("__uint_least64_t")
	.dwattr $C$DW$T$146, DW_AT_type(*$C$DW$T$138)
	.dwattr $C$DW$T$146, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$146, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$146, DW_AT_decl_line(0x77)
	.dwattr $C$DW$T$146, DW_AT_decl_column(0x14)

$C$DW$T$147	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$147, DW_AT_name("uint_least64_t")
	.dwattr $C$DW$T$147, DW_AT_type(*$C$DW$T$146)
	.dwattr $C$DW$T$147, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$147, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$147, DW_AT_decl_line(0x32)
	.dwattr $C$DW$T$147, DW_AT_decl_column(0x1a)

$C$DW$T$148	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$148, DW_AT_name("__uintmax_t")
	.dwattr $C$DW$T$148, DW_AT_type(*$C$DW$T$138)
	.dwattr $C$DW$T$148, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$148, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$148, DW_AT_decl_line(0x69)
	.dwattr $C$DW$T$148, DW_AT_decl_column(0x14)

$C$DW$T$149	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$149, DW_AT_name("__rman_res_t")
	.dwattr $C$DW$T$149, DW_AT_type(*$C$DW$T$148)
	.dwattr $C$DW$T$149, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$149, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$149, DW_AT_decl_line(0x9a)
	.dwattr $C$DW$T$149, DW_AT_decl_column(0x19)

$C$DW$T$150	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$150, DW_AT_name("uintmax_t")
	.dwattr $C$DW$T$150, DW_AT_type(*$C$DW$T$148)
	.dwattr $C$DW$T$150, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$150, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$150, DW_AT_decl_line(0x5c)
	.dwattr $C$DW$T$150, DW_AT_decl_column(0x16)

$C$DW$T$151	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$151, DW_AT_name("uint64_t")
	.dwattr $C$DW$T$151, DW_AT_type(*$C$DW$T$138)
	.dwattr $C$DW$T$151, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$151, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$151, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$T$151, DW_AT_decl_column(0x15)

$C$DW$T$16	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$16, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$16, DW_AT_name("float")
	.dwattr $C$DW$T$16, DW_AT_byte_size(0x04)

$C$DW$T$152	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$152, DW_AT_name("__float_t")
	.dwattr $C$DW$T$152, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$T$152, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$152, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$152, DW_AT_decl_line(0x4d)
	.dwattr $C$DW$T$152, DW_AT_decl_column(0x10)

$C$DW$T$17	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$17, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$17, DW_AT_name("double")
	.dwattr $C$DW$T$17, DW_AT_byte_size(0x08)

$C$DW$T$153	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$153, DW_AT_name("__double_t")
	.dwattr $C$DW$T$153, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$T$153, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$153, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$153, DW_AT_decl_line(0x4c)
	.dwattr $C$DW$T$153, DW_AT_decl_column(0x11)

$C$DW$T$18	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$18, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$18, DW_AT_name("long double")
	.dwattr $C$DW$T$18, DW_AT_byte_size(0x08)

$C$DW$T$154	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$154, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$154, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$154, DW_AT_byte_size(0x01)

$C$DW$T$158	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$158, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$158, DW_AT_address_class(0x10)

$C$DW$T$159	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$159, DW_AT_name("__va_list")
	.dwattr $C$DW$T$159, DW_AT_type(*$C$DW$T$158)
	.dwattr $C$DW$T$159, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$159, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$159, DW_AT_decl_line(0x92)
	.dwattr $C$DW$T$159, DW_AT_decl_column(0x0f)


$C$DW$T$19	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$19, DW_AT_name("__mq")
	.dwattr $C$DW$T$19, DW_AT_declaration
	.dwattr $C$DW$T$19, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$19, DW_AT_decl_line(0x4c)
	.dwattr $C$DW$T$19, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$19

$C$DW$T$160	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$160, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$160, DW_AT_address_class(0x10)

$C$DW$T$161	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$161, DW_AT_name("__mqd_t")
	.dwattr $C$DW$T$161, DW_AT_type(*$C$DW$T$160)
	.dwattr $C$DW$T$161, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$161, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$161, DW_AT_decl_line(0x4c)
	.dwattr $C$DW$T$161, DW_AT_decl_column(0x16)


$C$DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$20, DW_AT_name("__timer")
	.dwattr $C$DW$T$20, DW_AT_declaration
	.dwattr $C$DW$T$20, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$20, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$T$20, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$20

$C$DW$T$162	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$162, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$162, DW_AT_address_class(0x10)

$C$DW$T$163	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$163, DW_AT_name("__timer_t")
	.dwattr $C$DW$T$163, DW_AT_type(*$C$DW$T$162)
	.dwattr $C$DW$T$163, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$163, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$163, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$T$163, DW_AT_decl_column(0x19)

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

$C$DW$132	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$132, DW_AT_name("PC")
	.dwattr $C$DW$132, DW_AT_location[DW_OP_reg0]

$C$DW$133	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$133, DW_AT_name("SP")
	.dwattr $C$DW$133, DW_AT_location[DW_OP_reg1]

$C$DW$134	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$134, DW_AT_name("SR")
	.dwattr $C$DW$134, DW_AT_location[DW_OP_reg2]

$C$DW$135	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$135, DW_AT_name("CG")
	.dwattr $C$DW$135, DW_AT_location[DW_OP_reg3]

$C$DW$136	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$136, DW_AT_name("r4")
	.dwattr $C$DW$136, DW_AT_location[DW_OP_reg4]

$C$DW$137	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$137, DW_AT_name("r5")
	.dwattr $C$DW$137, DW_AT_location[DW_OP_reg5]

$C$DW$138	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$138, DW_AT_name("r6")
	.dwattr $C$DW$138, DW_AT_location[DW_OP_reg6]

$C$DW$139	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$139, DW_AT_name("r7")
	.dwattr $C$DW$139, DW_AT_location[DW_OP_reg7]

$C$DW$140	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$140, DW_AT_name("r8")
	.dwattr $C$DW$140, DW_AT_location[DW_OP_reg8]

$C$DW$141	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$141, DW_AT_name("r9")
	.dwattr $C$DW$141, DW_AT_location[DW_OP_reg9]

$C$DW$142	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$142, DW_AT_name("r10")
	.dwattr $C$DW$142, DW_AT_location[DW_OP_reg10]

$C$DW$143	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$143, DW_AT_name("r11")
	.dwattr $C$DW$143, DW_AT_location[DW_OP_reg11]

$C$DW$144	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$144, DW_AT_name("r12")
	.dwattr $C$DW$144, DW_AT_location[DW_OP_reg12]

$C$DW$145	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$145, DW_AT_name("r13")
	.dwattr $C$DW$145, DW_AT_location[DW_OP_reg13]

$C$DW$146	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$146, DW_AT_name("r14")
	.dwattr $C$DW$146, DW_AT_location[DW_OP_reg14]

$C$DW$147	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$147, DW_AT_name("r15")
	.dwattr $C$DW$147, DW_AT_location[DW_OP_reg15]

$C$DW$148	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$148, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$148, DW_AT_location[DW_OP_reg16]

	.dwendtag $C$DW$CU


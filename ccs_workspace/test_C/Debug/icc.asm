;******************************************************************************
;* MSP430 G3 C/C++ Codegen                                              PC v20.2.5.LTS *
;* Date/Time created: Tue Nov  9 15:10:35 2021                                *
;******************************************************************************
	.compiler_opts --abi=eabi --diag_wrap=off --hll_source=on --mem_model:code=small --mem_model:data=small --object_format=elf --silicon_version=msp --symdebug:dwarf --symdebug:dwarf_version=3 

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../driverlib/MSP430FR2xx_4xx/icc.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI MSP430 G3 C/C++ Codegen PC v20.2.5.LTS Copyright (c) 2003-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\Users\wward\Documents\GitHub\Raytheon_VHDL_Generator\ccs_workspace\test_C\Debug")
;	C:\ti\ccs1040\ccs\tools\compiler\ti-cgt-msp430_20.2.5.LTS\bin\acpia430.exe -@C:\\Users\\wward\\AppData\\Local\\Temp\\{2EF07D74-876B-4101-89B7-5E8713803D80} 
	.sect	".text:ICC_enable"
	.clink
	.global	ICC_enable

$C$DW$1	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$1, DW_AT_name("ICC_enable")
	.dwattr $C$DW$1, DW_AT_low_pc(ICC_enable)
	.dwattr $C$DW$1, DW_AT_high_pc(0x00)
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("ICC_enable")
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_TI_begin_file("../driverlib/MSP430FR2xx_4xx/icc.c")
	.dwattr $C$DW$1, DW_AT_TI_begin_line(0x15)
	.dwattr $C$DW$1, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$1, DW_AT_decl_file("../driverlib/MSP430FR2xx_4xx/icc.c")
	.dwattr $C$DW$1, DW_AT_decl_line(0x15)
	.dwattr $C$DW$1, DW_AT_decl_column(0x06)
	.dwattr $C$DW$1, DW_AT_TI_max_frame_size(0x02)
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 22,column 1,is_stmt,address ICC_enable,isa 0

	.dwfde $C$DW$CIE, ICC_enable

;*****************************************************************************
;* FUNCTION NAME: ICC_enable                                                 *
;*                                                                           *
;*   Regs Modified     : SP                                                  *
;*   Regs Used         : SP                                                  *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
ICC_enable:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 23,column 2,is_stmt,isa 0
        OR.W      #128,&0x6c0           ; [] |23| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 24,column 1,is_stmt,isa 0
$C$DW$2	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$2, DW_AT_low_pc(0x00)
	.dwattr $C$DW$2, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$1, DW_AT_TI_end_file("../driverlib/MSP430FR2xx_4xx/icc.c")
	.dwattr $C$DW$1, DW_AT_TI_end_line(0x18)
	.dwattr $C$DW$1, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$1

	.sect	".text:ICC_disable"
	.clink
	.global	ICC_disable

$C$DW$3	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$3, DW_AT_name("ICC_disable")
	.dwattr $C$DW$3, DW_AT_low_pc(ICC_disable)
	.dwattr $C$DW$3, DW_AT_high_pc(0x00)
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("ICC_disable")
	.dwattr $C$DW$3, DW_AT_external
	.dwattr $C$DW$3, DW_AT_TI_begin_file("../driverlib/MSP430FR2xx_4xx/icc.c")
	.dwattr $C$DW$3, DW_AT_TI_begin_line(0x1a)
	.dwattr $C$DW$3, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$3, DW_AT_decl_file("../driverlib/MSP430FR2xx_4xx/icc.c")
	.dwattr $C$DW$3, DW_AT_decl_line(0x1a)
	.dwattr $C$DW$3, DW_AT_decl_column(0x06)
	.dwattr $C$DW$3, DW_AT_TI_max_frame_size(0x02)
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 27,column 1,is_stmt,address ICC_disable,isa 0

	.dwfde $C$DW$CIE, ICC_disable

;*****************************************************************************
;* FUNCTION NAME: ICC_disable                                                *
;*                                                                           *
;*   Regs Modified     : SP,SR                                               *
;*   Regs Used         : SP,SR                                               *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
ICC_disable:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 28,column 2,is_stmt,isa 0
        AND.W     #65407,&0x6c0         ; [] |28| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 29,column 1,is_stmt,isa 0
$C$DW$4	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$4, DW_AT_low_pc(0x00)
	.dwattr $C$DW$4, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$3, DW_AT_TI_end_file("../driverlib/MSP430FR2xx_4xx/icc.c")
	.dwattr $C$DW$3, DW_AT_TI_end_line(0x1d)
	.dwattr $C$DW$3, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$3

	.sect	".text:ICC_setInterruptLevel"
	.clink
	.global	ICC_setInterruptLevel

$C$DW$5	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$5, DW_AT_name("ICC_setInterruptLevel")
	.dwattr $C$DW$5, DW_AT_low_pc(ICC_setInterruptLevel)
	.dwattr $C$DW$5, DW_AT_high_pc(0x00)
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("ICC_setInterruptLevel")
	.dwattr $C$DW$5, DW_AT_external
	.dwattr $C$DW$5, DW_AT_TI_begin_file("../driverlib/MSP430FR2xx_4xx/icc.c")
	.dwattr $C$DW$5, DW_AT_TI_begin_line(0x1f)
	.dwattr $C$DW$5, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$5, DW_AT_decl_file("../driverlib/MSP430FR2xx_4xx/icc.c")
	.dwattr $C$DW$5, DW_AT_decl_line(0x1f)
	.dwattr $C$DW$5, DW_AT_decl_column(0x06)
	.dwattr $C$DW$5, DW_AT_TI_max_frame_size(0x0c)
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 31,column 71,is_stmt,address ICC_setInterruptLevel,isa 0

	.dwfde $C$DW$CIE, ICC_setInterruptLevel
$C$DW$6	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$6, DW_AT_name("ILSRmask")
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("ILSRmask")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$6, DW_AT_location[DW_OP_reg12]

$C$DW$7	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$7, DW_AT_name("interruptLevel")
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("interruptLevel")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$7, DW_AT_location[DW_OP_reg14]


;*****************************************************************************
;* FUNCTION NAME: ICC_setInterruptLevel                                      *
;*                                                                           *
;*   Regs Modified     : SP,SR,r12,r13,r14,r15                               *
;*   Regs Used         : SP,SR,r12,r13,r14,r15                               *
;*   Local Frame Size  : 0 Args + 10 Auto + 0 Save = 10 byte                 *
;*****************************************************************************
ICC_setInterruptLevel:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
        SUB.W     #10,SP                ; [] 
	.dwcfi	cfa_offset, 12
$C$DW$8	.dwtag  DW_TAG_variable
	.dwattr $C$DW$8, DW_AT_name("ILSRmask")
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("ILSRmask")
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$8, DW_AT_location[DW_OP_breg1 0]

$C$DW$9	.dwtag  DW_TAG_variable
	.dwattr $C$DW$9, DW_AT_name("mask")
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("mask")
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$9, DW_AT_location[DW_OP_breg1 4]

$C$DW$10	.dwtag  DW_TAG_variable
	.dwattr $C$DW$10, DW_AT_name("interruptLevel")
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("interruptLevel")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$10, DW_AT_location[DW_OP_breg1 8]

$C$DW$11	.dwtag  DW_TAG_variable
	.dwattr $C$DW$11, DW_AT_name("i")
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("i")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$11, DW_AT_location[DW_OP_breg1 9]

        MOV.B     r14,8(SP)             ; [] |31| 
        MOV.W     r12,0(SP)             ; [] |31| 
        MOV.W     r13,2(SP)             ; [] |31| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 32,column 16,is_stmt,isa 0
        MOV.W     #1,4(SP)              ; [] |32| 
        MOV.W     #0,6(SP)              ; [] |32| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 35,column 6,is_stmt,isa 0
        MOV.B     #0,9(SP)              ; [] |35| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 35,column 13,is_stmt,isa 0
        CMP.B     #8,9(SP)              ; [] |35| 
        JHS       $C$L4                 ; [] |35| 
                                          ; [] |35| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP $C$L1
;*
;*   Loop source line                : 35
;*   Loop closing brace source line  : 43
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
$C$L1:    
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 37,column 3,is_stmt,isa 0
        MOV.W     4(SP),r14             ; [] |37| 
        MOV.W     6(SP),r15             ; [] |37| 
        AND.W     0(SP),r14             ; [] |37| 
        AND.W     2(SP),r15             ; [] |37| 
        TST.W     r15                   ; [] |37| 
        JNE       $C$L2                 ; [] |37| 
                                          ; [] |37| 
;* --------------------------------------------------------------------------*
        TST.W     r14                   ; [] |37| 
        JEQ       $C$L3                 ; [] |37| 
                                          ; [] |37| 
;* --------------------------------------------------------------------------*
$C$L2:    
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 39,column 4,is_stmt,isa 0
        MOV.B     9(SP),r13             ; [] |39| 
        RLA.W     r13                   ; [] |39| 
        MOV.W     #3,r12                ; [] |39| 
$C$DW$12	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$12, DW_AT_low_pc(0x00)
	.dwattr $C$DW$12, DW_AT_name("__mspabi_slli")
	.dwattr $C$DW$12, DW_AT_TI_call

        CALL      #__mspabi_slli        ; [] |39| 
                                          ; [] |39| 
        BIC.W     r12,&0x6c4            ; [] |39| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 40,column 4,is_stmt,isa 0
        MOV.B     8(SP),r12             ; [] |40| 
        MOV.B     9(SP),r13             ; [] |40| 
        RLA.W     r13                   ; [] |40| 
$C$DW$13	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$13, DW_AT_low_pc(0x00)
	.dwattr $C$DW$13, DW_AT_name("__mspabi_slli")
	.dwattr $C$DW$13, DW_AT_TI_call

        CALL      #__mspabi_slli        ; [] |40| 
                                          ; [] |40| 
        OR.W      r12,&0x6c4            ; [] |40| 
;* --------------------------------------------------------------------------*
$C$L3:    
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 42,column 3,is_stmt,isa 0
        RLA.W     4(SP)                 ; [] |42| 
        ADDC.W    6(SP),6(SP)           ; [] |42| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 35,column 20,is_stmt,isa 0
        ADD.B     #1,9(SP)              ; [] |35| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 35,column 13,is_stmt,isa 0
        CMP.B     #8,9(SP)              ; [] |35| 
        JLO       $C$L1                 ; [] |35| 
                                          ; [] |35| 
;* --------------------------------------------------------------------------*
$C$L4:    
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 44,column 6,is_stmt,isa 0
        MOV.B     #0,9(SP)              ; [] |44| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 44,column 13,is_stmt,isa 0
        CMP.B     #8,9(SP)              ; [] |44| 
        JHS       $C$L8                 ; [] |44| 
                                          ; [] |44| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP $C$L5
;*
;*   Loop source line                : 44
;*   Loop closing brace source line  : 52
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
$C$L5:    
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 46,column 3,is_stmt,isa 0
        MOV.W     4(SP),r14             ; [] |46| 
        MOV.W     6(SP),r15             ; [] |46| 
        AND.W     0(SP),r14             ; [] |46| 
        AND.W     2(SP),r15             ; [] |46| 
        TST.W     r15                   ; [] |46| 
        JNE       $C$L6                 ; [] |46| 
                                          ; [] |46| 
;* --------------------------------------------------------------------------*
        TST.W     r14                   ; [] |46| 
        JEQ       $C$L7                 ; [] |46| 
                                          ; [] |46| 
;* --------------------------------------------------------------------------*
$C$L6:    
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 48,column 4,is_stmt,isa 0
        MOV.B     9(SP),r13             ; [] |48| 
        RLA.W     r13                   ; [] |48| 
        MOV.W     #3,r12                ; [] |48| 
$C$DW$14	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$14, DW_AT_low_pc(0x00)
	.dwattr $C$DW$14, DW_AT_name("__mspabi_slli")
	.dwattr $C$DW$14, DW_AT_TI_call

        CALL      #__mspabi_slli        ; [] |48| 
                                          ; [] |48| 
        BIC.W     r12,&0x6c6            ; [] |48| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 49,column 4,is_stmt,isa 0
        MOV.B     8(SP),r12             ; [] |49| 
        MOV.B     9(SP),r13             ; [] |49| 
        RLA.W     r13                   ; [] |49| 
$C$DW$15	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$15, DW_AT_low_pc(0x00)
	.dwattr $C$DW$15, DW_AT_name("__mspabi_slli")
	.dwattr $C$DW$15, DW_AT_TI_call

        CALL      #__mspabi_slli        ; [] |49| 
                                          ; [] |49| 
        OR.W      r12,&0x6c6            ; [] |49| 
;* --------------------------------------------------------------------------*
$C$L7:    
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 51,column 3,is_stmt,isa 0
        RLA.W     4(SP)                 ; [] |51| 
        ADDC.W    6(SP),6(SP)           ; [] |51| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 44,column 20,is_stmt,isa 0
        ADD.B     #1,9(SP)              ; [] |44| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 44,column 13,is_stmt,isa 0
        CMP.B     #8,9(SP)              ; [] |44| 
        JLO       $C$L5                 ; [] |44| 
                                          ; [] |44| 
;* --------------------------------------------------------------------------*
$C$L8:    
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 53,column 6,is_stmt,isa 0
        MOV.B     #0,9(SP)              ; [] |53| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 53,column 13,is_stmt,isa 0
        CMP.B     #8,9(SP)              ; [] |53| 
        JHS       $C$L12                ; [] |53| 
                                          ; [] |53| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP $C$L9
;*
;*   Loop source line                : 53
;*   Loop closing brace source line  : 61
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
$C$L9:    
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 55,column 3,is_stmt,isa 0
        MOV.W     4(SP),r14             ; [] |55| 
        MOV.W     6(SP),r15             ; [] |55| 
        AND.W     0(SP),r14             ; [] |55| 
        AND.W     2(SP),r15             ; [] |55| 
        TST.W     r15                   ; [] |55| 
        JNE       $C$L10                ; [] |55| 
                                          ; [] |55| 
;* --------------------------------------------------------------------------*
        TST.W     r14                   ; [] |55| 
        JEQ       $C$L11                ; [] |55| 
                                          ; [] |55| 
;* --------------------------------------------------------------------------*
$C$L10:    
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 57,column 4,is_stmt,isa 0
        MOV.B     9(SP),r13             ; [] |57| 
        RLA.W     r13                   ; [] |57| 
        MOV.W     #3,r12                ; [] |57| 
$C$DW$16	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$16, DW_AT_low_pc(0x00)
	.dwattr $C$DW$16, DW_AT_name("__mspabi_slli")
	.dwattr $C$DW$16, DW_AT_TI_call

        CALL      #__mspabi_slli        ; [] |57| 
                                          ; [] |57| 
        BIC.W     r12,&0x6c8            ; [] |57| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 58,column 4,is_stmt,isa 0
        MOV.B     8(SP),r12             ; [] |58| 
        MOV.B     9(SP),r13             ; [] |58| 
        RLA.W     r13                   ; [] |58| 
$C$DW$17	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$17, DW_AT_low_pc(0x00)
	.dwattr $C$DW$17, DW_AT_name("__mspabi_slli")
	.dwattr $C$DW$17, DW_AT_TI_call

        CALL      #__mspabi_slli        ; [] |58| 
                                          ; [] |58| 
        OR.W      r12,&0x6c8            ; [] |58| 
;* --------------------------------------------------------------------------*
$C$L11:    
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 60,column 3,is_stmt,isa 0
        RLA.W     4(SP)                 ; [] |60| 
        ADDC.W    6(SP),6(SP)           ; [] |60| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 53,column 20,is_stmt,isa 0
        ADD.B     #1,9(SP)              ; [] |53| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 53,column 13,is_stmt,isa 0
        CMP.B     #8,9(SP)              ; [] |53| 
        JLO       $C$L9                 ; [] |53| 
                                          ; [] |53| 
;* --------------------------------------------------------------------------*
$C$L12:    
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 62,column 6,is_stmt,isa 0
        MOV.B     #0,9(SP)              ; [] |62| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 62,column 13,is_stmt,isa 0
        CMP.B     #8,9(SP)              ; [] |62| 
        JHS       $C$L16                ; [] |62| 
                                          ; [] |62| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP $C$L13
;*
;*   Loop source line                : 62
;*   Loop closing brace source line  : 70
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
$C$L13:    
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 64,column 3,is_stmt,isa 0
        MOV.W     4(SP),r14             ; [] |64| 
        MOV.W     6(SP),r15             ; [] |64| 
        AND.W     0(SP),r14             ; [] |64| 
        AND.W     2(SP),r15             ; [] |64| 
        TST.W     r15                   ; [] |64| 
        JNE       $C$L14                ; [] |64| 
                                          ; [] |64| 
;* --------------------------------------------------------------------------*
        TST.W     r14                   ; [] |64| 
        JEQ       $C$L15                ; [] |64| 
                                          ; [] |64| 
;* --------------------------------------------------------------------------*
$C$L14:    
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 66,column 4,is_stmt,isa 0
        MOV.B     9(SP),r13             ; [] |66| 
        RLA.W     r13                   ; [] |66| 
        MOV.W     #3,r12                ; [] |66| 
$C$DW$18	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$18, DW_AT_low_pc(0x00)
	.dwattr $C$DW$18, DW_AT_name("__mspabi_slli")
	.dwattr $C$DW$18, DW_AT_TI_call

        CALL      #__mspabi_slli        ; [] |66| 
                                          ; [] |66| 
        BIC.W     r12,&0x6ca            ; [] |66| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 67,column 4,is_stmt,isa 0
        MOV.B     8(SP),r12             ; [] |67| 
        MOV.B     9(SP),r13             ; [] |67| 
        RLA.W     r13                   ; [] |67| 
$C$DW$19	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$19, DW_AT_low_pc(0x00)
	.dwattr $C$DW$19, DW_AT_name("__mspabi_slli")
	.dwattr $C$DW$19, DW_AT_TI_call

        CALL      #__mspabi_slli        ; [] |67| 
                                          ; [] |67| 
        OR.W      r12,&0x6ca            ; [] |67| 
;* --------------------------------------------------------------------------*
$C$L15:    
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 69,column 3,is_stmt,isa 0
        RLA.W     4(SP)                 ; [] |69| 
        ADDC.W    6(SP),6(SP)           ; [] |69| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 62,column 20,is_stmt,isa 0
        ADD.B     #1,9(SP)              ; [] |62| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 62,column 13,is_stmt,isa 0
        CMP.B     #8,9(SP)              ; [] |62| 
        JLO       $C$L13                ; [] |62| 
                                          ; [] |62| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 71,column 1,is_stmt,isa 0
;* --------------------------------------------------------------------------*
$C$L16:    
        ADD.W     #10,SP                ; [] 
	.dwcfi	cfa_offset, 2
$C$DW$20	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$20, DW_AT_low_pc(0x00)
	.dwattr $C$DW$20, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$5, DW_AT_TI_end_file("../driverlib/MSP430FR2xx_4xx/icc.c")
	.dwattr $C$DW$5, DW_AT_TI_end_line(0x47)
	.dwattr $C$DW$5, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$5

	.sect	".text:ICC_getInterruptLevel"
	.clink
	.global	ICC_getInterruptLevel

$C$DW$21	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$21, DW_AT_name("ICC_getInterruptLevel")
	.dwattr $C$DW$21, DW_AT_low_pc(ICC_getInterruptLevel)
	.dwattr $C$DW$21, DW_AT_high_pc(0x00)
	.dwattr $C$DW$21, DW_AT_TI_symbol_name("ICC_getInterruptLevel")
	.dwattr $C$DW$21, DW_AT_external
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$21, DW_AT_TI_begin_file("../driverlib/MSP430FR2xx_4xx/icc.c")
	.dwattr $C$DW$21, DW_AT_TI_begin_line(0x49)
	.dwattr $C$DW$21, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$21, DW_AT_decl_file("../driverlib/MSP430FR2xx_4xx/icc.c")
	.dwattr $C$DW$21, DW_AT_decl_line(0x49)
	.dwattr $C$DW$21, DW_AT_decl_column(0x09)
	.dwattr $C$DW$21, DW_AT_TI_max_frame_size(0x0c)
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 73,column 57,is_stmt,address ICC_getInterruptLevel,isa 0

	.dwfde $C$DW$CIE, ICC_getInterruptLevel
$C$DW$22	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$22, DW_AT_name("interruptSource")
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("interruptSource")
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$22, DW_AT_location[DW_OP_reg12]


;*****************************************************************************
;* FUNCTION NAME: ICC_getInterruptLevel                                      *
;*                                                                           *
;*   Regs Modified     : SP,SR,r12,r13,r14,r15                               *
;*   Regs Used         : SP,SR,r12,r13,r14,r15                               *
;*   Local Frame Size  : 0 Args + 10 Auto + 0 Save = 10 byte                 *
;*****************************************************************************
ICC_getInterruptLevel:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
        SUB.W     #10,SP                ; [] 
	.dwcfi	cfa_offset, 12
$C$DW$23	.dwtag  DW_TAG_variable
	.dwattr $C$DW$23, DW_AT_name("interruptSource")
	.dwattr $C$DW$23, DW_AT_TI_symbol_name("interruptSource")
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$23, DW_AT_location[DW_OP_breg1 0]

$C$DW$24	.dwtag  DW_TAG_variable
	.dwattr $C$DW$24, DW_AT_name("mask")
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("mask")
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$24, DW_AT_location[DW_OP_breg1 4]

$C$DW$25	.dwtag  DW_TAG_variable
	.dwattr $C$DW$25, DW_AT_name("i")
	.dwattr $C$DW$25, DW_AT_TI_symbol_name("i")
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$25, DW_AT_location[DW_OP_breg1 8]

        MOV.W     r12,0(SP)             ; [] |73| 
        MOV.W     r13,2(SP)             ; [] |73| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 74,column 19,is_stmt,isa 0
        MOV.W     #1,4(SP)              ; [] |74| 
        MOV.W     #0,6(SP)              ; [] |74| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 77,column 6,is_stmt,isa 0
        MOV.B     #0,8(SP)              ; [] |77| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 77,column 13,is_stmt,isa 0
        CMP.B     #8,8(SP)              ; [] |77| 
        JHS       $C$L20                ; [] |77| 
                                          ; [] |77| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP $C$L17
;*
;*   Loop source line                : 77
;*   Loop closing brace source line  : 84
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
$C$L17:    
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 79,column 3,is_stmt,isa 0
        MOV.W     4(SP),r14             ; [] |79| 
        MOV.W     6(SP),r15             ; [] |79| 
        AND.W     0(SP),r14             ; [] |79| 
        AND.W     2(SP),r15             ; [] |79| 
        TST.W     r15                   ; [] |79| 
        JNE       $C$L18                ; [] |79| 
                                          ; [] |79| 
;* --------------------------------------------------------------------------*
        TST.W     r14                   ; [] |79| 
        JEQ       $C$L19                ; [] |79| 
                                          ; [] |79| 
;* --------------------------------------------------------------------------*
$C$L18:    
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 81,column 4,is_stmt,isa 0
        MOV.B     8(SP),r13             ; [] |81| 
        RLA.W     r13                   ; [] |81| 
        MOV.W     #3,r12                ; [] |81| 
$C$DW$26	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$26, DW_AT_low_pc(0x00)
	.dwattr $C$DW$26, DW_AT_name("__mspabi_slli")
	.dwattr $C$DW$26, DW_AT_TI_call

        CALL      #__mspabi_slli        ; [] |81| 
                                          ; [] |81| 
        AND.W     &0x6c4,r12            ; [] |81| 
        MOV.B     8(SP),r13             ; [] |81| 
        RLA.W     r13                   ; [] |81| 
$C$DW$27	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$27, DW_AT_low_pc(0x00)
	.dwattr $C$DW$27, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$27, DW_AT_TI_call

        CALL      #__mspabi_srli        ; [] |81| 
                                          ; [] |81| 
        MOV.B     r12,r12               ; [] |81| 
        JMP       $C$L33                ; [] |81| 
                                          ; [] |81| 
;* --------------------------------------------------------------------------*
$C$L19:    
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 83,column 3,is_stmt,isa 0
        RLA.W     4(SP)                 ; [] |83| 
        ADDC.W    6(SP),6(SP)           ; [] |83| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 77,column 20,is_stmt,isa 0
        ADD.B     #1,8(SP)              ; [] |77| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 77,column 13,is_stmt,isa 0
        CMP.B     #8,8(SP)              ; [] |77| 
        JLO       $C$L17                ; [] |77| 
                                          ; [] |77| 
;* --------------------------------------------------------------------------*
$C$L20:    
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 85,column 6,is_stmt,isa 0
        MOV.B     #0,8(SP)              ; [] |85| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 85,column 13,is_stmt,isa 0
        CMP.B     #8,8(SP)              ; [] |85| 
        JHS       $C$L24                ; [] |85| 
                                          ; [] |85| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP $C$L21
;*
;*   Loop source line                : 85
;*   Loop closing brace source line  : 92
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
$C$L21:    
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 87,column 3,is_stmt,isa 0
        MOV.W     4(SP),r14             ; [] |87| 
        MOV.W     6(SP),r15             ; [] |87| 
        AND.W     0(SP),r14             ; [] |87| 
        AND.W     2(SP),r15             ; [] |87| 
        TST.W     r15                   ; [] |87| 
        JNE       $C$L22                ; [] |87| 
                                          ; [] |87| 
;* --------------------------------------------------------------------------*
        TST.W     r14                   ; [] |87| 
        JEQ       $C$L23                ; [] |87| 
                                          ; [] |87| 
;* --------------------------------------------------------------------------*
$C$L22:    
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 89,column 4,is_stmt,isa 0
        MOV.B     8(SP),r13             ; [] |89| 
        RLA.W     r13                   ; [] |89| 
        MOV.W     #3,r12                ; [] |89| 
$C$DW$28	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$28, DW_AT_low_pc(0x00)
	.dwattr $C$DW$28, DW_AT_name("__mspabi_slli")
	.dwattr $C$DW$28, DW_AT_TI_call

        CALL      #__mspabi_slli        ; [] |89| 
                                          ; [] |89| 
        AND.W     &0x6c6,r12            ; [] |89| 
        MOV.B     8(SP),r13             ; [] |89| 
        RLA.W     r13                   ; [] |89| 
$C$DW$29	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$29, DW_AT_low_pc(0x00)
	.dwattr $C$DW$29, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$29, DW_AT_TI_call

        CALL      #__mspabi_srli        ; [] |89| 
                                          ; [] |89| 
        MOV.B     r12,r12               ; [] |89| 
        JMP       $C$L33                ; [] |89| 
                                          ; [] |89| 
;* --------------------------------------------------------------------------*
$C$L23:    
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 91,column 3,is_stmt,isa 0
        RLA.W     4(SP)                 ; [] |91| 
        ADDC.W    6(SP),6(SP)           ; [] |91| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 85,column 20,is_stmt,isa 0
        ADD.B     #1,8(SP)              ; [] |85| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 85,column 13,is_stmt,isa 0
        CMP.B     #8,8(SP)              ; [] |85| 
        JLO       $C$L21                ; [] |85| 
                                          ; [] |85| 
;* --------------------------------------------------------------------------*
$C$L24:    
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 93,column 6,is_stmt,isa 0
        MOV.B     #0,8(SP)              ; [] |93| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 93,column 13,is_stmt,isa 0
        CMP.B     #8,8(SP)              ; [] |93| 
        JHS       $C$L28                ; [] |93| 
                                          ; [] |93| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP $C$L25
;*
;*   Loop source line                : 93
;*   Loop closing brace source line  : 100
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
$C$L25:    
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 95,column 3,is_stmt,isa 0
        MOV.W     4(SP),r14             ; [] |95| 
        MOV.W     6(SP),r15             ; [] |95| 
        AND.W     0(SP),r14             ; [] |95| 
        AND.W     2(SP),r15             ; [] |95| 
        TST.W     r15                   ; [] |95| 
        JNE       $C$L26                ; [] |95| 
                                          ; [] |95| 
;* --------------------------------------------------------------------------*
        TST.W     r14                   ; [] |95| 
        JEQ       $C$L27                ; [] |95| 
                                          ; [] |95| 
;* --------------------------------------------------------------------------*
$C$L26:    
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 97,column 4,is_stmt,isa 0
        MOV.B     8(SP),r13             ; [] |97| 
        RLA.W     r13                   ; [] |97| 
        MOV.W     #3,r12                ; [] |97| 
$C$DW$30	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$30, DW_AT_low_pc(0x00)
	.dwattr $C$DW$30, DW_AT_name("__mspabi_slli")
	.dwattr $C$DW$30, DW_AT_TI_call

        CALL      #__mspabi_slli        ; [] |97| 
                                          ; [] |97| 
        AND.W     &0x6c8,r12            ; [] |97| 
        MOV.B     8(SP),r13             ; [] |97| 
        RLA.W     r13                   ; [] |97| 
$C$DW$31	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$31, DW_AT_low_pc(0x00)
	.dwattr $C$DW$31, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$31, DW_AT_TI_call

        CALL      #__mspabi_srli        ; [] |97| 
                                          ; [] |97| 
        MOV.B     r12,r12               ; [] |97| 
        JMP       $C$L33                ; [] |97| 
                                          ; [] |97| 
;* --------------------------------------------------------------------------*
$C$L27:    
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 99,column 3,is_stmt,isa 0
        RLA.W     4(SP)                 ; [] |99| 
        ADDC.W    6(SP),6(SP)           ; [] |99| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 93,column 20,is_stmt,isa 0
        ADD.B     #1,8(SP)              ; [] |93| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 93,column 13,is_stmt,isa 0
        CMP.B     #8,8(SP)              ; [] |93| 
        JLO       $C$L25                ; [] |93| 
                                          ; [] |93| 
;* --------------------------------------------------------------------------*
$C$L28:    
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 101,column 6,is_stmt,isa 0
        MOV.B     #0,8(SP)              ; [] |101| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 101,column 13,is_stmt,isa 0
        CMP.B     #8,8(SP)              ; [] |101| 
        JHS       $C$L32                ; [] |101| 
                                          ; [] |101| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP $C$L29
;*
;*   Loop source line                : 101
;*   Loop closing brace source line  : 108
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
$C$L29:    
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 103,column 3,is_stmt,isa 0
        MOV.W     4(SP),r14             ; [] |103| 
        MOV.W     6(SP),r15             ; [] |103| 
        AND.W     0(SP),r14             ; [] |103| 
        AND.W     2(SP),r15             ; [] |103| 
        TST.W     r15                   ; [] |103| 
        JNE       $C$L30                ; [] |103| 
                                          ; [] |103| 
;* --------------------------------------------------------------------------*
        TST.W     r14                   ; [] |103| 
        JEQ       $C$L31                ; [] |103| 
                                          ; [] |103| 
;* --------------------------------------------------------------------------*
$C$L30:    
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 105,column 4,is_stmt,isa 0
        MOV.B     8(SP),r13             ; [] |105| 
        RLA.W     r13                   ; [] |105| 
        MOV.W     #3,r12                ; [] |105| 
$C$DW$32	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$32, DW_AT_low_pc(0x00)
	.dwattr $C$DW$32, DW_AT_name("__mspabi_slli")
	.dwattr $C$DW$32, DW_AT_TI_call

        CALL      #__mspabi_slli        ; [] |105| 
                                          ; [] |105| 
        AND.W     &0x6ca,r12            ; [] |105| 
        MOV.B     8(SP),r13             ; [] |105| 
        RLA.W     r13                   ; [] |105| 
$C$DW$33	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$33, DW_AT_low_pc(0x00)
	.dwattr $C$DW$33, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$33, DW_AT_TI_call

        CALL      #__mspabi_srli        ; [] |105| 
                                          ; [] |105| 
        MOV.B     r12,r12               ; [] |105| 
        JMP       $C$L33                ; [] |105| 
                                          ; [] |105| 
;* --------------------------------------------------------------------------*
$C$L31:    
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 107,column 3,is_stmt,isa 0
        RLA.W     4(SP)                 ; [] |107| 
        ADDC.W    6(SP),6(SP)           ; [] |107| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 101,column 20,is_stmt,isa 0
        ADD.B     #1,8(SP)              ; [] |101| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 101,column 13,is_stmt,isa 0
        CMP.B     #8,8(SP)              ; [] |101| 
        JLO       $C$L29                ; [] |101| 
                                          ; [] |101| 
;* --------------------------------------------------------------------------*
$C$L32:    
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 111,column 2,is_stmt,isa 0
        MOV.B     #4,r12                ; [] |111| 
;* --------------------------------------------------------------------------*
$C$L33:    
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 112,column 1,is_stmt,isa 0
        ADD.W     #10,SP                ; [] 
	.dwcfi	cfa_offset, 2
$C$DW$34	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$34, DW_AT_low_pc(0x00)
	.dwattr $C$DW$34, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$21, DW_AT_TI_end_file("../driverlib/MSP430FR2xx_4xx/icc.c")
	.dwattr $C$DW$21, DW_AT_TI_end_line(0x70)
	.dwattr $C$DW$21, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$21

	.sect	".text:ICC_isVirtualStackEmpty"
	.clink
	.global	ICC_isVirtualStackEmpty

$C$DW$35	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$35, DW_AT_name("ICC_isVirtualStackEmpty")
	.dwattr $C$DW$35, DW_AT_low_pc(ICC_isVirtualStackEmpty)
	.dwattr $C$DW$35, DW_AT_high_pc(0x00)
	.dwattr $C$DW$35, DW_AT_TI_symbol_name("ICC_isVirtualStackEmpty")
	.dwattr $C$DW$35, DW_AT_external
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$143)
	.dwattr $C$DW$35, DW_AT_TI_begin_file("../driverlib/MSP430FR2xx_4xx/icc.c")
	.dwattr $C$DW$35, DW_AT_TI_begin_line(0x72)
	.dwattr $C$DW$35, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$35, DW_AT_decl_file("../driverlib/MSP430FR2xx_4xx/icc.c")
	.dwattr $C$DW$35, DW_AT_decl_line(0x72)
	.dwattr $C$DW$35, DW_AT_decl_column(0x06)
	.dwattr $C$DW$35, DW_AT_TI_max_frame_size(0x02)
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 115,column 1,is_stmt,address ICC_isVirtualStackEmpty,isa 0

	.dwfde $C$DW$CIE, ICC_isVirtualStackEmpty

;*****************************************************************************
;* FUNCTION NAME: ICC_isVirtualStackEmpty                                    *
;*                                                                           *
;*   Regs Modified     : SP,SR,r12,r15                                       *
;*   Regs Used         : SP,SR,r12,r15                                       *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
ICC_isVirtualStackEmpty:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 116,column 2,is_stmt,isa 0
        MOV.B     #0,r12                ; [] |116| 
        BIT.W     #32,&0x6c0            ; [] |116| 
        JEQ       $C$L34                ; [] |116| 
                                          ; [] |116| 
;* --------------------------------------------------------------------------*
        MOV.W     #1,r15                ; [] |116| 
        JMP       $C$L35                ; [] |116| 
                                          ; [] |116| 
;* --------------------------------------------------------------------------*
$C$L34:    
        MOV.W     #0,r15                ; [] |116| 
;* --------------------------------------------------------------------------*
$C$L35:    
        TST.W     r15                   ; [] |116| 
        JEQ       $C$L36                ; [] |116| 
                                          ; [] |116| 
;* --------------------------------------------------------------------------*
        MOV.B     #1,r12                ; [] |116| 
;* --------------------------------------------------------------------------*
$C$L36:    
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 117,column 1,is_stmt,isa 0
$C$DW$36	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$36, DW_AT_low_pc(0x00)
	.dwattr $C$DW$36, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$35, DW_AT_TI_end_file("../driverlib/MSP430FR2xx_4xx/icc.c")
	.dwattr $C$DW$35, DW_AT_TI_end_line(0x75)
	.dwattr $C$DW$35, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$35

	.sect	".text:ICC_isVirtualStackFull"
	.clink
	.global	ICC_isVirtualStackFull

$C$DW$37	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$37, DW_AT_name("ICC_isVirtualStackFull")
	.dwattr $C$DW$37, DW_AT_low_pc(ICC_isVirtualStackFull)
	.dwattr $C$DW$37, DW_AT_high_pc(0x00)
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("ICC_isVirtualStackFull")
	.dwattr $C$DW$37, DW_AT_external
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$143)
	.dwattr $C$DW$37, DW_AT_TI_begin_file("../driverlib/MSP430FR2xx_4xx/icc.c")
	.dwattr $C$DW$37, DW_AT_TI_begin_line(0x77)
	.dwattr $C$DW$37, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$37, DW_AT_decl_file("../driverlib/MSP430FR2xx_4xx/icc.c")
	.dwattr $C$DW$37, DW_AT_decl_line(0x77)
	.dwattr $C$DW$37, DW_AT_decl_column(0x06)
	.dwattr $C$DW$37, DW_AT_TI_max_frame_size(0x02)
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 120,column 1,is_stmt,address ICC_isVirtualStackFull,isa 0

	.dwfde $C$DW$CIE, ICC_isVirtualStackFull

;*****************************************************************************
;* FUNCTION NAME: ICC_isVirtualStackFull                                     *
;*                                                                           *
;*   Regs Modified     : SP,SR,r12,r15                                       *
;*   Regs Used         : SP,SR,r12,r15                                       *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
ICC_isVirtualStackFull:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 121,column 2,is_stmt,isa 0
        MOV.B     #0,r12                ; [] |121| 
        BIT.W     #16,&0x6c0            ; [] |121| 
        JEQ       $C$L37                ; [] |121| 
                                          ; [] |121| 
;* --------------------------------------------------------------------------*
        MOV.W     #1,r15                ; [] |121| 
        JMP       $C$L38                ; [] |121| 
                                          ; [] |121| 
;* --------------------------------------------------------------------------*
$C$L37:    
        MOV.W     #0,r15                ; [] |121| 
;* --------------------------------------------------------------------------*
$C$L38:    
        TST.W     r15                   ; [] |121| 
        JEQ       $C$L39                ; [] |121| 
                                          ; [] |121| 
;* --------------------------------------------------------------------------*
        MOV.B     #1,r12                ; [] |121| 
;* --------------------------------------------------------------------------*
$C$L39:    
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 122,column 1,is_stmt,isa 0
$C$DW$38	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$38, DW_AT_low_pc(0x00)
	.dwattr $C$DW$38, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$37, DW_AT_TI_end_file("../driverlib/MSP430FR2xx_4xx/icc.c")
	.dwattr $C$DW$37, DW_AT_TI_end_line(0x7a)
	.dwattr $C$DW$37, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$37

	.sect	".text:ICC_getCurrentICM"
	.clink
	.global	ICC_getCurrentICM

$C$DW$39	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$39, DW_AT_name("ICC_getCurrentICM")
	.dwattr $C$DW$39, DW_AT_low_pc(ICC_getCurrentICM)
	.dwattr $C$DW$39, DW_AT_high_pc(0x00)
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("ICC_getCurrentICM")
	.dwattr $C$DW$39, DW_AT_external
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$39, DW_AT_TI_begin_file("../driverlib/MSP430FR2xx_4xx/icc.c")
	.dwattr $C$DW$39, DW_AT_TI_begin_line(0x7c)
	.dwattr $C$DW$39, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$39, DW_AT_decl_file("../driverlib/MSP430FR2xx_4xx/icc.c")
	.dwattr $C$DW$39, DW_AT_decl_line(0x7c)
	.dwattr $C$DW$39, DW_AT_decl_column(0x09)
	.dwattr $C$DW$39, DW_AT_TI_max_frame_size(0x02)
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 125,column 1,is_stmt,address ICC_getCurrentICM,isa 0

	.dwfde $C$DW$CIE, ICC_getCurrentICM

;*****************************************************************************
;* FUNCTION NAME: ICC_getCurrentICM                                          *
;*                                                                           *
;*   Regs Modified     : SP,SR,r12                                           *
;*   Regs Used         : SP,SR,r12                                           *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
ICC_getCurrentICM:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 126,column 2,is_stmt,isa 0
        MOV.W     &0x6c0,r12            ; [] |126| 
        AND.B     #3,r12                ; [] |126| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 127,column 1,is_stmt,isa 0
$C$DW$40	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$40, DW_AT_low_pc(0x00)
	.dwattr $C$DW$40, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$39, DW_AT_TI_end_file("../driverlib/MSP430FR2xx_4xx/icc.c")
	.dwattr $C$DW$39, DW_AT_TI_end_line(0x7f)
	.dwattr $C$DW$39, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$39

	.sect	".text:ICC_getMVSStackPointer"
	.clink
	.global	ICC_getMVSStackPointer

$C$DW$41	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$41, DW_AT_name("ICC_getMVSStackPointer")
	.dwattr $C$DW$41, DW_AT_low_pc(ICC_getMVSStackPointer)
	.dwattr $C$DW$41, DW_AT_high_pc(0x00)
	.dwattr $C$DW$41, DW_AT_TI_symbol_name("ICC_getMVSStackPointer")
	.dwattr $C$DW$41, DW_AT_external
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$41, DW_AT_TI_begin_file("../driverlib/MSP430FR2xx_4xx/icc.c")
	.dwattr $C$DW$41, DW_AT_TI_begin_line(0x81)
	.dwattr $C$DW$41, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$41, DW_AT_decl_file("../driverlib/MSP430FR2xx_4xx/icc.c")
	.dwattr $C$DW$41, DW_AT_decl_line(0x81)
	.dwattr $C$DW$41, DW_AT_decl_column(0x09)
	.dwattr $C$DW$41, DW_AT_TI_max_frame_size(0x02)
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 130,column 1,is_stmt,address ICC_getMVSStackPointer,isa 0

	.dwfde $C$DW$CIE, ICC_getMVSStackPointer

;*****************************************************************************
;* FUNCTION NAME: ICC_getMVSStackPointer                                     *
;*                                                                           *
;*   Regs Modified     : SP,SR,r12                                           *
;*   Regs Used         : SP,SR,r12                                           *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
ICC_getMVSStackPointer:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 131,column 2,is_stmt,isa 0
        MOV.W     #1792,r12             ; [] |131| 
        AND.W     &0x6c2,r12            ; [] |131| 
        SWPB      r12                   ; [] |131| 
        MOV.B     r12,r12               ; [] |131| 
        MOV.B     r12,r12               ; [] |131| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 132,column 1,is_stmt,isa 0
$C$DW$42	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$42, DW_AT_low_pc(0x00)
	.dwattr $C$DW$42, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$41, DW_AT_TI_end_file("../driverlib/MSP430FR2xx_4xx/icc.c")
	.dwattr $C$DW$41, DW_AT_TI_end_line(0x84)
	.dwattr $C$DW$41, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$41

	.sect	".text:ICC_getICM3"
	.clink
	.global	ICC_getICM3

$C$DW$43	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$43, DW_AT_name("ICC_getICM3")
	.dwattr $C$DW$43, DW_AT_low_pc(ICC_getICM3)
	.dwattr $C$DW$43, DW_AT_high_pc(0x00)
	.dwattr $C$DW$43, DW_AT_TI_symbol_name("ICC_getICM3")
	.dwattr $C$DW$43, DW_AT_external
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$43, DW_AT_TI_begin_file("../driverlib/MSP430FR2xx_4xx/icc.c")
	.dwattr $C$DW$43, DW_AT_TI_begin_line(0x86)
	.dwattr $C$DW$43, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$43, DW_AT_decl_file("../driverlib/MSP430FR2xx_4xx/icc.c")
	.dwattr $C$DW$43, DW_AT_decl_line(0x86)
	.dwattr $C$DW$43, DW_AT_decl_column(0x09)
	.dwattr $C$DW$43, DW_AT_TI_max_frame_size(0x02)
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 135,column 1,is_stmt,address ICC_getICM3,isa 0

	.dwfde $C$DW$CIE, ICC_getICM3

;*****************************************************************************
;* FUNCTION NAME: ICC_getICM3                                                *
;*                                                                           *
;*   Regs Modified     : SP,SR,r12                                           *
;*   Regs Used         : SP,SR,r12                                           *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
ICC_getICM3:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 136,column 2,is_stmt,isa 0
        MOV.W     #192,r12              ; [] |136| 
        AND.W     &0x6c2,r12            ; [] |136| 
$C$DW$44	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$44, DW_AT_low_pc(0x00)
	.dwattr $C$DW$44, DW_AT_name("__mspabi_srli_6")
	.dwattr $C$DW$44, DW_AT_TI_call

        CALL      #__mspabi_srli_6      ; [] |136| 
                                          ; [] |136| 
        MOV.B     r12,r12               ; [] |136| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 137,column 1,is_stmt,isa 0
$C$DW$45	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$45, DW_AT_low_pc(0x00)
	.dwattr $C$DW$45, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$43, DW_AT_TI_end_file("../driverlib/MSP430FR2xx_4xx/icc.c")
	.dwattr $C$DW$43, DW_AT_TI_end_line(0x89)
	.dwattr $C$DW$43, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$43

	.sect	".text:ICC_getICM2"
	.clink
	.global	ICC_getICM2

$C$DW$46	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$46, DW_AT_name("ICC_getICM2")
	.dwattr $C$DW$46, DW_AT_low_pc(ICC_getICM2)
	.dwattr $C$DW$46, DW_AT_high_pc(0x00)
	.dwattr $C$DW$46, DW_AT_TI_symbol_name("ICC_getICM2")
	.dwattr $C$DW$46, DW_AT_external
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$46, DW_AT_TI_begin_file("../driverlib/MSP430FR2xx_4xx/icc.c")
	.dwattr $C$DW$46, DW_AT_TI_begin_line(0x8b)
	.dwattr $C$DW$46, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$46, DW_AT_decl_file("../driverlib/MSP430FR2xx_4xx/icc.c")
	.dwattr $C$DW$46, DW_AT_decl_line(0x8b)
	.dwattr $C$DW$46, DW_AT_decl_column(0x09)
	.dwattr $C$DW$46, DW_AT_TI_max_frame_size(0x02)
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 140,column 1,is_stmt,address ICC_getICM2,isa 0

	.dwfde $C$DW$CIE, ICC_getICM2

;*****************************************************************************
;* FUNCTION NAME: ICC_getICM2                                                *
;*                                                                           *
;*   Regs Modified     : SP,SR,r12                                           *
;*   Regs Used         : SP,SR,r12                                           *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
ICC_getICM2:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 141,column 2,is_stmt,isa 0
        MOV.W     #48,r12               ; [] |141| 
        AND.W     &0x6c2,r12            ; [] |141| 
$C$DW$47	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$47, DW_AT_low_pc(0x00)
	.dwattr $C$DW$47, DW_AT_name("__mspabi_srli_4")
	.dwattr $C$DW$47, DW_AT_TI_call

        CALL      #__mspabi_srli_4      ; [] |141| 
                                          ; [] |141| 
        MOV.B     r12,r12               ; [] |141| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 142,column 1,is_stmt,isa 0
$C$DW$48	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$48, DW_AT_low_pc(0x00)
	.dwattr $C$DW$48, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$46, DW_AT_TI_end_file("../driverlib/MSP430FR2xx_4xx/icc.c")
	.dwattr $C$DW$46, DW_AT_TI_end_line(0x8e)
	.dwattr $C$DW$46, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$46

	.sect	".text:ICC_getICM1"
	.clink
	.global	ICC_getICM1

$C$DW$49	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$49, DW_AT_name("ICC_getICM1")
	.dwattr $C$DW$49, DW_AT_low_pc(ICC_getICM1)
	.dwattr $C$DW$49, DW_AT_high_pc(0x00)
	.dwattr $C$DW$49, DW_AT_TI_symbol_name("ICC_getICM1")
	.dwattr $C$DW$49, DW_AT_external
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$49, DW_AT_TI_begin_file("../driverlib/MSP430FR2xx_4xx/icc.c")
	.dwattr $C$DW$49, DW_AT_TI_begin_line(0x90)
	.dwattr $C$DW$49, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$49, DW_AT_decl_file("../driverlib/MSP430FR2xx_4xx/icc.c")
	.dwattr $C$DW$49, DW_AT_decl_line(0x90)
	.dwattr $C$DW$49, DW_AT_decl_column(0x09)
	.dwattr $C$DW$49, DW_AT_TI_max_frame_size(0x02)
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 145,column 1,is_stmt,address ICC_getICM1,isa 0

	.dwfde $C$DW$CIE, ICC_getICM1

;*****************************************************************************
;* FUNCTION NAME: ICC_getICM1                                                *
;*                                                                           *
;*   Regs Modified     : SP,SR,r12                                           *
;*   Regs Used         : SP,SR,r12                                           *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
ICC_getICM1:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 146,column 2,is_stmt,isa 0
        MOV.W     #12,r12               ; [] |146| 
        AND.W     &0x6c2,r12            ; [] |146| 
        CLRC                            ; [] |146| 
        RRC.W     r12                   ; [] |146| 
        RRA.W     r12                   ; [] |146| 
        MOV.B     r12,r12               ; [] |146| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 147,column 1,is_stmt,isa 0
$C$DW$50	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$50, DW_AT_low_pc(0x00)
	.dwattr $C$DW$50, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$49, DW_AT_TI_end_file("../driverlib/MSP430FR2xx_4xx/icc.c")
	.dwattr $C$DW$49, DW_AT_TI_end_line(0x93)
	.dwattr $C$DW$49, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$49

	.sect	".text:ICC_getICM0"
	.clink
	.global	ICC_getICM0

$C$DW$51	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$51, DW_AT_name("ICC_getICM0")
	.dwattr $C$DW$51, DW_AT_low_pc(ICC_getICM0)
	.dwattr $C$DW$51, DW_AT_high_pc(0x00)
	.dwattr $C$DW$51, DW_AT_TI_symbol_name("ICC_getICM0")
	.dwattr $C$DW$51, DW_AT_external
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$51, DW_AT_TI_begin_file("../driverlib/MSP430FR2xx_4xx/icc.c")
	.dwattr $C$DW$51, DW_AT_TI_begin_line(0x95)
	.dwattr $C$DW$51, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$51, DW_AT_decl_file("../driverlib/MSP430FR2xx_4xx/icc.c")
	.dwattr $C$DW$51, DW_AT_decl_line(0x95)
	.dwattr $C$DW$51, DW_AT_decl_column(0x09)
	.dwattr $C$DW$51, DW_AT_TI_max_frame_size(0x02)
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 150,column 1,is_stmt,address ICC_getICM0,isa 0

	.dwfde $C$DW$CIE, ICC_getICM0

;*****************************************************************************
;* FUNCTION NAME: ICC_getICM0                                                *
;*                                                                           *
;*   Regs Modified     : SP,SR,r12                                           *
;*   Regs Used         : SP,SR,r12                                           *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
ICC_getICM0:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 151,column 2,is_stmt,isa 0
        MOV.W     &0x6c2,r12            ; [] |151| 
        AND.B     #3,r12                ; [] |151| 
	.dwpsn	file "../driverlib/MSP430FR2xx_4xx/icc.c",line 152,column 1,is_stmt,isa 0
$C$DW$52	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$52, DW_AT_low_pc(0x00)
	.dwattr $C$DW$52, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$51, DW_AT_TI_end_file("../driverlib/MSP430FR2xx_4xx/icc.c")
	.dwattr $C$DW$51, DW_AT_TI_end_line(0x98)
	.dwattr $C$DW$51, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$51

;*****************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                             *
;*****************************************************************************
	.global	__mspabi_slli
	.global	__mspabi_srli
	.global	__mspabi_srli_6
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
$C$DW$53	.dwtag  DW_TAG_member
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$14)
	.dwattr $C$DW$53, DW_AT_name("__max_align1")
	.dwattr $C$DW$53, DW_AT_TI_symbol_name("__max_align1")
	.dwattr $C$DW$53, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$53, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$53, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$53, DW_AT_decl_line(0x7b)
	.dwattr $C$DW$53, DW_AT_decl_column(0x0c)

$C$DW$54	.dwtag  DW_TAG_member
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$18)
	.dwattr $C$DW$54, DW_AT_name("__max_align2")
	.dwattr $C$DW$54, DW_AT_TI_symbol_name("__max_align2")
	.dwattr $C$DW$54, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$54, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$54, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$54, DW_AT_decl_line(0x7c)
	.dwattr $C$DW$54, DW_AT_decl_column(0x0e)

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


$C$DW$T$29	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$29, DW_AT_language(DW_LANG_C)
	.dwendtag $C$DW$T$29

$C$DW$T$30	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$30, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$30, DW_AT_address_class(0x10)

$C$DW$T$31	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$31, DW_AT_name("__SFR_FARPTR")
	.dwattr $C$DW$T$31, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$31, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$31, DW_AT_decl_file("C:\ti\ccs1040\ccs\ccs_base\msp430\include\colt430fr2355.h")
	.dwattr $C$DW$T$31, DW_AT_decl_line(0x43)
	.dwattr $C$DW$T$31, DW_AT_decl_column(0x11)

$C$DW$T$4	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$4, DW_AT_encoding(DW_ATE_boolean)
	.dwattr $C$DW$T$4, DW_AT_name("bool")
	.dwattr $C$DW$T$4, DW_AT_byte_size(0x01)

$C$DW$T$5	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$5, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$5, DW_AT_name("signed char")
	.dwattr $C$DW$T$5, DW_AT_byte_size(0x01)

$C$DW$T$32	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$32, DW_AT_name("__int8_t")
	.dwattr $C$DW$T$32, DW_AT_type(*$C$DW$T$5)
	.dwattr $C$DW$T$32, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$32, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$32, DW_AT_decl_line(0x36)
	.dwattr $C$DW$T$32, DW_AT_decl_column(0x16)

$C$DW$T$33	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$33, DW_AT_name("__int_least8_t")
	.dwattr $C$DW$T$33, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$T$33, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$33, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$33, DW_AT_decl_line(0x5a)
	.dwattr $C$DW$T$33, DW_AT_decl_column(0x12)

$C$DW$T$34	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$34, DW_AT_name("int_least8_t")
	.dwattr $C$DW$T$34, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$34, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$34, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$34, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$T$34, DW_AT_decl_column(0x19)

$C$DW$T$35	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$35, DW_AT_name("int8_t")
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$T$35, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$35, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$35, DW_AT_decl_line(0x25)
	.dwattr $C$DW$T$35, DW_AT_decl_column(0x13)

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

$C$DW$T$36	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$36, DW_AT_name("__sa_family_t")
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$36, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$36, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$36, DW_AT_decl_line(0x47)
	.dwattr $C$DW$T$36, DW_AT_decl_column(0x13)

$C$DW$T$37	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$37, DW_AT_name("__uint_least8_t")
	.dwattr $C$DW$T$37, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$37, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$37, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$37, DW_AT_decl_line(0x74)
	.dwattr $C$DW$T$37, DW_AT_decl_column(0x13)

$C$DW$T$38	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$38, DW_AT_name("uint_least8_t")
	.dwattr $C$DW$T$38, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$T$38, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$38, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$38, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$T$38, DW_AT_decl_column(0x1a)

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

$C$DW$T$41	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$41, DW_AT_name("_Mbstatet")
	.dwattr $C$DW$T$41, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$41, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$41, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$41, DW_AT_decl_line(0x8f)
	.dwattr $C$DW$T$41, DW_AT_decl_column(0x0d)

$C$DW$T$42	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$42, DW_AT_name("__mbstate_t")
	.dwattr $C$DW$T$42, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$T$42, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$42, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$42, DW_AT_decl_line(0x92)
	.dwattr $C$DW$T$42, DW_AT_decl_column(0x13)

$C$DW$T$43	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$43, DW_AT_name("__accmode_t")
	.dwattr $C$DW$T$43, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$43, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$43, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$43, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$T$43, DW_AT_decl_column(0x0e)

$C$DW$T$44	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$44, DW_AT_name("__cpulevel_t")
	.dwattr $C$DW$T$44, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$44, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$44, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$44, DW_AT_decl_line(0x50)
	.dwattr $C$DW$T$44, DW_AT_decl_column(0x0e)

$C$DW$T$45	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$45, DW_AT_name("__cpusetid_t")
	.dwattr $C$DW$T$45, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$45, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$45, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$45, DW_AT_decl_line(0x51)
	.dwattr $C$DW$T$45, DW_AT_decl_column(0x0e)

$C$DW$T$46	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$46, DW_AT_name("__cpuwhich_t")
	.dwattr $C$DW$T$46, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$46, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$46, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$46, DW_AT_decl_line(0x4f)
	.dwattr $C$DW$T$46, DW_AT_decl_column(0x0e)

$C$DW$T$47	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$47, DW_AT_name("__ct_rune_t")
	.dwattr $C$DW$T$47, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$47, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$47, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$47, DW_AT_decl_line(0x69)
	.dwattr $C$DW$T$47, DW_AT_decl_column(0x0e)

$C$DW$T$48	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$48, DW_AT_name("__rune_t")
	.dwattr $C$DW$T$48, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$T$48, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$48, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$48, DW_AT_decl_line(0x6c)
	.dwattr $C$DW$T$48, DW_AT_decl_column(0x15)

$C$DW$T$49	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$49, DW_AT_name("__wint_t")
	.dwattr $C$DW$T$49, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$T$49, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$49, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$49, DW_AT_decl_line(0x6d)
	.dwattr $C$DW$T$49, DW_AT_decl_column(0x15)

$C$DW$T$50	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$50, DW_AT_name("__int16_t")
	.dwattr $C$DW$T$50, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$50, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$50, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$50, DW_AT_decl_line(0x38)
	.dwattr $C$DW$T$50, DW_AT_decl_column(0x0f)

$C$DW$T$51	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$51, DW_AT_name("__int_fast16_t")
	.dwattr $C$DW$T$51, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$T$51, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$51, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$51, DW_AT_decl_line(0x57)
	.dwattr $C$DW$T$51, DW_AT_decl_column(0x13)

$C$DW$T$52	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$52, DW_AT_name("int_fast16_t")
	.dwattr $C$DW$T$52, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$T$52, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$52, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$52, DW_AT_decl_line(0x35)
	.dwattr $C$DW$T$52, DW_AT_decl_column(0x19)

$C$DW$T$53	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$53, DW_AT_name("__int_fast8_t")
	.dwattr $C$DW$T$53, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$T$53, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$53, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$53, DW_AT_decl_line(0x56)
	.dwattr $C$DW$T$53, DW_AT_decl_column(0x13)

$C$DW$T$54	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$54, DW_AT_name("int_fast8_t")
	.dwattr $C$DW$T$54, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$T$54, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$54, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$54, DW_AT_decl_line(0x34)
	.dwattr $C$DW$T$54, DW_AT_decl_column(0x18)

$C$DW$T$55	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$55, DW_AT_name("__int_least16_t")
	.dwattr $C$DW$T$55, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$T$55, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$55, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$55, DW_AT_decl_line(0x5b)
	.dwattr $C$DW$T$55, DW_AT_decl_column(0x13)

$C$DW$T$56	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$56, DW_AT_name("int_least16_t")
	.dwattr $C$DW$T$56, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$T$56, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$56, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$56, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$T$56, DW_AT_decl_column(0x1a)

$C$DW$T$57	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$57, DW_AT_name("__intptr_t")
	.dwattr $C$DW$T$57, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$T$57, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$57, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$57, DW_AT_decl_line(0x53)
	.dwattr $C$DW$T$57, DW_AT_decl_column(0x19)

$C$DW$T$58	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$58, DW_AT_name("intptr_t")
	.dwattr $C$DW$T$58, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$T$58, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$58, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$58, DW_AT_decl_line(0x50)
	.dwattr $C$DW$T$58, DW_AT_decl_column(0x15)

$C$DW$T$59	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$59, DW_AT_name("__register_t")
	.dwattr $C$DW$T$59, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$T$59, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$59, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$59, DW_AT_decl_line(0x5f)
	.dwattr $C$DW$T$59, DW_AT_decl_column(0x13)

$C$DW$T$60	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$60, DW_AT_name("int16_t")
	.dwattr $C$DW$T$60, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$T$60, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$60, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$60, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$T$60, DW_AT_decl_column(0x14)

$C$DW$T$61	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$61, DW_AT_name("__nl_item")
	.dwattr $C$DW$T$61, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$61, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$61, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$61, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$T$61, DW_AT_decl_column(0x0e)

$C$DW$T$62	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$62, DW_AT_name("__ptrdiff_t")
	.dwattr $C$DW$T$62, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$62, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$62, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$62, DW_AT_decl_line(0x5e)
	.dwattr $C$DW$T$62, DW_AT_decl_column(0x1c)

$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x02)

$C$DW$T$63	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$63, DW_AT_name("___wchar_t")
	.dwattr $C$DW$T$63, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$63, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$63, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$63, DW_AT_decl_line(0x7d)
	.dwattr $C$DW$T$63, DW_AT_decl_column(0x1a)

$C$DW$T$64	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$64, DW_AT_name("__size_t")
	.dwattr $C$DW$T$64, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$64, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$64, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$64, DW_AT_decl_line(0x61)
	.dwattr $C$DW$T$64, DW_AT_decl_column(0x19)

$C$DW$T$65	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$65, DW_AT_name("__uint16_t")
	.dwattr $C$DW$T$65, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$65, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$65, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$65, DW_AT_decl_line(0x39)
	.dwattr $C$DW$T$65, DW_AT_decl_column(0x17)

$C$DW$T$66	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$66, DW_AT_name("__mode_t")
	.dwattr $C$DW$T$66, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$T$66, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$66, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$66, DW_AT_decl_line(0x3a)
	.dwattr $C$DW$T$66, DW_AT_decl_column(0x14)

$C$DW$T$67	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$67, DW_AT_name("__u_register_t")
	.dwattr $C$DW$T$67, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$T$67, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$67, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$67, DW_AT_decl_line(0x78)
	.dwattr $C$DW$T$67, DW_AT_decl_column(0x14)

$C$DW$T$68	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$68, DW_AT_name("__uint_fast16_t")
	.dwattr $C$DW$T$68, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$T$68, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$68, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$68, DW_AT_decl_line(0x71)
	.dwattr $C$DW$T$68, DW_AT_decl_column(0x14)

$C$DW$T$69	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$69, DW_AT_name("uint_fast16_t")
	.dwattr $C$DW$T$69, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$T$69, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$69, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$69, DW_AT_decl_line(0x3a)
	.dwattr $C$DW$T$69, DW_AT_decl_column(0x1a)

$C$DW$T$70	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$70, DW_AT_name("__uint_fast8_t")
	.dwattr $C$DW$T$70, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$T$70, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$70, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$70, DW_AT_decl_line(0x70)
	.dwattr $C$DW$T$70, DW_AT_decl_column(0x14)

$C$DW$T$71	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$71, DW_AT_name("uint_fast8_t")
	.dwattr $C$DW$T$71, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$T$71, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$71, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$71, DW_AT_decl_line(0x39)
	.dwattr $C$DW$T$71, DW_AT_decl_column(0x19)

$C$DW$T$72	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$72, DW_AT_name("__uint_least16_t")
	.dwattr $C$DW$T$72, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$T$72, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$72, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$72, DW_AT_decl_line(0x75)
	.dwattr $C$DW$T$72, DW_AT_decl_column(0x14)

$C$DW$T$73	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$73, DW_AT_name("__char16_t")
	.dwattr $C$DW$T$73, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$T$73, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$73, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$73, DW_AT_decl_line(0x71)
	.dwattr $C$DW$T$73, DW_AT_decl_column(0x1a)

$C$DW$T$74	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$74, DW_AT_name("uint_least16_t")
	.dwattr $C$DW$T$74, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$T$74, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$74, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$74, DW_AT_decl_line(0x30)
	.dwattr $C$DW$T$74, DW_AT_decl_column(0x1a)

$C$DW$T$75	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$75, DW_AT_name("__uintptr_t")
	.dwattr $C$DW$T$75, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$T$75, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$75, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$75, DW_AT_decl_line(0x6d)
	.dwattr $C$DW$T$75, DW_AT_decl_column(0x14)

$C$DW$T$76	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$76, DW_AT_name("uintptr_t")
	.dwattr $C$DW$T$76, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$T$76, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$76, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$76, DW_AT_decl_line(0x54)
	.dwattr $C$DW$T$76, DW_AT_decl_column(0x16)

$C$DW$T$77	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$77, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$77, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$T$77, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$77, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$77, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$77, DW_AT_decl_column(0x15)

$C$DW$T$80	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$80, DW_AT_name("__useconds_t")
	.dwattr $C$DW$T$80, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$80, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$80, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$80, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$T$80, DW_AT_decl_column(0x16)

$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x04)

$C$DW$T$81	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$81, DW_AT_name("__int32_t")
	.dwattr $C$DW$T$81, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$81, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$81, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$81, DW_AT_decl_line(0x3a)
	.dwattr $C$DW$T$81, DW_AT_decl_column(0x10)

$C$DW$T$82	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$82, DW_AT_name("__blksize_t")
	.dwattr $C$DW$T$82, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$T$82, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$82, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$82, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$T$82, DW_AT_decl_column(0x13)

$C$DW$T$83	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$83, DW_AT_name("__clockid_t")
	.dwattr $C$DW$T$83, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$T$83, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$83, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$83, DW_AT_decl_line(0x31)
	.dwattr $C$DW$T$83, DW_AT_decl_column(0x13)

$C$DW$T$84	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$84, DW_AT_name("__critical_t")
	.dwattr $C$DW$T$84, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$T$84, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$84, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$84, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$T$84, DW_AT_decl_column(0x13)

$C$DW$T$85	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$85, DW_AT_name("__int_fast32_t")
	.dwattr $C$DW$T$85, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$T$85, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$85, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$85, DW_AT_decl_line(0x58)
	.dwattr $C$DW$T$85, DW_AT_decl_column(0x13)

$C$DW$T$86	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$86, DW_AT_name("int_fast32_t")
	.dwattr $C$DW$T$86, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$T$86, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$86, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$86, DW_AT_decl_line(0x36)
	.dwattr $C$DW$T$86, DW_AT_decl_column(0x19)

$C$DW$T$87	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$87, DW_AT_name("__int_least32_t")
	.dwattr $C$DW$T$87, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$T$87, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$87, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$87, DW_AT_decl_line(0x5c)
	.dwattr $C$DW$T$87, DW_AT_decl_column(0x13)

$C$DW$T$88	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$88, DW_AT_name("int_least32_t")
	.dwattr $C$DW$T$88, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$T$88, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$88, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$88, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$T$88, DW_AT_decl_column(0x1a)

$C$DW$T$89	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$89, DW_AT_name("__intfptr_t")
	.dwattr $C$DW$T$89, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$T$89, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$89, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$89, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$T$89, DW_AT_decl_column(0x13)

$C$DW$T$90	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$90, DW_AT_name("__lwpid_t")
	.dwattr $C$DW$T$90, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$T$90, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$90, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$90, DW_AT_decl_line(0x39)
	.dwattr $C$DW$T$90, DW_AT_decl_column(0x13)

$C$DW$T$91	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$91, DW_AT_name("__pid_t")
	.dwattr $C$DW$T$91, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$T$91, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$91, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$91, DW_AT_decl_line(0x40)
	.dwattr $C$DW$T$91, DW_AT_decl_column(0x13)

$C$DW$T$92	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$92, DW_AT_name("__segsz_t")
	.dwattr $C$DW$T$92, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$T$92, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$92, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$92, DW_AT_decl_line(0x60)
	.dwattr $C$DW$T$92, DW_AT_decl_column(0x13)

$C$DW$T$93	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$93, DW_AT_name("__ssize_t")
	.dwattr $C$DW$T$93, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$T$93, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$93, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$93, DW_AT_decl_line(0x62)
	.dwattr $C$DW$T$93, DW_AT_decl_column(0x13)

$C$DW$T$94	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$94, DW_AT_name("int32_t")
	.dwattr $C$DW$T$94, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$T$94, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$94, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$94, DW_AT_decl_line(0x30)
	.dwattr $C$DW$T$94, DW_AT_decl_column(0x14)

$C$DW$T$95	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$95, DW_AT_name("__key_t")
	.dwattr $C$DW$T$95, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$95, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$95, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$95, DW_AT_decl_line(0x38)
	.dwattr $C$DW$T$95, DW_AT_decl_column(0x0f)

$C$DW$T$96	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$96, DW_AT_name("__suseconds_t")
	.dwattr $C$DW$T$96, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$96, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$96, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$96, DW_AT_decl_line(0x4a)
	.dwattr $C$DW$T$96, DW_AT_decl_column(0x0f)

$C$DW$T$97	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$97, DW_AT_name("_off_t")
	.dwattr $C$DW$T$97, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$97, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$97, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$97, DW_AT_decl_line(0x8d)
	.dwattr $C$DW$T$97, DW_AT_decl_column(0x12)

$C$DW$T$98	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$98, DW_AT_name("__off_t")
	.dwattr $C$DW$T$98, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$T$98, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$98, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$98, DW_AT_decl_line(0x3e)
	.dwattr $C$DW$T$98, DW_AT_decl_column(0x18)

$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x04)

$C$DW$T$24	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$24, DW_AT_name("__uint32_t")
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$24, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$24, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$24, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$T$24, DW_AT_decl_column(0x18)

$C$DW$T$99	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$99, DW_AT_name("__clock_t")
	.dwattr $C$DW$T$99, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$99, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$99, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$99, DW_AT_decl_line(0x4a)
	.dwattr $C$DW$T$99, DW_AT_decl_column(0x14)

$C$DW$T$100	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$100, DW_AT_name("__fflags_t")
	.dwattr $C$DW$T$100, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$100, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$100, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$100, DW_AT_decl_line(0x32)
	.dwattr $C$DW$T$100, DW_AT_decl_column(0x14)

$C$DW$T$101	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$101, DW_AT_name("__fixpt_t")
	.dwattr $C$DW$T$101, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$101, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$101, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$101, DW_AT_decl_line(0x81)
	.dwattr $C$DW$T$101, DW_AT_decl_column(0x14)

$C$DW$T$102	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$102, DW_AT_name("__gid_t")
	.dwattr $C$DW$T$102, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$102, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$102, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$102, DW_AT_decl_line(0x35)
	.dwattr $C$DW$T$102, DW_AT_decl_column(0x14)

$C$DW$T$103	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$103, DW_AT_name("__socklen_t")
	.dwattr $C$DW$T$103, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$103, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$103, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$103, DW_AT_decl_line(0x49)
	.dwattr $C$DW$T$103, DW_AT_decl_column(0x14)

$C$DW$T$104	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$104, DW_AT_name("__time_t")
	.dwattr $C$DW$T$104, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$104, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$104, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$104, DW_AT_decl_line(0x66)
	.dwattr $C$DW$T$104, DW_AT_decl_column(0x19)

$C$DW$T$105	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$105, DW_AT_name("__uid_t")
	.dwattr $C$DW$T$105, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$105, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$105, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$105, DW_AT_decl_line(0x4d)
	.dwattr $C$DW$T$105, DW_AT_decl_column(0x14)

$C$DW$T$106	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$106, DW_AT_name("__uint_fast32_t")
	.dwattr $C$DW$T$106, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$106, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$106, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$106, DW_AT_decl_line(0x72)
	.dwattr $C$DW$T$106, DW_AT_decl_column(0x14)

$C$DW$T$107	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$107, DW_AT_name("uint_fast32_t")
	.dwattr $C$DW$T$107, DW_AT_type(*$C$DW$T$106)
	.dwattr $C$DW$T$107, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$107, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$107, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$T$107, DW_AT_decl_column(0x1a)

$C$DW$T$108	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$108, DW_AT_name("__uint_least32_t")
	.dwattr $C$DW$T$108, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$108, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$108, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$108, DW_AT_decl_line(0x76)
	.dwattr $C$DW$T$108, DW_AT_decl_column(0x14)

$C$DW$T$109	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$109, DW_AT_name("__char32_t")
	.dwattr $C$DW$T$109, DW_AT_type(*$C$DW$T$108)
	.dwattr $C$DW$T$109, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$109, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$109, DW_AT_decl_line(0x72)
	.dwattr $C$DW$T$109, DW_AT_decl_column(0x1a)

$C$DW$T$110	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$110, DW_AT_name("uint_least32_t")
	.dwattr $C$DW$T$110, DW_AT_type(*$C$DW$T$108)
	.dwattr $C$DW$T$110, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$110, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$110, DW_AT_decl_line(0x31)
	.dwattr $C$DW$T$110, DW_AT_decl_column(0x1a)

$C$DW$T$111	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$111, DW_AT_name("__uintfptr_t")
	.dwattr $C$DW$T$111, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$111, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$111, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$111, DW_AT_decl_line(0x68)
	.dwattr $C$DW$T$111, DW_AT_decl_column(0x14)

$C$DW$T$112	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$112, DW_AT_name("__vm_offset_t")
	.dwattr $C$DW$T$112, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$112, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$112, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$112, DW_AT_decl_line(0x79)
	.dwattr $C$DW$T$112, DW_AT_decl_column(0x14)

$C$DW$T$113	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$113, DW_AT_name("__vm_paddr_t")
	.dwattr $C$DW$T$113, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$113, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$113, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$113, DW_AT_decl_line(0x7a)
	.dwattr $C$DW$T$113, DW_AT_decl_column(0x14)

$C$DW$T$114	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$114, DW_AT_name("__vm_size_t")
	.dwattr $C$DW$T$114, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$114, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$114, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$114, DW_AT_decl_line(0x7b)
	.dwattr $C$DW$T$114, DW_AT_decl_column(0x14)

$C$DW$T$25	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$25, DW_AT_name("uint32_t")
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$25, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$25, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$25, DW_AT_decl_line(0x46)
	.dwattr $C$DW$T$25, DW_AT_decl_column(0x15)

$C$DW$T$14	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$14, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$14, DW_AT_name("long long")
	.dwattr $C$DW$T$14, DW_AT_byte_size(0x08)

$C$DW$T$115	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$115, DW_AT_name("__int64_t")
	.dwattr $C$DW$T$115, DW_AT_type(*$C$DW$T$14)
	.dwattr $C$DW$T$115, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$115, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$115, DW_AT_decl_line(0x40)
	.dwattr $C$DW$T$115, DW_AT_decl_column(0x14)

$C$DW$T$116	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$116, DW_AT_name("__blkcnt_t")
	.dwattr $C$DW$T$116, DW_AT_type(*$C$DW$T$115)
	.dwattr $C$DW$T$116, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$116, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$116, DW_AT_decl_line(0x30)
	.dwattr $C$DW$T$116, DW_AT_decl_column(0x13)

$C$DW$T$117	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$117, DW_AT_name("__id_t")
	.dwattr $C$DW$T$117, DW_AT_type(*$C$DW$T$115)
	.dwattr $C$DW$T$117, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$117, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$117, DW_AT_decl_line(0x36)
	.dwattr $C$DW$T$117, DW_AT_decl_column(0x13)

$C$DW$T$118	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$118, DW_AT_name("__int_fast64_t")
	.dwattr $C$DW$T$118, DW_AT_type(*$C$DW$T$115)
	.dwattr $C$DW$T$118, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$118, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$118, DW_AT_decl_line(0x59)
	.dwattr $C$DW$T$118, DW_AT_decl_column(0x13)

$C$DW$T$119	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$119, DW_AT_name("int_fast64_t")
	.dwattr $C$DW$T$119, DW_AT_type(*$C$DW$T$118)
	.dwattr $C$DW$T$119, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$119, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$119, DW_AT_decl_line(0x37)
	.dwattr $C$DW$T$119, DW_AT_decl_column(0x19)

$C$DW$T$120	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$120, DW_AT_name("__int_least64_t")
	.dwattr $C$DW$T$120, DW_AT_type(*$C$DW$T$115)
	.dwattr $C$DW$T$120, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$120, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$120, DW_AT_decl_line(0x5d)
	.dwattr $C$DW$T$120, DW_AT_decl_column(0x13)

$C$DW$T$121	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$121, DW_AT_name("int_least64_t")
	.dwattr $C$DW$T$121, DW_AT_type(*$C$DW$T$120)
	.dwattr $C$DW$T$121, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$121, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$121, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$T$121, DW_AT_decl_column(0x1a)

$C$DW$T$122	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$122, DW_AT_name("__intmax_t")
	.dwattr $C$DW$T$122, DW_AT_type(*$C$DW$T$115)
	.dwattr $C$DW$T$122, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$122, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$122, DW_AT_decl_line(0x4f)
	.dwattr $C$DW$T$122, DW_AT_decl_column(0x13)

$C$DW$T$123	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$123, DW_AT_name("intmax_t")
	.dwattr $C$DW$T$123, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$T$123, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$123, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$123, DW_AT_decl_line(0x58)
	.dwattr $C$DW$T$123, DW_AT_decl_column(0x15)

$C$DW$T$124	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$124, DW_AT_name("__off64_t")
	.dwattr $C$DW$T$124, DW_AT_type(*$C$DW$T$115)
	.dwattr $C$DW$T$124, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$124, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$124, DW_AT_decl_line(0x3f)
	.dwattr $C$DW$T$124, DW_AT_decl_column(0x13)

$C$DW$T$125	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$125, DW_AT_name("__rlim_t")
	.dwattr $C$DW$T$125, DW_AT_type(*$C$DW$T$115)
	.dwattr $C$DW$T$125, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$125, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$125, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$125, DW_AT_decl_column(0x13)

$C$DW$T$126	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$126, DW_AT_name("int64_t")
	.dwattr $C$DW$T$126, DW_AT_type(*$C$DW$T$115)
	.dwattr $C$DW$T$126, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$126, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$126, DW_AT_decl_line(0x35)
	.dwattr $C$DW$T$126, DW_AT_decl_column(0x14)

$C$DW$T$15	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$15, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$15, DW_AT_name("unsigned long long")
	.dwattr $C$DW$T$15, DW_AT_byte_size(0x08)

$C$DW$T$127	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$127, DW_AT_name("__uint64_t")
	.dwattr $C$DW$T$127, DW_AT_type(*$C$DW$T$15)
	.dwattr $C$DW$T$127, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$127, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$127, DW_AT_decl_line(0x45)
	.dwattr $C$DW$T$127, DW_AT_decl_column(0x1c)

$C$DW$T$128	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$128, DW_AT_name("__dev_t")
	.dwattr $C$DW$T$128, DW_AT_type(*$C$DW$T$127)
	.dwattr $C$DW$T$128, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$128, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$128, DW_AT_decl_line(0x7f)
	.dwattr $C$DW$T$128, DW_AT_decl_column(0x14)

$C$DW$T$129	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$129, DW_AT_name("__fsblkcnt_t")
	.dwattr $C$DW$T$129, DW_AT_type(*$C$DW$T$127)
	.dwattr $C$DW$T$129, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$129, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$129, DW_AT_decl_line(0x33)
	.dwattr $C$DW$T$129, DW_AT_decl_column(0x14)

$C$DW$T$130	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$130, DW_AT_name("__fsfilcnt_t")
	.dwattr $C$DW$T$130, DW_AT_type(*$C$DW$T$127)
	.dwattr $C$DW$T$130, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$130, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$130, DW_AT_decl_line(0x34)
	.dwattr $C$DW$T$130, DW_AT_decl_column(0x14)

$C$DW$T$131	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$131, DW_AT_name("__ino_t")
	.dwattr $C$DW$T$131, DW_AT_type(*$C$DW$T$127)
	.dwattr $C$DW$T$131, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$131, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$131, DW_AT_decl_line(0x37)
	.dwattr $C$DW$T$131, DW_AT_decl_column(0x14)

$C$DW$T$132	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$132, DW_AT_name("__nlink_t")
	.dwattr $C$DW$T$132, DW_AT_type(*$C$DW$T$127)
	.dwattr $C$DW$T$132, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$132, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$132, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$T$132, DW_AT_decl_column(0x14)

$C$DW$T$133	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$133, DW_AT_name("__uint_fast64_t")
	.dwattr $C$DW$T$133, DW_AT_type(*$C$DW$T$127)
	.dwattr $C$DW$T$133, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$133, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$133, DW_AT_decl_line(0x73)
	.dwattr $C$DW$T$133, DW_AT_decl_column(0x14)

$C$DW$T$134	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$134, DW_AT_name("uint_fast64_t")
	.dwattr $C$DW$T$134, DW_AT_type(*$C$DW$T$133)
	.dwattr $C$DW$T$134, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$134, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$134, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$T$134, DW_AT_decl_column(0x1a)

$C$DW$T$135	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$135, DW_AT_name("__uint_least64_t")
	.dwattr $C$DW$T$135, DW_AT_type(*$C$DW$T$127)
	.dwattr $C$DW$T$135, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$135, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$135, DW_AT_decl_line(0x77)
	.dwattr $C$DW$T$135, DW_AT_decl_column(0x14)

$C$DW$T$136	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$136, DW_AT_name("uint_least64_t")
	.dwattr $C$DW$T$136, DW_AT_type(*$C$DW$T$135)
	.dwattr $C$DW$T$136, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$136, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$136, DW_AT_decl_line(0x32)
	.dwattr $C$DW$T$136, DW_AT_decl_column(0x1a)

$C$DW$T$137	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$137, DW_AT_name("__uintmax_t")
	.dwattr $C$DW$T$137, DW_AT_type(*$C$DW$T$127)
	.dwattr $C$DW$T$137, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$137, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$137, DW_AT_decl_line(0x69)
	.dwattr $C$DW$T$137, DW_AT_decl_column(0x14)

$C$DW$T$138	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$138, DW_AT_name("__rman_res_t")
	.dwattr $C$DW$T$138, DW_AT_type(*$C$DW$T$137)
	.dwattr $C$DW$T$138, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$138, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$138, DW_AT_decl_line(0x9a)
	.dwattr $C$DW$T$138, DW_AT_decl_column(0x19)

$C$DW$T$139	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$139, DW_AT_name("uintmax_t")
	.dwattr $C$DW$T$139, DW_AT_type(*$C$DW$T$137)
	.dwattr $C$DW$T$139, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$139, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$139, DW_AT_decl_line(0x5c)
	.dwattr $C$DW$T$139, DW_AT_decl_column(0x16)

$C$DW$T$140	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$140, DW_AT_name("uint64_t")
	.dwattr $C$DW$T$140, DW_AT_type(*$C$DW$T$127)
	.dwattr $C$DW$T$140, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$140, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$140, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$T$140, DW_AT_decl_column(0x15)

$C$DW$T$16	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$16, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$16, DW_AT_name("float")
	.dwattr $C$DW$T$16, DW_AT_byte_size(0x04)

$C$DW$T$141	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$141, DW_AT_name("__float_t")
	.dwattr $C$DW$T$141, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$T$141, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$141, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$141, DW_AT_decl_line(0x4d)
	.dwattr $C$DW$T$141, DW_AT_decl_column(0x10)

$C$DW$T$17	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$17, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$17, DW_AT_name("double")
	.dwattr $C$DW$T$17, DW_AT_byte_size(0x08)

$C$DW$T$142	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$142, DW_AT_name("__double_t")
	.dwattr $C$DW$T$142, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$T$142, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$142, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$142, DW_AT_decl_line(0x4c)
	.dwattr $C$DW$T$142, DW_AT_decl_column(0x11)

$C$DW$T$18	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$18, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$18, DW_AT_name("long double")
	.dwattr $C$DW$T$18, DW_AT_byte_size(0x08)

$C$DW$T$143	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$143, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$143, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$143, DW_AT_byte_size(0x01)

$C$DW$T$146	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$146, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$146, DW_AT_address_class(0x10)

$C$DW$T$147	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$147, DW_AT_name("__va_list")
	.dwattr $C$DW$T$147, DW_AT_type(*$C$DW$T$146)
	.dwattr $C$DW$T$147, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$147, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$147, DW_AT_decl_line(0x92)
	.dwattr $C$DW$T$147, DW_AT_decl_column(0x0f)


$C$DW$T$19	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$19, DW_AT_name("__mq")
	.dwattr $C$DW$T$19, DW_AT_declaration
	.dwattr $C$DW$T$19, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$19, DW_AT_decl_line(0x4c)
	.dwattr $C$DW$T$19, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$19

$C$DW$T$148	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$148, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$148, DW_AT_address_class(0x10)

$C$DW$T$149	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$149, DW_AT_name("__mqd_t")
	.dwattr $C$DW$T$149, DW_AT_type(*$C$DW$T$148)
	.dwattr $C$DW$T$149, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$149, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$149, DW_AT_decl_line(0x4c)
	.dwattr $C$DW$T$149, DW_AT_decl_column(0x16)


$C$DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$20, DW_AT_name("__timer")
	.dwattr $C$DW$T$20, DW_AT_declaration
	.dwattr $C$DW$T$20, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$20, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$T$20, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$20

$C$DW$T$150	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$150, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$150, DW_AT_address_class(0x10)

$C$DW$T$151	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$151, DW_AT_name("__timer_t")
	.dwattr $C$DW$T$151, DW_AT_type(*$C$DW$T$150)
	.dwattr $C$DW$T$151, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$151, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$151, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$T$151, DW_AT_decl_column(0x19)

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

$C$DW$55	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$55, DW_AT_name("PC")
	.dwattr $C$DW$55, DW_AT_location[DW_OP_reg0]

$C$DW$56	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$56, DW_AT_name("SP")
	.dwattr $C$DW$56, DW_AT_location[DW_OP_reg1]

$C$DW$57	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$57, DW_AT_name("SR")
	.dwattr $C$DW$57, DW_AT_location[DW_OP_reg2]

$C$DW$58	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$58, DW_AT_name("CG")
	.dwattr $C$DW$58, DW_AT_location[DW_OP_reg3]

$C$DW$59	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$59, DW_AT_name("r4")
	.dwattr $C$DW$59, DW_AT_location[DW_OP_reg4]

$C$DW$60	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$60, DW_AT_name("r5")
	.dwattr $C$DW$60, DW_AT_location[DW_OP_reg5]

$C$DW$61	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$61, DW_AT_name("r6")
	.dwattr $C$DW$61, DW_AT_location[DW_OP_reg6]

$C$DW$62	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$62, DW_AT_name("r7")
	.dwattr $C$DW$62, DW_AT_location[DW_OP_reg7]

$C$DW$63	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$63, DW_AT_name("r8")
	.dwattr $C$DW$63, DW_AT_location[DW_OP_reg8]

$C$DW$64	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$64, DW_AT_name("r9")
	.dwattr $C$DW$64, DW_AT_location[DW_OP_reg9]

$C$DW$65	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$65, DW_AT_name("r10")
	.dwattr $C$DW$65, DW_AT_location[DW_OP_reg10]

$C$DW$66	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$66, DW_AT_name("r11")
	.dwattr $C$DW$66, DW_AT_location[DW_OP_reg11]

$C$DW$67	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$67, DW_AT_name("r12")
	.dwattr $C$DW$67, DW_AT_location[DW_OP_reg12]

$C$DW$68	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$68, DW_AT_name("r13")
	.dwattr $C$DW$68, DW_AT_location[DW_OP_reg13]

$C$DW$69	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$69, DW_AT_name("r14")
	.dwattr $C$DW$69, DW_AT_location[DW_OP_reg14]

$C$DW$70	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$70, DW_AT_name("r15")
	.dwattr $C$DW$70, DW_AT_location[DW_OP_reg15]

$C$DW$71	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$71, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$71, DW_AT_location[DW_OP_reg16]

	.dwendtag $C$DW$CU


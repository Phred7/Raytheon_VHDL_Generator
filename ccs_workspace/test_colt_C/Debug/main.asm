;******************************************************************************
;* MSP430 G3 C/C++ Codegen                                              PC v20.2.5.LTS *
;* Date/Time created: Tue Nov  2 11:53:58 2021                                *
;******************************************************************************
	.compiler_opts --abi=eabi --diag_wrap=off --hll_source=on --mem_model:code=small --mem_model:data=small --object_format=elf --silicon_version=msp --symdebug:dwarf --symdebug:dwarf_version=3 

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../main.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI MSP430 G3 C/C++ Codegen PC v20.2.5.LTS Copyright (c) 2003-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\Users\wward\Documents\GitHub\Raytheon_VHDL_Generator\ccs_workspace\test_colt_C\Debug")
$C$DW$1	.dwtag  DW_TAG_variable
	.dwattr $C$DW$1, DW_AT_name("P2OUT")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("P2OUT")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_decl_file("C:\ti\ccs1040\ccs\ccs_base\msp430\include\msp430fr2355.h")
	.dwattr $C$DW$1, DW_AT_decl_line(0x709)
	.dwattr $C$DW$1, DW_AT_decl_column(0x01)

$C$DW$2	.dwtag  DW_TAG_variable
	.dwattr $C$DW$2, DW_AT_name("P1OUT")
	.dwattr $C$DW$2, DW_AT_TI_symbol_name("P1OUT")
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$2, DW_AT_declaration
	.dwattr $C$DW$2, DW_AT_external
	.dwattr $C$DW$2, DW_AT_decl_file("C:\ti\ccs1040\ccs\ccs_base\msp430\include\msp430fr2355.h")
	.dwattr $C$DW$2, DW_AT_decl_line(0x70a)
	.dwattr $C$DW$2, DW_AT_decl_column(0x01)

$C$DW$3	.dwtag  DW_TAG_variable
	.dwattr $C$DW$3, DW_AT_name("P1DIR")
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("P1DIR")
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$3, DW_AT_declaration
	.dwattr $C$DW$3, DW_AT_external
	.dwattr $C$DW$3, DW_AT_decl_file("C:\ti\ccs1040\ccs\ccs_base\msp430\include\msp430fr2355.h")
	.dwattr $C$DW$3, DW_AT_decl_line(0x70b)
	.dwattr $C$DW$3, DW_AT_decl_column(0x01)

$C$DW$4	.dwtag  DW_TAG_variable
	.dwattr $C$DW$4, DW_AT_name("P2DIR")
	.dwattr $C$DW$4, DW_AT_TI_symbol_name("P2DIR")
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$4, DW_AT_declaration
	.dwattr $C$DW$4, DW_AT_external
	.dwattr $C$DW$4, DW_AT_decl_file("C:\ti\ccs1040\ccs\ccs_base\msp430\include\msp430fr2355.h")
	.dwattr $C$DW$4, DW_AT_decl_line(0x70c)
	.dwattr $C$DW$4, DW_AT_decl_column(0x01)

$C$DW$5	.dwtag  DW_TAG_variable
	.dwattr $C$DW$5, DW_AT_name("OUT *")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("P3OUT")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$5, DW_AT_declaration
	.dwattr $C$DW$5, DW_AT_external
	.dwattr $C$DW$5, DW_AT_decl_file("C:\ti\ccs1040\ccs\ccs_base\msp430\include\msp430fr2355.h")
	.dwattr $C$DW$5, DW_AT_decl_line(0x71d)
	.dwattr $C$DW$5, DW_AT_decl_column(0x01)

$C$DW$6	.dwtag  DW_TAG_variable
	.dwattr $C$DW$6, DW_AT_name("P4OUT")
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("P4OUT")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$6, DW_AT_declaration
	.dwattr $C$DW$6, DW_AT_external
	.dwattr $C$DW$6, DW_AT_decl_file("C:\ti\ccs1040\ccs\ccs_base\msp430\include\msp430fr2355.h")
	.dwattr $C$DW$6, DW_AT_decl_line(0x71e)
	.dwattr $C$DW$6, DW_AT_decl_column(0x01)

$C$DW$7	.dwtag  DW_TAG_variable
	.dwattr $C$DW$7, DW_AT_name("DIR *")
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("P3DIR")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$7, DW_AT_declaration
	.dwattr $C$DW$7, DW_AT_external
	.dwattr $C$DW$7, DW_AT_decl_file("C:\ti\ccs1040\ccs\ccs_base\msp430\include\msp430fr2355.h")
	.dwattr $C$DW$7, DW_AT_decl_line(0x71f)
	.dwattr $C$DW$7, DW_AT_decl_column(0x01)

$C$DW$8	.dwtag  DW_TAG_variable
	.dwattr $C$DW$8, DW_AT_name("P4DIR")
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("P4DIR")
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$8, DW_AT_declaration
	.dwattr $C$DW$8, DW_AT_external
	.dwattr $C$DW$8, DW_AT_decl_file("C:\ti\ccs1040\ccs\ccs_base\msp430\include\msp430fr2355.h")
	.dwattr $C$DW$8, DW_AT_decl_line(0x720)
	.dwattr $C$DW$8, DW_AT_decl_column(0x01)

$C$DW$9	.dwtag  DW_TAG_variable
	.dwattr $C$DW$9, DW_AT_name("PM5CTL0")
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("PM5CTL0")
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$9, DW_AT_declaration
	.dwattr $C$DW$9, DW_AT_external
	.dwattr $C$DW$9, DW_AT_decl_file("C:\ti\ccs1040\ccs\ccs_base\msp430\include\msp430fr2355.h")
	.dwattr $C$DW$9, DW_AT_decl_line(0xc56)
	.dwattr $C$DW$9, DW_AT_decl_column(0x01)

$C$DW$10	.dwtag  DW_TAG_variable
	.dwattr $C$DW$10, DW_AT_name("WDTCTL")
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("WDTCTL")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$10, DW_AT_declaration
	.dwattr $C$DW$10, DW_AT_external
	.dwattr $C$DW$10, DW_AT_decl_file("C:\ti\ccs1040\ccs\ccs_base\msp430\include\msp430fr2355.h")
	.dwattr $C$DW$10, DW_AT_decl_line(0x14e1)
	.dwattr $C$DW$10, DW_AT_decl_column(0x01)

;	C:\ti\ccs1040\ccs\tools\compiler\ti-cgt-msp430_20.2.5.LTS\bin\acpia430.exe -@C:\\Users\\wward\\AppData\\Local\\Temp\\{B3942AB0-224A-4CA6-9C71-02E3AD3B5284} 
	.sect	".text:main"
	.clink
	.global	main

$C$DW$11	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$11, DW_AT_name("main")
	.dwattr $C$DW$11, DW_AT_low_pc(main)
	.dwattr $C$DW$11, DW_AT_high_pc(0x00)
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("main")
	.dwattr $C$DW$11, DW_AT_external
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$11, DW_AT_TI_begin_file("../main.c")
	.dwattr $C$DW$11, DW_AT_TI_begin_line(0x05)
	.dwattr $C$DW$11, DW_AT_TI_begin_column(0x05)
	.dwattr $C$DW$11, DW_AT_decl_file("../main.c")
	.dwattr $C$DW$11, DW_AT_decl_line(0x05)
	.dwattr $C$DW$11, DW_AT_decl_column(0x05)
	.dwattr $C$DW$11, DW_AT_TI_max_frame_size(0x02)
	.dwpsn	file "../main.c",line 5,column 16,is_stmt,address main,isa 0

	.dwfde $C$DW$CIE, main

;*****************************************************************************
;* FUNCTION NAME: main                                                       *
;*                                                                           *
;*   Regs Modified     : SP,SR,r11,r12,r13,r14,r15                           *
;*   Regs Used         : SP,SR,r11,r12,r13,r14,r15                           *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
main:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
	.dwpsn	file "../main.c",line 6,column 5,is_stmt,isa 0
        MOV.W     #23168,&WDTCTL+0      ; [] |6| 
	.dwpsn	file "../main.c",line 7,column 5,is_stmt,isa 0
        BIC.W     #1,&PM5CTL0+0         ; [] |7| 
	.dwpsn	file "../main.c",line 8,column 5,is_stmt,isa 0
$C$DW$12	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$12, DW_AT_low_pc(0x00)
	.dwattr $C$DW$12, DW_AT_name("init_GPIO")
	.dwattr $C$DW$12, DW_AT_TI_call

        CALL      #init_GPIO            ; [] |8| 
                                          ; [] |8| 
	.dwpsn	file "../main.c",line 9,column 11,is_stmt,isa 0
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP $C$L1
;*
;*   Loop source line                : 9
;*   Loop closing brace source line  : 13
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
$C$L1:    
	.dwpsn	file "../main.c",line 10,column 9,is_stmt,isa 0
$C$DW$13	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$13, DW_AT_low_pc(0x00)
	.dwattr $C$DW$13, DW_AT_name("high_GPIO")
	.dwattr $C$DW$13, DW_AT_TI_call

        CALL      #high_GPIO            ; [] |10| 
                                          ; [] |10| 
	.dwpsn	file "../main.c",line 11,column 9,is_stmt,isa 0
$C$DW$14	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$14, DW_AT_low_pc(0x00)
	.dwattr $C$DW$14, DW_AT_name("low_GPIO")
	.dwattr $C$DW$14, DW_AT_TI_call

        CALL      #low_GPIO             ; [] |11| 
                                          ; [] |11| 
	.dwpsn	file "../main.c",line 12,column 9,is_stmt,isa 0
$C$DW$15	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$15, DW_AT_low_pc(0x00)
	.dwattr $C$DW$15, DW_AT_name("high_GPIO")
	.dwattr $C$DW$15, DW_AT_TI_call

        CALL      #high_GPIO            ; [] |12| 
                                          ; [] |12| 
	.dwpsn	file "../main.c",line 9,column 11,is_stmt,isa 0
        JMP       $C$L1                 ; [] |9| 
                                          ; [] |9| 
;* --------------------------------------------------------------------------*
	.dwattr $C$DW$11, DW_AT_TI_end_file("../main.c")
	.dwattr $C$DW$11, DW_AT_TI_end_line(0x0e)
	.dwattr $C$DW$11, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$11

	.sect	".text:init_GPIO"
	.clink
	.global	init_GPIO

$C$DW$16	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$16, DW_AT_name("init_GPIO")
	.dwattr $C$DW$16, DW_AT_low_pc(init_GPIO)
	.dwattr $C$DW$16, DW_AT_high_pc(0x00)
	.dwattr $C$DW$16, DW_AT_TI_symbol_name("init_GPIO")
	.dwattr $C$DW$16, DW_AT_external
	.dwattr $C$DW$16, DW_AT_TI_begin_file("../main.c")
	.dwattr $C$DW$16, DW_AT_TI_begin_line(0x10)
	.dwattr $C$DW$16, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$16, DW_AT_decl_file("../main.c")
	.dwattr $C$DW$16, DW_AT_decl_line(0x10)
	.dwattr $C$DW$16, DW_AT_decl_column(0x06)
	.dwattr $C$DW$16, DW_AT_TI_max_frame_size(0x02)
	.dwpsn	file "../main.c",line 16,column 21,is_stmt,address init_GPIO,isa 0

	.dwfde $C$DW$CIE, init_GPIO

;*****************************************************************************
;* FUNCTION NAME: init_GPIO                                                  *
;*                                                                           *
;*   Regs Modified     : SP,r15                                              *
;*   Regs Used         : SP,r15                                              *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
init_GPIO:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
	.dwpsn	file "../main.c",line 18,column 5,is_stmt,isa 0
        OR.B      #255,&P1DIR+0         ; [] |18| 
	.dwpsn	file "../main.c",line 19,column 5,is_stmt,isa 0
        OR.B      #255,&P2DIR+0         ; [] |19| 
	.dwpsn	file "../main.c",line 20,column 5,is_stmt,isa 0
        OR.B      #255,&P3DIR+0         ; [] |20| 
	.dwpsn	file "../main.c",line 21,column 5,is_stmt,isa 0
        OR.B      #255,&P4DIR+0         ; [] |21| 
	.dwpsn	file "../main.c",line 24,column 5,is_stmt,isa 0
        MOV.B     &P1OUT+0,r15          ; [] |24| 
        MOV.B     #0,&P1OUT+0           ; [] |24| 
	.dwpsn	file "../main.c",line 25,column 5,is_stmt,isa 0
        MOV.B     &P2OUT+0,r15          ; [] |25| 
        MOV.B     #0,&P2OUT+0           ; [] |25| 
	.dwpsn	file "../main.c",line 26,column 5,is_stmt,isa 0
        MOV.B     &P3OUT+0,r15          ; [] |26| 
        MOV.B     #0,&P3OUT+0           ; [] |26| 
	.dwpsn	file "../main.c",line 27,column 5,is_stmt,isa 0
        MOV.B     &P4OUT+0,r15          ; [] |27| 
        MOV.B     #0,&P4OUT+0           ; [] |27| 
	.dwpsn	file "../main.c",line 28,column 1,is_stmt,isa 0
$C$DW$17	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$17, DW_AT_low_pc(0x00)
	.dwattr $C$DW$17, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$16, DW_AT_TI_end_file("../main.c")
	.dwattr $C$DW$16, DW_AT_TI_end_line(0x1c)
	.dwattr $C$DW$16, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$16

	.sect	".text:high_GPIO"
	.clink
	.global	high_GPIO

$C$DW$18	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$18, DW_AT_name("high_GPIO")
	.dwattr $C$DW$18, DW_AT_low_pc(high_GPIO)
	.dwattr $C$DW$18, DW_AT_high_pc(0x00)
	.dwattr $C$DW$18, DW_AT_TI_symbol_name("high_GPIO")
	.dwattr $C$DW$18, DW_AT_external
	.dwattr $C$DW$18, DW_AT_TI_begin_file("../main.c")
	.dwattr $C$DW$18, DW_AT_TI_begin_line(0x1e)
	.dwattr $C$DW$18, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$18, DW_AT_decl_file("../main.c")
	.dwattr $C$DW$18, DW_AT_decl_line(0x1e)
	.dwattr $C$DW$18, DW_AT_decl_column(0x06)
	.dwattr $C$DW$18, DW_AT_TI_max_frame_size(0x02)
	.dwpsn	file "../main.c",line 30,column 21,is_stmt,address high_GPIO,isa 0

	.dwfde $C$DW$CIE, high_GPIO

;*****************************************************************************
;* FUNCTION NAME: high_GPIO                                                  *
;*                                                                           *
;*   Regs Modified     : SP                                                  *
;*   Regs Used         : SP                                                  *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
high_GPIO:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
	.dwpsn	file "../main.c",line 31,column 5,is_stmt,isa 0
        OR.B      #255,&P1OUT+0         ; [] |31| 
	.dwpsn	file "../main.c",line 32,column 5,is_stmt,isa 0
        OR.B      #255,&P2OUT+0         ; [] |32| 
	.dwpsn	file "../main.c",line 33,column 5,is_stmt,isa 0
        OR.B      #255,&P3OUT+0         ; [] |33| 
	.dwpsn	file "../main.c",line 34,column 5,is_stmt,isa 0
        OR.B      #255,&P4OUT+0         ; [] |34| 
	.dwpsn	file "../main.c",line 35,column 1,is_stmt,isa 0
$C$DW$19	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$19, DW_AT_low_pc(0x00)
	.dwattr $C$DW$19, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$18, DW_AT_TI_end_file("../main.c")
	.dwattr $C$DW$18, DW_AT_TI_end_line(0x23)
	.dwattr $C$DW$18, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$18

	.sect	".text:low_GPIO"
	.clink
	.global	low_GPIO

$C$DW$20	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$20, DW_AT_name("low_GPIO")
	.dwattr $C$DW$20, DW_AT_low_pc(low_GPIO)
	.dwattr $C$DW$20, DW_AT_high_pc(0x00)
	.dwattr $C$DW$20, DW_AT_TI_symbol_name("low_GPIO")
	.dwattr $C$DW$20, DW_AT_external
	.dwattr $C$DW$20, DW_AT_TI_begin_file("../main.c")
	.dwattr $C$DW$20, DW_AT_TI_begin_line(0x25)
	.dwattr $C$DW$20, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$20, DW_AT_decl_file("../main.c")
	.dwattr $C$DW$20, DW_AT_decl_line(0x25)
	.dwattr $C$DW$20, DW_AT_decl_column(0x06)
	.dwattr $C$DW$20, DW_AT_TI_max_frame_size(0x02)
	.dwpsn	file "../main.c",line 37,column 20,is_stmt,address low_GPIO,isa 0

	.dwfde $C$DW$CIE, low_GPIO

;*****************************************************************************
;* FUNCTION NAME: low_GPIO                                                   *
;*                                                                           *
;*   Regs Modified     : SP,r15                                              *
;*   Regs Used         : SP,r15                                              *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
low_GPIO:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
	.dwpsn	file "../main.c",line 38,column 5,is_stmt,isa 0
        MOV.B     &P1OUT+0,r15          ; [] |38| 
        MOV.B     #0,&P1OUT+0           ; [] |38| 
	.dwpsn	file "../main.c",line 39,column 5,is_stmt,isa 0
        MOV.B     &P2OUT+0,r15          ; [] |39| 
        MOV.B     #0,&P2OUT+0           ; [] |39| 
	.dwpsn	file "../main.c",line 40,column 5,is_stmt,isa 0
        MOV.B     &P3OUT+0,r15          ; [] |40| 
        MOV.B     #0,&P3OUT+0           ; [] |40| 
	.dwpsn	file "../main.c",line 41,column 5,is_stmt,isa 0
        MOV.B     &P4OUT+0,r15          ; [] |41| 
        MOV.B     #0,&P4OUT+0           ; [] |41| 
	.dwpsn	file "../main.c",line 42,column 1,is_stmt,isa 0
$C$DW$21	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$21, DW_AT_low_pc(0x00)
	.dwattr $C$DW$21, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$20, DW_AT_TI_end_file("../main.c")
	.dwattr $C$DW$20, DW_AT_TI_end_line(0x2a)
	.dwattr $C$DW$20, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$20

;*****************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                             *
;*****************************************************************************
	.global	P2OUT
	.global	P1OUT
	.global	P1DIR
	.global	P2DIR
	.global	P3OUT
	.global	P4OUT
	.global	P3DIR
	.global	P4DIR
	.global	PM5CTL0
	.global	WDTCTL

;******************************************************************************
;* BUILD ATTRIBUTES                                                           *
;******************************************************************************
	.battr "TI", Tag_File, 1, Tag_LPM_INFO(1)
	.battr "TI", Tag_File, 1, Tag_PORTS_INIT_INFO("012345678901ABCDEFGHIJ01111110000011100000000111100000000000000000")
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

$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x02)

$C$DW$T$26	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$11)

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

$C$DW$22	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$22, DW_AT_name("PC")
	.dwattr $C$DW$22, DW_AT_location[DW_OP_reg0]

$C$DW$23	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$23, DW_AT_name("SP")
	.dwattr $C$DW$23, DW_AT_location[DW_OP_reg1]

$C$DW$24	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$24, DW_AT_name("SR")
	.dwattr $C$DW$24, DW_AT_location[DW_OP_reg2]

$C$DW$25	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$25, DW_AT_name("CG")
	.dwattr $C$DW$25, DW_AT_location[DW_OP_reg3]

$C$DW$26	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$26, DW_AT_name("r4")
	.dwattr $C$DW$26, DW_AT_location[DW_OP_reg4]

$C$DW$27	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$27, DW_AT_name("r5")
	.dwattr $C$DW$27, DW_AT_location[DW_OP_reg5]

$C$DW$28	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$28, DW_AT_name("r6")
	.dwattr $C$DW$28, DW_AT_location[DW_OP_reg6]

$C$DW$29	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$29, DW_AT_name("r7")
	.dwattr $C$DW$29, DW_AT_location[DW_OP_reg7]

$C$DW$30	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$30, DW_AT_name("r8")
	.dwattr $C$DW$30, DW_AT_location[DW_OP_reg8]

$C$DW$31	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$31, DW_AT_name("r9")
	.dwattr $C$DW$31, DW_AT_location[DW_OP_reg9]

$C$DW$32	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$32, DW_AT_name("r10")
	.dwattr $C$DW$32, DW_AT_location[DW_OP_reg10]

$C$DW$33	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$33, DW_AT_name("r11")
	.dwattr $C$DW$33, DW_AT_location[DW_OP_reg11]

$C$DW$34	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$34, DW_AT_name("r12")
	.dwattr $C$DW$34, DW_AT_location[DW_OP_reg12]

$C$DW$35	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$35, DW_AT_name("r13")
	.dwattr $C$DW$35, DW_AT_location[DW_OP_reg13]

$C$DW$36	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$36, DW_AT_name("r14")
	.dwattr $C$DW$36, DW_AT_location[DW_OP_reg14]

$C$DW$37	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$37, DW_AT_name("r15")
	.dwattr $C$DW$37, DW_AT_location[DW_OP_reg15]

$C$DW$38	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$38, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$38, DW_AT_location[DW_OP_reg16]

	.dwendtag $C$DW$CU


;******************************************************************************
;* MSP430 G3 C/C++ Codegen                                              PC v20.2.5.LTS *
;* Date/Time created: Thu Dec 16 09:11:23 2021                                *
;******************************************************************************
	.compiler_opts --abi=eabi --diag_wrap=off --hll_source=on --mem_model:code=small --mem_model:data=small --object_format=elf --silicon_version=msp --symdebug:dwarf --symdebug:dwarf_version=3 

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../main.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI MSP430 G3 C/C++ Codegen PC v20.2.5.LTS Copyright (c) 2003-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\Users\wward\Documents\GitHub\Raytheon_VHDL_Generator\ccs_workspace\Motor_mover_C_with_port_2\Debug")
$C$DW$1	.dwtag  DW_TAG_variable
	.dwattr $C$DW$1, DW_AT_name("P1IN")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("P1IN")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_decl_file("C:\ti\ccs1040\ccs\ccs_base\msp430\include\colt430fr2355.h")
	.dwattr $C$DW$1, DW_AT_decl_line(0x707)
	.dwattr $C$DW$1, DW_AT_decl_column(0x01)

$C$DW$2	.dwtag  DW_TAG_variable
	.dwattr $C$DW$2, DW_AT_name("P1OUT")
	.dwattr $C$DW$2, DW_AT_TI_symbol_name("P1OUT")
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$2, DW_AT_declaration
	.dwattr $C$DW$2, DW_AT_external
	.dwattr $C$DW$2, DW_AT_decl_file("C:\ti\ccs1040\ccs\ccs_base\msp430\include\colt430fr2355.h")
	.dwattr $C$DW$2, DW_AT_decl_line(0x70a)
	.dwattr $C$DW$2, DW_AT_decl_column(0x01)

$C$DW$3	.dwtag  DW_TAG_variable
	.dwattr $C$DW$3, DW_AT_name("P1DIR")
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("P1DIR")
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$3, DW_AT_declaration
	.dwattr $C$DW$3, DW_AT_external
	.dwattr $C$DW$3, DW_AT_decl_file("C:\ti\ccs1040\ccs\ccs_base\msp430\include\colt430fr2355.h")
	.dwattr $C$DW$3, DW_AT_decl_line(0x70b)
	.dwattr $C$DW$3, DW_AT_decl_column(0x01)

$C$DW$4	.dwtag  DW_TAG_variable
	.dwattr $C$DW$4, DW_AT_name("P1REN")
	.dwattr $C$DW$4, DW_AT_TI_symbol_name("P1REN")
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$4, DW_AT_declaration
	.dwattr $C$DW$4, DW_AT_external
	.dwattr $C$DW$4, DW_AT_decl_file("C:\ti\ccs1040\ccs\ccs_base\msp430\include\colt430fr2355.h")
	.dwattr $C$DW$4, DW_AT_decl_line(0x70d)
	.dwattr $C$DW$4, DW_AT_decl_column(0x01)

$C$DW$5	.dwtag  DW_TAG_variable
	.dwattr $C$DW$5, DW_AT_name("PM5CTL0")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("PM5CTL0")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$5, DW_AT_declaration
	.dwattr $C$DW$5, DW_AT_external
	.dwattr $C$DW$5, DW_AT_decl_file("C:\ti\ccs1040\ccs\ccs_base\msp430\include\colt430fr2355.h")
	.dwattr $C$DW$5, DW_AT_decl_line(0xc56)
	.dwattr $C$DW$5, DW_AT_decl_column(0x01)

$C$DW$6	.dwtag  DW_TAG_variable
	.dwattr $C$DW$6, DW_AT_name("WDTCTL")
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("WDTCTL")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$6, DW_AT_declaration
	.dwattr $C$DW$6, DW_AT_external
	.dwattr $C$DW$6, DW_AT_decl_file("C:\ti\ccs1040\ccs\ccs_base\msp430\include\colt430fr2355.h")
	.dwattr $C$DW$6, DW_AT_decl_line(0x14e1)
	.dwattr $C$DW$6, DW_AT_decl_column(0x01)

;	C:\ti\ccs1040\ccs\tools\compiler\ti-cgt-msp430_20.2.5.LTS\bin\acpia430.exe -@C:\\Users\\wward\\AppData\\Local\\Temp\\{EF82BDE2-CAFA-4154-8742-B2CA83FEA1BC} 
	.sect	".text:main"
	.clink
	.global	main

$C$DW$7	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$7, DW_AT_name("main")
	.dwattr $C$DW$7, DW_AT_low_pc(main)
	.dwattr $C$DW$7, DW_AT_high_pc(0x00)
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("main")
	.dwattr $C$DW$7, DW_AT_external
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$7, DW_AT_TI_begin_file("../main.c")
	.dwattr $C$DW$7, DW_AT_TI_begin_line(0x04)
	.dwattr $C$DW$7, DW_AT_TI_begin_column(0x05)
	.dwattr $C$DW$7, DW_AT_decl_file("../main.c")
	.dwattr $C$DW$7, DW_AT_decl_line(0x04)
	.dwattr $C$DW$7, DW_AT_decl_column(0x05)
	.dwattr $C$DW$7, DW_AT_TI_max_frame_size(0x0a)
	.dwpsn	file "../main.c",line 5,column 1,is_stmt,address main,isa 0

	.dwfde $C$DW$CIE, main

;*****************************************************************************
;* FUNCTION NAME: main                                                       *
;*                                                                           *
;*   Regs Modified     : SP,SR,r15                                           *
;*   Regs Used         : SP,SR,r15                                           *
;*   Local Frame Size  : 0 Args + 8 Auto + 0 Save = 8 byte                   *
;*****************************************************************************
main:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
        SUB.W     #8,SP                 ; [] 
	.dwcfi	cfa_offset, 10
$C$DW$8	.dwtag  DW_TAG_variable
	.dwattr $C$DW$8, DW_AT_name("input_counter")
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("input_counter")
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$8, DW_AT_location[DW_OP_breg1 0]

$C$DW$9	.dwtag  DW_TAG_variable
	.dwattr $C$DW$9, DW_AT_name("input")
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("input")
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$9, DW_AT_location[DW_OP_breg1 2]

	.dwpsn	file "../main.c",line 6,column 5,is_stmt,isa 0
        MOV.W     #23168,&WDTCTL+0      ; [] |6| 
	.dwpsn	file "../main.c",line 9,column 5,is_stmt,isa 0
        AND.B     #239,&P1DIR+0         ; [] |9| 
	.dwpsn	file "../main.c",line 10,column 5,is_stmt,isa 0
        OR.B      #16,&P1REN+0          ; [] |10| 
	.dwpsn	file "../main.c",line 11,column 5,is_stmt,isa 0
        OR.B      #16,&P1OUT+0          ; [] |11| 
	.dwpsn	file "../main.c",line 14,column 5,is_stmt,isa 0
        BIC.W     #1,&PM5CTL0+0         ; [] |14| 
	.dwpsn	file "../main.c",line 16,column 5,is_stmt,isa 0
        OR.B      #32,&P1DIR+0          ; [] |16| 
	.dwpsn	file "../main.c",line 20,column 23,is_stmt,isa 0
        MOV.W     #0,0(SP)              ; [] |20| 
	.dwpsn	file "../main.c",line 24,column 11,is_stmt,isa 0
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP $C$L1
;*
;*   Loop source line                : 24
;*   Loop closing brace source line  : 53
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
$C$L1:    

$C$DW$10	.dwtag  DW_TAG_lexical_block
	.dwattr $C$DW$10, DW_AT_low_pc(0x00)
	.dwattr $C$DW$10, DW_AT_high_pc(0x00)
$C$DW$11	.dwtag  DW_TAG_variable
	.dwattr $C$DW$11, DW_AT_name("i")
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("i")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$11, DW_AT_location[DW_OP_breg1 4]

$C$DW$12	.dwtag  DW_TAG_variable
	.dwattr $C$DW$12, DW_AT_name("i2")
	.dwattr $C$DW$12, DW_AT_TI_symbol_name("i2")
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$12, DW_AT_location[DW_OP_breg1 6]

	.dwpsn	file "../main.c",line 26,column 9,is_stmt,isa 0
        OR.B      #32,&P1OUT+0          ; [] |26| 
	.dwpsn	file "../main.c",line 30,column 13,is_stmt,isa 0
        MOV.W     #4095,4(SP)           ; [] |30| 
	.dwpsn	file "../main.c",line 30,column 25,is_stmt,isa 0
        TST.W     4(SP)                 ; [] |30| 
        JGE       $C$L5                 ; [] |30| 
                                          ; [] |30| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP $C$L2
;*
;*   Loop source line                : 30
;*   Loop closing brace source line  : 35
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
$C$L2:    
	.dwpsn	file "../main.c",line 31,column 17,is_stmt,isa 0
        MOV.W     #4095,6(SP)           ; [] |31| 
	.dwpsn	file "../main.c",line 31,column 30,is_stmt,isa 0
        TST.W     6(SP)                 ; [] |31| 
        JGE       $C$L4                 ; [] |31| 
                                          ; [] |31| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP $C$L3
;*
;*   Loop source line                : 31
;*   Loop closing brace source line  : 34
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
$C$L3:    
	.dwpsn	file "../main.c",line 31,column 37,is_stmt,isa 0
        SUB.W     #1,6(SP)              ; [] |31| 
	.dwpsn	file "../main.c",line 31,column 30,is_stmt,isa 0
        TST.W     6(SP)                 ; [] |31| 
        JL        $C$L3                 ; [] |31| 
                                          ; [] |31| 
;* --------------------------------------------------------------------------*
$C$L4:    
	.dwpsn	file "../main.c",line 30,column 31,is_stmt,isa 0
        SUB.W     #1,4(SP)              ; [] |30| 
	.dwpsn	file "../main.c",line 30,column 25,is_stmt,isa 0
        TST.W     4(SP)                 ; [] |30| 
        JL        $C$L2                 ; [] |30| 
                                          ; [] |30| 
;* --------------------------------------------------------------------------*
$C$L5:    
	.dwpsn	file "../main.c",line 37,column 9,is_stmt,isa 0
        AND.B     #223,&P1OUT+0         ; [] |37| 
	.dwpsn	file "../main.c",line 39,column 13,is_stmt,isa 0
        MOV.W     #4095,4(SP)           ; [] |39| 
	.dwpsn	file "../main.c",line 39,column 25,is_stmt,isa 0
        TST.W     4(SP)                 ; [] |39| 
        JGE       $C$L9                 ; [] |39| 
                                          ; [] |39| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP $C$L6
;*
;*   Loop source line                : 39
;*   Loop closing brace source line  : 44
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
$C$L6:    
	.dwpsn	file "../main.c",line 40,column 17,is_stmt,isa 0
        MOV.W     #4095,6(SP)           ; [] |40| 
	.dwpsn	file "../main.c",line 40,column 30,is_stmt,isa 0
        TST.W     6(SP)                 ; [] |40| 
        JGE       $C$L8                 ; [] |40| 
                                          ; [] |40| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP $C$L7
;*
;*   Loop source line                : 40
;*   Loop closing brace source line  : 43
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
$C$L7:    
	.dwpsn	file "../main.c",line 40,column 37,is_stmt,isa 0
        SUB.W     #1,6(SP)              ; [] |40| 
	.dwpsn	file "../main.c",line 40,column 30,is_stmt,isa 0
        TST.W     6(SP)                 ; [] |40| 
        JL        $C$L7                 ; [] |40| 
                                          ; [] |40| 
;* --------------------------------------------------------------------------*
$C$L8:    
	.dwpsn	file "../main.c",line 39,column 31,is_stmt,isa 0
        SUB.W     #1,4(SP)              ; [] |39| 
	.dwpsn	file "../main.c",line 39,column 25,is_stmt,isa 0
        TST.W     4(SP)                 ; [] |39| 
        JL        $C$L6                 ; [] |39| 
                                          ; [] |39| 
;* --------------------------------------------------------------------------*
$C$L9:    
	.dwpsn	file "../main.c",line 46,column 9,is_stmt,isa 0
        MOV.B     &P1IN+0,r15           ; [] |46| 
        MOV.W     r15,2(SP)             ; [] |46| 
	.dwpsn	file "../main.c",line 47,column 9,is_stmt,isa 0
        AND.W     #16,2(SP)             ; [] |47| 
	.dwpsn	file "../main.c",line 49,column 9,is_stmt,isa 0
        TST.W     2(SP)                 ; [] |49| 
        JNE       $C$L1                 ; [] |49| 
                                          ; [] |49| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../main.c",line 50,column 13,is_stmt,isa 0
        ADD.W     #1,0(SP)              ; [] |50| 
	.dwendtag $C$DW$10

	.dwpsn	file "../main.c",line 24,column 11,is_stmt,isa 0
        JMP       $C$L1                 ; [] |24| 
                                          ; [] |24| 
;* --------------------------------------------------------------------------*
	.dwattr $C$DW$7, DW_AT_TI_end_file("../main.c")
	.dwattr $C$DW$7, DW_AT_TI_end_line(0x39)
	.dwattr $C$DW$7, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$7

;*****************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                             *
;*****************************************************************************
	.global	P1IN
	.global	P1OUT
	.global	P1DIR
	.global	P1REN
	.global	PM5CTL0
	.global	WDTCTL

;******************************************************************************
;* BUILD ATTRIBUTES                                                           *
;******************************************************************************
	.battr "TI", Tag_File, 1, Tag_LPM_INFO(1)
	.battr "TI", Tag_File, 1, Tag_PORTS_INIT_INFO("012345678901ABCDEFGHIJ01111110000011100000000100000000000000000000")
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


$C$DW$T$19	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$19, DW_AT_language(DW_LANG_C)
	.dwendtag $C$DW$T$19

$C$DW$T$20	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$20, DW_AT_address_class(0x10)

$C$DW$T$21	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$21, DW_AT_name("__SFR_FARPTR")
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$21, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$21, DW_AT_decl_file("C:\ti\ccs1040\ccs\ccs_base\msp430\include\colt430fr2355.h")
	.dwattr $C$DW$T$21, DW_AT_decl_line(0x43)
	.dwattr $C$DW$T$21, DW_AT_decl_column(0x11)

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

$C$DW$T$22	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$6)

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

$C$DW$T$24	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$11)

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

$C$DW$13	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$13, DW_AT_name("PC")
	.dwattr $C$DW$13, DW_AT_location[DW_OP_reg0]

$C$DW$14	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$14, DW_AT_name("SP")
	.dwattr $C$DW$14, DW_AT_location[DW_OP_reg1]

$C$DW$15	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$15, DW_AT_name("SR")
	.dwattr $C$DW$15, DW_AT_location[DW_OP_reg2]

$C$DW$16	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$16, DW_AT_name("CG")
	.dwattr $C$DW$16, DW_AT_location[DW_OP_reg3]

$C$DW$17	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$17, DW_AT_name("r4")
	.dwattr $C$DW$17, DW_AT_location[DW_OP_reg4]

$C$DW$18	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$18, DW_AT_name("r5")
	.dwattr $C$DW$18, DW_AT_location[DW_OP_reg5]

$C$DW$19	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$19, DW_AT_name("r6")
	.dwattr $C$DW$19, DW_AT_location[DW_OP_reg6]

$C$DW$20	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$20, DW_AT_name("r7")
	.dwattr $C$DW$20, DW_AT_location[DW_OP_reg7]

$C$DW$21	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$21, DW_AT_name("r8")
	.dwattr $C$DW$21, DW_AT_location[DW_OP_reg8]

$C$DW$22	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$22, DW_AT_name("r9")
	.dwattr $C$DW$22, DW_AT_location[DW_OP_reg9]

$C$DW$23	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$23, DW_AT_name("r10")
	.dwattr $C$DW$23, DW_AT_location[DW_OP_reg10]

$C$DW$24	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$24, DW_AT_name("r11")
	.dwattr $C$DW$24, DW_AT_location[DW_OP_reg11]

$C$DW$25	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$25, DW_AT_name("r12")
	.dwattr $C$DW$25, DW_AT_location[DW_OP_reg12]

$C$DW$26	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$26, DW_AT_name("r13")
	.dwattr $C$DW$26, DW_AT_location[DW_OP_reg13]

$C$DW$27	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$27, DW_AT_name("r14")
	.dwattr $C$DW$27, DW_AT_location[DW_OP_reg14]

$C$DW$28	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$28, DW_AT_name("r15")
	.dwattr $C$DW$28, DW_AT_location[DW_OP_reg15]

$C$DW$29	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$29, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$29, DW_AT_location[DW_OP_reg16]

	.dwendtag $C$DW$CU


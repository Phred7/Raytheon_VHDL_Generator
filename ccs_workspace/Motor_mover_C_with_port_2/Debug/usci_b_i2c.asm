;******************************************************************************
;* MSP430 G3 C/C++ Codegen                                              PC v20.2.5.LTS *
;* Date/Time created: Wed Nov  3 09:47:36 2021                                *
;******************************************************************************
	.compiler_opts --abi=eabi --diag_wrap=off --hll_source=on --mem_model:code=small --mem_model:data=small --object_format=elf --silicon_version=msp --symdebug:dwarf --symdebug:dwarf_version=3 

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI MSP430 G3 C/C++ Codegen PC v20.2.5.LTS Copyright (c) 2003-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\Users\wward\Documents\GitHub\Raytheon_VHDL_Generator\ccs_workspace\test_C\Debug")
;	C:\ti\ccs1040\ccs\tools\compiler\ti-cgt-msp430_20.2.5.LTS\bin\acpia430.exe -@C:\\Users\\wward\\AppData\\Local\\Temp\\{12E73C29-7B8E-4D5C-89FC-1ED517EA2A79} 
	.sect	".text:USCI_B_I2C_initMaster"
	.clink
	.global	USCI_B_I2C_initMaster

$C$DW$1	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$1, DW_AT_name("USCI_B_I2C_initMaster")
	.dwattr $C$DW$1, DW_AT_low_pc(USCI_B_I2C_initMaster)
	.dwattr $C$DW$1, DW_AT_high_pc(0x00)
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("USCI_B_I2C_initMaster")
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_TI_begin_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$1, DW_AT_TI_begin_line(0x15)
	.dwattr $C$DW$1, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$1, DW_AT_decl_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$1, DW_AT_decl_line(0x15)
	.dwattr $C$DW$1, DW_AT_decl_column(0x06)
	.dwattr $C$DW$1, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 22,column 1,is_stmt,address USCI_B_I2C_initMaster,isa 0

	.dwfde $C$DW$CIE, USCI_B_I2C_initMaster
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_name("baseAddress")
	.dwattr $C$DW$2, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$2, DW_AT_location[DW_OP_reg12]

$C$DW$3	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$3, DW_AT_name("param")
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("param")
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$3, DW_AT_location[DW_OP_reg13]


;*****************************************************************************
;* FUNCTION NAME: USCI_B_I2C_initMaster                                      *
;*                                                                           *
;*   Regs Modified     : SP,SR,r11,r12,r13,r14,r15                           *
;*   Regs Used         : SP,SR,r11,r12,r13,r14,r15                           *
;*   Local Frame Size  : 0 Args + 6 Auto + 0 Save = 6 byte                   *
;*****************************************************************************
USCI_B_I2C_initMaster:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
        SUB.W     #6,SP                 ; [] 
	.dwcfi	cfa_offset, 8
$C$DW$4	.dwtag  DW_TAG_variable
	.dwattr $C$DW$4, DW_AT_name("baseAddress")
	.dwattr $C$DW$4, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$4, DW_AT_location[DW_OP_breg1 0]

$C$DW$5	.dwtag  DW_TAG_variable
	.dwattr $C$DW$5, DW_AT_name("param")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("param")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$5, DW_AT_location[DW_OP_breg1 2]

$C$DW$6	.dwtag  DW_TAG_variable
	.dwattr $C$DW$6, DW_AT_name("preScalarValue")
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("preScalarValue")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$6, DW_AT_location[DW_OP_breg1 4]

        MOV.W     r13,2(SP)             ; [] |22| 
        MOV.W     r12,0(SP)             ; [] |22| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 26,column 5,is_stmt,isa 0
        MOV.W     0(SP),r15             ; [] |26| 
        MOV.B     #1,0(r15)             ; [] |26| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 34,column 5,is_stmt,isa 0
        MOV.W     0(SP),r15             ; [] |34| 
        MOV.B     #0,1(r15)             ; [] |34| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 37,column 5,is_stmt,isa 0
        MOV.W     2(SP),r14             ; [] |37| 
        MOV.W     #1,r15                ; [] |37| 
        ADD.B     @r14,r15              ; [] |37| 
        MOV.W     0(SP),r14             ; [] |37| 
        MOV.B     r15,0(r14)            ; [] |37| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 45,column 5,is_stmt,isa 0
        MOV.W     2(SP),r15             ; [] |45| 
        MOV.W     2(r15),r12            ; [] |45| 
        MOV.W     4(r15),r13            ; [] |45| 
        MOV.W     6(r15),r14            ; [] |45| 
        MOV.W     8(r15),r15            ; [] |45| 
$C$DW$7	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$7, DW_AT_low_pc(0x00)
	.dwattr $C$DW$7, DW_AT_name("__mspabi_divul")
	.dwattr $C$DW$7, DW_AT_TI_call

        CALL      #__mspabi_divul       ; [] |45| 
                                          ; [] |45| 
        MOV.W     r12,4(SP)             ; [] |45| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 46,column 5,is_stmt,isa 0
        MOV.W     0(SP),r15             ; [] |46| 
        MOV.W     4(SP),6(r15)          ; [] |46| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 47,column 1,is_stmt,isa 0
        ADD.W     #6,SP                 ; [] 
	.dwcfi	cfa_offset, 2
$C$DW$8	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$8, DW_AT_low_pc(0x00)
	.dwattr $C$DW$8, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$1, DW_AT_TI_end_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$1, DW_AT_TI_end_line(0x2f)
	.dwattr $C$DW$1, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$1

	.sect	".text:USCI_B_I2C_initSlave"
	.clink
	.global	USCI_B_I2C_initSlave

$C$DW$9	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$9, DW_AT_name("USCI_B_I2C_initSlave")
	.dwattr $C$DW$9, DW_AT_low_pc(USCI_B_I2C_initSlave)
	.dwattr $C$DW$9, DW_AT_high_pc(0x00)
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("USCI_B_I2C_initSlave")
	.dwattr $C$DW$9, DW_AT_external
	.dwattr $C$DW$9, DW_AT_TI_begin_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$9, DW_AT_TI_begin_line(0x30)
	.dwattr $C$DW$9, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$9, DW_AT_decl_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$9, DW_AT_decl_line(0x30)
	.dwattr $C$DW$9, DW_AT_decl_column(0x06)
	.dwattr $C$DW$9, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 51,column 1,is_stmt,address USCI_B_I2C_initSlave,isa 0

	.dwfde $C$DW$CIE, USCI_B_I2C_initSlave
$C$DW$10	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$10, DW_AT_name("baseAddress")
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$10, DW_AT_location[DW_OP_reg12]

$C$DW$11	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$11, DW_AT_name("slaveAddress")
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("slaveAddress")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$11, DW_AT_location[DW_OP_reg13]


;*****************************************************************************
;* FUNCTION NAME: USCI_B_I2C_initSlave                                       *
;*                                                                           *
;*   Regs Modified     : SP,SR,r14,r15                                       *
;*   Regs Used         : SP,SR,r12,r13,r14,r15                               *
;*   Local Frame Size  : 0 Args + 4 Auto + 0 Save = 4 byte                   *
;*****************************************************************************
USCI_B_I2C_initSlave:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
        SUB.W     #4,SP                 ; [] 
	.dwcfi	cfa_offset, 6
$C$DW$12	.dwtag  DW_TAG_variable
	.dwattr $C$DW$12, DW_AT_name("baseAddress")
	.dwattr $C$DW$12, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$12, DW_AT_location[DW_OP_breg1 0]

$C$DW$13	.dwtag  DW_TAG_variable
	.dwattr $C$DW$13, DW_AT_name("slaveAddress")
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("slaveAddress")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$13, DW_AT_location[DW_OP_breg1 2]

        MOV.B     r13,2(SP)             ; [] |51| 
        MOV.W     r12,0(SP)             ; [] |51| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 53,column 5,is_stmt,isa 0
        MOV.W     0(SP),r15             ; [] |53| 
        OR.B      #1,0(r15)             ; [] |53| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 56,column 5,is_stmt,isa 0
        MOV.W     #1,r15                ; [] |56| 
        ADD.W     0(SP),r15             ; [] |56| 
        MOV.B     @r15,0(r15)           ; [] |56| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 59,column 5,is_stmt,isa 0
        MOV.W     0(SP),r15             ; [] |59| 
        MOV.B     #0,1(r15)             ; [] |59| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 62,column 5,is_stmt,isa 0
        MOV.B     2(SP),r15             ; [] |62| 
        MOV.W     0(SP),r14             ; [] |62| 
        MOV.W     r15,16(r14)           ; [] |62| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 63,column 1,is_stmt,isa 0
        ADD.W     #4,SP                 ; [] 
	.dwcfi	cfa_offset, 2
$C$DW$14	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$14, DW_AT_low_pc(0x00)
	.dwattr $C$DW$14, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$9, DW_AT_TI_end_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$9, DW_AT_TI_end_line(0x3f)
	.dwattr $C$DW$9, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$9

	.sect	".text:USCI_B_I2C_enable"
	.clink
	.global	USCI_B_I2C_enable

$C$DW$15	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$15, DW_AT_name("USCI_B_I2C_enable")
	.dwattr $C$DW$15, DW_AT_low_pc(USCI_B_I2C_enable)
	.dwattr $C$DW$15, DW_AT_high_pc(0x00)
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("USCI_B_I2C_enable")
	.dwattr $C$DW$15, DW_AT_external
	.dwattr $C$DW$15, DW_AT_TI_begin_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$15, DW_AT_TI_begin_line(0x41)
	.dwattr $C$DW$15, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$15, DW_AT_decl_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$15, DW_AT_decl_line(0x41)
	.dwattr $C$DW$15, DW_AT_decl_column(0x06)
	.dwattr $C$DW$15, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 66,column 1,is_stmt,address USCI_B_I2C_enable,isa 0

	.dwfde $C$DW$CIE, USCI_B_I2C_enable
$C$DW$16	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$16, DW_AT_name("baseAddress")
	.dwattr $C$DW$16, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$16, DW_AT_location[DW_OP_reg12]


;*****************************************************************************
;* FUNCTION NAME: USCI_B_I2C_enable                                          *
;*                                                                           *
;*   Regs Modified     : SP,SR,r15                                           *
;*   Regs Used         : SP,SR,r12,r15                                       *
;*   Local Frame Size  : 0 Args + 2 Auto + 0 Save = 2 byte                   *
;*****************************************************************************
USCI_B_I2C_enable:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
        SUB.W     #2,SP                 ; [] 
	.dwcfi	cfa_offset, 4
$C$DW$17	.dwtag  DW_TAG_variable
	.dwattr $C$DW$17, DW_AT_name("baseAddress")
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$17, DW_AT_location[DW_OP_breg1 0]

        MOV.W     r12,0(SP)             ; [] |66| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 68,column 5,is_stmt,isa 0
        MOV.W     0(SP),r15             ; [] |68| 
        BIC.B     #1,0(r15)             ; [] |68| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 69,column 1,is_stmt,isa 0
        ADD.W     #2,SP                 ; [] 
	.dwcfi	cfa_offset, 2
$C$DW$18	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$18, DW_AT_low_pc(0x00)
	.dwattr $C$DW$18, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$15, DW_AT_TI_end_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$15, DW_AT_TI_end_line(0x45)
	.dwattr $C$DW$15, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$15

	.sect	".text:USCI_B_I2C_disable"
	.clink
	.global	USCI_B_I2C_disable

$C$DW$19	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$19, DW_AT_name("USCI_B_I2C_disable")
	.dwattr $C$DW$19, DW_AT_low_pc(USCI_B_I2C_disable)
	.dwattr $C$DW$19, DW_AT_high_pc(0x00)
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("USCI_B_I2C_disable")
	.dwattr $C$DW$19, DW_AT_external
	.dwattr $C$DW$19, DW_AT_TI_begin_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$19, DW_AT_TI_begin_line(0x47)
	.dwattr $C$DW$19, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$19, DW_AT_decl_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$19, DW_AT_decl_line(0x47)
	.dwattr $C$DW$19, DW_AT_decl_column(0x06)
	.dwattr $C$DW$19, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 72,column 1,is_stmt,address USCI_B_I2C_disable,isa 0

	.dwfde $C$DW$CIE, USCI_B_I2C_disable
$C$DW$20	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$20, DW_AT_name("baseAddress")
	.dwattr $C$DW$20, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$20, DW_AT_location[DW_OP_reg12]


;*****************************************************************************
;* FUNCTION NAME: USCI_B_I2C_disable                                         *
;*                                                                           *
;*   Regs Modified     : SP,SR,r15                                           *
;*   Regs Used         : SP,SR,r12,r15                                       *
;*   Local Frame Size  : 0 Args + 2 Auto + 0 Save = 2 byte                   *
;*****************************************************************************
USCI_B_I2C_disable:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
        SUB.W     #2,SP                 ; [] 
	.dwcfi	cfa_offset, 4
$C$DW$21	.dwtag  DW_TAG_variable
	.dwattr $C$DW$21, DW_AT_name("baseAddress")
	.dwattr $C$DW$21, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$21, DW_AT_location[DW_OP_breg1 0]

        MOV.W     r12,0(SP)             ; [] |72| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 74,column 5,is_stmt,isa 0
        MOV.W     0(SP),r15             ; [] |74| 
        OR.B      #1,0(r15)             ; [] |74| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 75,column 1,is_stmt,isa 0
        ADD.W     #2,SP                 ; [] 
	.dwcfi	cfa_offset, 2
$C$DW$22	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$22, DW_AT_low_pc(0x00)
	.dwattr $C$DW$22, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$19, DW_AT_TI_end_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$19, DW_AT_TI_end_line(0x4b)
	.dwattr $C$DW$19, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$19

	.sect	".text:USCI_B_I2C_setSlaveAddress"
	.clink
	.global	USCI_B_I2C_setSlaveAddress

$C$DW$23	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$23, DW_AT_name("USCI_B_I2C_setSlaveAddress")
	.dwattr $C$DW$23, DW_AT_low_pc(USCI_B_I2C_setSlaveAddress)
	.dwattr $C$DW$23, DW_AT_high_pc(0x00)
	.dwattr $C$DW$23, DW_AT_TI_symbol_name("USCI_B_I2C_setSlaveAddress")
	.dwattr $C$DW$23, DW_AT_external
	.dwattr $C$DW$23, DW_AT_TI_begin_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$23, DW_AT_TI_begin_line(0x4d)
	.dwattr $C$DW$23, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$23, DW_AT_decl_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$23, DW_AT_decl_line(0x4d)
	.dwattr $C$DW$23, DW_AT_decl_column(0x06)
	.dwattr $C$DW$23, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 80,column 1,is_stmt,address USCI_B_I2C_setSlaveAddress,isa 0

	.dwfde $C$DW$CIE, USCI_B_I2C_setSlaveAddress
$C$DW$24	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$24, DW_AT_name("baseAddress")
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$24, DW_AT_location[DW_OP_reg12]

$C$DW$25	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$25, DW_AT_name("slaveAddress")
	.dwattr $C$DW$25, DW_AT_TI_symbol_name("slaveAddress")
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$25, DW_AT_location[DW_OP_reg13]


;*****************************************************************************
;* FUNCTION NAME: USCI_B_I2C_setSlaveAddress                                 *
;*                                                                           *
;*   Regs Modified     : SP,SR,r15                                           *
;*   Regs Used         : SP,SR,r12,r13,r15                                   *
;*   Local Frame Size  : 0 Args + 4 Auto + 0 Save = 4 byte                   *
;*****************************************************************************
USCI_B_I2C_setSlaveAddress:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
        SUB.W     #4,SP                 ; [] 
	.dwcfi	cfa_offset, 6
$C$DW$26	.dwtag  DW_TAG_variable
	.dwattr $C$DW$26, DW_AT_name("baseAddress")
	.dwattr $C$DW$26, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$26, DW_AT_location[DW_OP_breg1 0]

$C$DW$27	.dwtag  DW_TAG_variable
	.dwattr $C$DW$27, DW_AT_name("slaveAddress")
	.dwattr $C$DW$27, DW_AT_TI_symbol_name("slaveAddress")
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$27, DW_AT_location[DW_OP_breg1 2]

        MOV.B     r13,2(SP)             ; [] |80| 
        MOV.W     r12,0(SP)             ; [] |80| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 82,column 5,is_stmt,isa 0
        MOV.B     2(SP),r15             ; [] |82| 
        MOV.W     r15,32(r12)           ; [] |82| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 83,column 1,is_stmt,isa 0
        ADD.W     #4,SP                 ; [] 
	.dwcfi	cfa_offset, 2
$C$DW$28	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$28, DW_AT_low_pc(0x00)
	.dwattr $C$DW$28, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$23, DW_AT_TI_end_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$23, DW_AT_TI_end_line(0x53)
	.dwattr $C$DW$23, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$23

	.sect	".text:USCI_B_I2C_setMode"
	.clink
	.global	USCI_B_I2C_setMode

$C$DW$29	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$29, DW_AT_name("USCI_B_I2C_setMode")
	.dwattr $C$DW$29, DW_AT_low_pc(USCI_B_I2C_setMode)
	.dwattr $C$DW$29, DW_AT_high_pc(0x00)
	.dwattr $C$DW$29, DW_AT_TI_symbol_name("USCI_B_I2C_setMode")
	.dwattr $C$DW$29, DW_AT_external
	.dwattr $C$DW$29, DW_AT_TI_begin_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$29, DW_AT_TI_begin_line(0x55)
	.dwattr $C$DW$29, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$29, DW_AT_decl_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$29, DW_AT_decl_line(0x55)
	.dwattr $C$DW$29, DW_AT_decl_column(0x06)
	.dwattr $C$DW$29, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 88,column 1,is_stmt,address USCI_B_I2C_setMode,isa 0

	.dwfde $C$DW$CIE, USCI_B_I2C_setMode
$C$DW$30	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$30, DW_AT_name("baseAddress")
	.dwattr $C$DW$30, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$30, DW_AT_location[DW_OP_reg12]

$C$DW$31	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$31, DW_AT_name("mode")
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("mode")
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$31, DW_AT_location[DW_OP_reg13]


;*****************************************************************************
;* FUNCTION NAME: USCI_B_I2C_setMode                                         *
;*                                                                           *
;*   Regs Modified     : SP,SR,r15                                           *
;*   Regs Used         : SP,SR,r12,r13,r15                                   *
;*   Local Frame Size  : 0 Args + 4 Auto + 0 Save = 4 byte                   *
;*****************************************************************************
USCI_B_I2C_setMode:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
        SUB.W     #4,SP                 ; [] 
	.dwcfi	cfa_offset, 6
$C$DW$32	.dwtag  DW_TAG_variable
	.dwattr $C$DW$32, DW_AT_name("baseAddress")
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$32, DW_AT_location[DW_OP_breg1 0]

$C$DW$33	.dwtag  DW_TAG_variable
	.dwattr $C$DW$33, DW_AT_name("mode")
	.dwattr $C$DW$33, DW_AT_TI_symbol_name("mode")
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$33, DW_AT_location[DW_OP_breg1 2]

        MOV.B     r13,2(SP)             ; [] |88| 
        MOV.W     r12,0(SP)             ; [] |88| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 89,column 5,is_stmt,isa 0
        MOV.W     0(SP),r15             ; [] |89| 
        AND.B     #239,0(r15)           ; [] |89| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 90,column 5,is_stmt,isa 0
        MOV.W     0(SP),r15             ; [] |90| 
        OR.B      2(SP),0(r15)          ; [] |90| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 91,column 1,is_stmt,isa 0
        ADD.W     #4,SP                 ; [] 
	.dwcfi	cfa_offset, 2
$C$DW$34	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$34, DW_AT_low_pc(0x00)
	.dwattr $C$DW$34, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$29, DW_AT_TI_end_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$29, DW_AT_TI_end_line(0x5b)
	.dwattr $C$DW$29, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$29

	.sect	".text:USCI_B_I2C_slavePutData"
	.clink
	.global	USCI_B_I2C_slavePutData

$C$DW$35	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$35, DW_AT_name("USCI_B_I2C_slavePutData")
	.dwattr $C$DW$35, DW_AT_low_pc(USCI_B_I2C_slavePutData)
	.dwattr $C$DW$35, DW_AT_high_pc(0x00)
	.dwattr $C$DW$35, DW_AT_TI_symbol_name("USCI_B_I2C_slavePutData")
	.dwattr $C$DW$35, DW_AT_external
	.dwattr $C$DW$35, DW_AT_TI_begin_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$35, DW_AT_TI_begin_line(0x5d)
	.dwattr $C$DW$35, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$35, DW_AT_decl_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$35, DW_AT_decl_line(0x5d)
	.dwattr $C$DW$35, DW_AT_decl_column(0x06)
	.dwattr $C$DW$35, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 96,column 1,is_stmt,address USCI_B_I2C_slavePutData,isa 0

	.dwfde $C$DW$CIE, USCI_B_I2C_slavePutData
$C$DW$36	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$36, DW_AT_name("baseAddress")
	.dwattr $C$DW$36, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$36, DW_AT_location[DW_OP_reg12]

$C$DW$37	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$37, DW_AT_name("transmitData")
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("transmitData")
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$37, DW_AT_location[DW_OP_reg13]


;*****************************************************************************
;* FUNCTION NAME: USCI_B_I2C_slavePutData                                    *
;*                                                                           *
;*   Regs Modified     : SP,SR                                               *
;*   Regs Used         : SP,SR,r12,r13                                       *
;*   Local Frame Size  : 0 Args + 4 Auto + 0 Save = 4 byte                   *
;*****************************************************************************
USCI_B_I2C_slavePutData:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
        SUB.W     #4,SP                 ; [] 
	.dwcfi	cfa_offset, 6
$C$DW$38	.dwtag  DW_TAG_variable
	.dwattr $C$DW$38, DW_AT_name("baseAddress")
	.dwattr $C$DW$38, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$38, DW_AT_location[DW_OP_breg1 0]

$C$DW$39	.dwtag  DW_TAG_variable
	.dwattr $C$DW$39, DW_AT_name("transmitData")
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("transmitData")
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$39, DW_AT_location[DW_OP_breg1 2]

        MOV.B     r13,2(SP)             ; [] |96| 
        MOV.W     r12,0(SP)             ; [] |96| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 98,column 5,is_stmt,isa 0
        MOV.B     2(SP),14(r12)         ; [] |98| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 99,column 1,is_stmt,isa 0
        ADD.W     #4,SP                 ; [] 
	.dwcfi	cfa_offset, 2
$C$DW$40	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$40, DW_AT_low_pc(0x00)
	.dwattr $C$DW$40, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$35, DW_AT_TI_end_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$35, DW_AT_TI_end_line(0x63)
	.dwattr $C$DW$35, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$35

	.sect	".text:USCI_B_I2C_slaveGetData"
	.clink
	.global	USCI_B_I2C_slaveGetData

$C$DW$41	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$41, DW_AT_name("USCI_B_I2C_slaveGetData")
	.dwattr $C$DW$41, DW_AT_low_pc(USCI_B_I2C_slaveGetData)
	.dwattr $C$DW$41, DW_AT_high_pc(0x00)
	.dwattr $C$DW$41, DW_AT_TI_symbol_name("USCI_B_I2C_slaveGetData")
	.dwattr $C$DW$41, DW_AT_external
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$41, DW_AT_TI_begin_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$41, DW_AT_TI_begin_line(0x65)
	.dwattr $C$DW$41, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$41, DW_AT_decl_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$41, DW_AT_decl_line(0x65)
	.dwattr $C$DW$41, DW_AT_decl_column(0x09)
	.dwattr $C$DW$41, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 102,column 1,is_stmt,address USCI_B_I2C_slaveGetData,isa 0

	.dwfde $C$DW$CIE, USCI_B_I2C_slaveGetData
$C$DW$42	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$42, DW_AT_name("baseAddress")
	.dwattr $C$DW$42, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$42, DW_AT_location[DW_OP_reg12]


;*****************************************************************************
;* FUNCTION NAME: USCI_B_I2C_slaveGetData                                    *
;*                                                                           *
;*   Regs Modified     : SP,SR,r12                                           *
;*   Regs Used         : SP,SR,r12                                           *
;*   Local Frame Size  : 0 Args + 2 Auto + 0 Save = 2 byte                   *
;*****************************************************************************
USCI_B_I2C_slaveGetData:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
        SUB.W     #2,SP                 ; [] 
	.dwcfi	cfa_offset, 4
$C$DW$43	.dwtag  DW_TAG_variable
	.dwattr $C$DW$43, DW_AT_name("baseAddress")
	.dwattr $C$DW$43, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$43, DW_AT_location[DW_OP_breg1 0]

        MOV.W     r12,0(SP)             ; [] |102| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 104,column 5,is_stmt,isa 0
        MOV.B     12(r12),r12           ; [] |104| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 105,column 1,is_stmt,isa 0
        ADD.W     #2,SP                 ; [] 
	.dwcfi	cfa_offset, 2
$C$DW$44	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$44, DW_AT_low_pc(0x00)
	.dwattr $C$DW$44, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$41, DW_AT_TI_end_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$41, DW_AT_TI_end_line(0x69)
	.dwattr $C$DW$41, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$41

	.sect	".text:USCI_B_I2C_isBusBusy"
	.clink
	.global	USCI_B_I2C_isBusBusy

$C$DW$45	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$45, DW_AT_name("USCI_B_I2C_isBusBusy")
	.dwattr $C$DW$45, DW_AT_low_pc(USCI_B_I2C_isBusBusy)
	.dwattr $C$DW$45, DW_AT_high_pc(0x00)
	.dwattr $C$DW$45, DW_AT_TI_symbol_name("USCI_B_I2C_isBusBusy")
	.dwattr $C$DW$45, DW_AT_external
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$45, DW_AT_TI_begin_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$45, DW_AT_TI_begin_line(0x6b)
	.dwattr $C$DW$45, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$45, DW_AT_decl_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$45, DW_AT_decl_line(0x6b)
	.dwattr $C$DW$45, DW_AT_decl_column(0x09)
	.dwattr $C$DW$45, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 108,column 1,is_stmt,address USCI_B_I2C_isBusBusy,isa 0

	.dwfde $C$DW$CIE, USCI_B_I2C_isBusBusy
$C$DW$46	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$46, DW_AT_name("baseAddress")
	.dwattr $C$DW$46, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$46, DW_AT_location[DW_OP_reg12]


;*****************************************************************************
;* FUNCTION NAME: USCI_B_I2C_isBusBusy                                       *
;*                                                                           *
;*   Regs Modified     : SP,SR,r12,r15                                       *
;*   Regs Used         : SP,SR,r12,r15                                       *
;*   Local Frame Size  : 0 Args + 2 Auto + 0 Save = 2 byte                   *
;*****************************************************************************
USCI_B_I2C_isBusBusy:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
        SUB.W     #2,SP                 ; [] 
	.dwcfi	cfa_offset, 4
$C$DW$47	.dwtag  DW_TAG_variable
	.dwattr $C$DW$47, DW_AT_name("baseAddress")
	.dwattr $C$DW$47, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$47, DW_AT_location[DW_OP_breg1 0]

        MOV.W     r12,0(SP)             ; [] |108| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 110,column 5,is_stmt,isa 0
        MOV.W     #16,r15               ; [] |110| 
        AND.B     10(r12),r15           ; [] |110| 
        MOV.W     r15,r12               ; [] |110| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 111,column 1,is_stmt,isa 0
        ADD.W     #2,SP                 ; [] 
	.dwcfi	cfa_offset, 2
$C$DW$48	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$48, DW_AT_low_pc(0x00)
	.dwattr $C$DW$48, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$45, DW_AT_TI_end_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$45, DW_AT_TI_end_line(0x6f)
	.dwattr $C$DW$45, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$45

	.sect	".text:USCI_B_I2C_isBusy"
	.clink
	.global	USCI_B_I2C_isBusy

$C$DW$49	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$49, DW_AT_name("USCI_B_I2C_isBusy")
	.dwattr $C$DW$49, DW_AT_low_pc(USCI_B_I2C_isBusy)
	.dwattr $C$DW$49, DW_AT_high_pc(0x00)
	.dwattr $C$DW$49, DW_AT_TI_symbol_name("USCI_B_I2C_isBusy")
	.dwattr $C$DW$49, DW_AT_external
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$49, DW_AT_TI_begin_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$49, DW_AT_TI_begin_line(0x71)
	.dwattr $C$DW$49, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$49, DW_AT_decl_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$49, DW_AT_decl_line(0x71)
	.dwattr $C$DW$49, DW_AT_decl_column(0x09)
	.dwattr $C$DW$49, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 114,column 1,is_stmt,address USCI_B_I2C_isBusy,isa 0

	.dwfde $C$DW$CIE, USCI_B_I2C_isBusy
$C$DW$50	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$50, DW_AT_name("baseAddress")
	.dwattr $C$DW$50, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$50, DW_AT_location[DW_OP_reg12]


;*****************************************************************************
;* FUNCTION NAME: USCI_B_I2C_isBusy                                          *
;*                                                                           *
;*   Regs Modified     : SP,SR,r12                                           *
;*   Regs Used         : SP,SR,r12                                           *
;*   Local Frame Size  : 0 Args + 2 Auto + 0 Save = 2 byte                   *
;*****************************************************************************
USCI_B_I2C_isBusy:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
        SUB.W     #2,SP                 ; [] 
	.dwcfi	cfa_offset, 4
$C$DW$51	.dwtag  DW_TAG_variable
	.dwattr $C$DW$51, DW_AT_name("baseAddress")
	.dwattr $C$DW$51, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$51, DW_AT_location[DW_OP_breg1 0]

        MOV.W     r12,0(SP)             ; [] |114| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 116,column 5,is_stmt,isa 0
        BIT.B     #3,44(r12)            ; [] |116| 
        JEQ       $C$L1                 ; [] |116| 
                                          ; [] |116| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 117,column 9,is_stmt,isa 0
        MOV.B     #16,r12               ; [] |117| 
        JMP       $C$L2                 ; [] |117| 
                                          ; [] |117| 
;* --------------------------------------------------------------------------*
$C$L1:    
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 119,column 9,is_stmt,isa 0
        MOV.B     #0,r12                ; [] |119| 
;* --------------------------------------------------------------------------*
$C$L2:    
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 121,column 1,is_stmt,isa 0
        ADD.W     #2,SP                 ; [] 
	.dwcfi	cfa_offset, 2
$C$DW$52	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$52, DW_AT_low_pc(0x00)
	.dwattr $C$DW$52, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$49, DW_AT_TI_end_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$49, DW_AT_TI_end_line(0x79)
	.dwattr $C$DW$49, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$49

	.sect	".text:USCI_B_I2C_masterIsStopSent"
	.clink
	.global	USCI_B_I2C_masterIsStopSent

$C$DW$53	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$53, DW_AT_name("USCI_B_I2C_masterIsStopSent")
	.dwattr $C$DW$53, DW_AT_low_pc(USCI_B_I2C_masterIsStopSent)
	.dwattr $C$DW$53, DW_AT_high_pc(0x00)
	.dwattr $C$DW$53, DW_AT_TI_symbol_name("USCI_B_I2C_masterIsStopSent")
	.dwattr $C$DW$53, DW_AT_external
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$53, DW_AT_TI_begin_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$53, DW_AT_TI_begin_line(0x7b)
	.dwattr $C$DW$53, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$53, DW_AT_decl_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$53, DW_AT_decl_line(0x7b)
	.dwattr $C$DW$53, DW_AT_decl_column(0x09)
	.dwattr $C$DW$53, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 124,column 1,is_stmt,address USCI_B_I2C_masterIsStopSent,isa 0

	.dwfde $C$DW$CIE, USCI_B_I2C_masterIsStopSent
$C$DW$54	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$54, DW_AT_name("baseAddress")
	.dwattr $C$DW$54, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$54, DW_AT_location[DW_OP_reg12]


;*****************************************************************************
;* FUNCTION NAME: USCI_B_I2C_masterIsStopSent                                *
;*                                                                           *
;*   Regs Modified     : SP,SR,r12,r15                                       *
;*   Regs Used         : SP,SR,r12,r15                                       *
;*   Local Frame Size  : 0 Args + 2 Auto + 0 Save = 2 byte                   *
;*****************************************************************************
USCI_B_I2C_masterIsStopSent:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
        SUB.W     #2,SP                 ; [] 
	.dwcfi	cfa_offset, 4
$C$DW$55	.dwtag  DW_TAG_variable
	.dwattr $C$DW$55, DW_AT_name("baseAddress")
	.dwattr $C$DW$55, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$55, DW_AT_location[DW_OP_breg1 0]

        MOV.W     r12,0(SP)             ; [] |124| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 126,column 5,is_stmt,isa 0
        MOV.W     0(SP),r15             ; [] |126| 
        MOV.W     #4,r12                ; [] |126| 
        AND.B     @r15,r12              ; [] |126| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 127,column 1,is_stmt,isa 0
        ADD.W     #2,SP                 ; [] 
	.dwcfi	cfa_offset, 2
$C$DW$56	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$56, DW_AT_low_pc(0x00)
	.dwattr $C$DW$56, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$53, DW_AT_TI_end_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$53, DW_AT_TI_end_line(0x7f)
	.dwattr $C$DW$53, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$53

	.sect	".text:USCI_B_I2C_masterIsStartSent"
	.clink
	.global	USCI_B_I2C_masterIsStartSent

$C$DW$57	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$57, DW_AT_name("USCI_B_I2C_masterIsStartSent")
	.dwattr $C$DW$57, DW_AT_low_pc(USCI_B_I2C_masterIsStartSent)
	.dwattr $C$DW$57, DW_AT_high_pc(0x00)
	.dwattr $C$DW$57, DW_AT_TI_symbol_name("USCI_B_I2C_masterIsStartSent")
	.dwattr $C$DW$57, DW_AT_external
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$57, DW_AT_TI_begin_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$57, DW_AT_TI_begin_line(0x81)
	.dwattr $C$DW$57, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$57, DW_AT_decl_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$57, DW_AT_decl_line(0x81)
	.dwattr $C$DW$57, DW_AT_decl_column(0x09)
	.dwattr $C$DW$57, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 130,column 1,is_stmt,address USCI_B_I2C_masterIsStartSent,isa 0

	.dwfde $C$DW$CIE, USCI_B_I2C_masterIsStartSent
$C$DW$58	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$58, DW_AT_name("baseAddress")
	.dwattr $C$DW$58, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$58, DW_AT_location[DW_OP_reg12]


;*****************************************************************************
;* FUNCTION NAME: USCI_B_I2C_masterIsStartSent                               *
;*                                                                           *
;*   Regs Modified     : SP,SR,r12,r15                                       *
;*   Regs Used         : SP,SR,r12,r15                                       *
;*   Local Frame Size  : 0 Args + 2 Auto + 0 Save = 2 byte                   *
;*****************************************************************************
USCI_B_I2C_masterIsStartSent:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
        SUB.W     #2,SP                 ; [] 
	.dwcfi	cfa_offset, 4
$C$DW$59	.dwtag  DW_TAG_variable
	.dwattr $C$DW$59, DW_AT_name("baseAddress")
	.dwattr $C$DW$59, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$59, DW_AT_location[DW_OP_breg1 0]

        MOV.W     r12,0(SP)             ; [] |130| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 132,column 5,is_stmt,isa 0
        MOV.W     0(SP),r15             ; [] |132| 
        MOV.W     #2,r12                ; [] |132| 
        AND.B     @r15,r12              ; [] |132| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 133,column 1,is_stmt,isa 0
        ADD.W     #2,SP                 ; [] 
	.dwcfi	cfa_offset, 2
$C$DW$60	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$60, DW_AT_low_pc(0x00)
	.dwattr $C$DW$60, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$57, DW_AT_TI_end_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$57, DW_AT_TI_end_line(0x85)
	.dwattr $C$DW$57, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$57

	.sect	".text:USCI_B_I2C_masterSendStart"
	.clink
	.global	USCI_B_I2C_masterSendStart

$C$DW$61	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$61, DW_AT_name("USCI_B_I2C_masterSendStart")
	.dwattr $C$DW$61, DW_AT_low_pc(USCI_B_I2C_masterSendStart)
	.dwattr $C$DW$61, DW_AT_high_pc(0x00)
	.dwattr $C$DW$61, DW_AT_TI_symbol_name("USCI_B_I2C_masterSendStart")
	.dwattr $C$DW$61, DW_AT_external
	.dwattr $C$DW$61, DW_AT_TI_begin_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$61, DW_AT_TI_begin_line(0x87)
	.dwattr $C$DW$61, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$61, DW_AT_decl_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$61, DW_AT_decl_line(0x87)
	.dwattr $C$DW$61, DW_AT_decl_column(0x06)
	.dwattr $C$DW$61, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 136,column 1,is_stmt,address USCI_B_I2C_masterSendStart,isa 0

	.dwfde $C$DW$CIE, USCI_B_I2C_masterSendStart
$C$DW$62	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$62, DW_AT_name("baseAddress")
	.dwattr $C$DW$62, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$62, DW_AT_location[DW_OP_reg12]


;*****************************************************************************
;* FUNCTION NAME: USCI_B_I2C_masterSendStart                                 *
;*                                                                           *
;*   Regs Modified     : SP,SR,r15                                           *
;*   Regs Used         : SP,SR,r12,r15                                       *
;*   Local Frame Size  : 0 Args + 2 Auto + 0 Save = 2 byte                   *
;*****************************************************************************
USCI_B_I2C_masterSendStart:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
        SUB.W     #2,SP                 ; [] 
	.dwcfi	cfa_offset, 4
$C$DW$63	.dwtag  DW_TAG_variable
	.dwattr $C$DW$63, DW_AT_name("baseAddress")
	.dwattr $C$DW$63, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$63, DW_AT_location[DW_OP_breg1 0]

        MOV.W     r12,0(SP)             ; [] |136| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 137,column 5,is_stmt,isa 0
        MOV.W     0(SP),r15             ; [] |137| 
        OR.B      #2,0(r15)             ; [] |137| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 138,column 1,is_stmt,isa 0
        ADD.W     #2,SP                 ; [] 
	.dwcfi	cfa_offset, 2
$C$DW$64	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$64, DW_AT_low_pc(0x00)
	.dwattr $C$DW$64, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$61, DW_AT_TI_end_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$61, DW_AT_TI_end_line(0x8a)
	.dwattr $C$DW$61, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$61

	.sect	".text:USCI_B_I2C_enableInterrupt"
	.clink
	.global	USCI_B_I2C_enableInterrupt

$C$DW$65	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$65, DW_AT_name("USCI_B_I2C_enableInterrupt")
	.dwattr $C$DW$65, DW_AT_low_pc(USCI_B_I2C_enableInterrupt)
	.dwattr $C$DW$65, DW_AT_high_pc(0x00)
	.dwattr $C$DW$65, DW_AT_TI_symbol_name("USCI_B_I2C_enableInterrupt")
	.dwattr $C$DW$65, DW_AT_external
	.dwattr $C$DW$65, DW_AT_TI_begin_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$65, DW_AT_TI_begin_line(0x8c)
	.dwattr $C$DW$65, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$65, DW_AT_decl_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$65, DW_AT_decl_line(0x8c)
	.dwattr $C$DW$65, DW_AT_decl_column(0x06)
	.dwattr $C$DW$65, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 143,column 1,is_stmt,address USCI_B_I2C_enableInterrupt,isa 0

	.dwfde $C$DW$CIE, USCI_B_I2C_enableInterrupt
$C$DW$66	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$66, DW_AT_name("baseAddress")
	.dwattr $C$DW$66, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$66, DW_AT_location[DW_OP_reg12]

$C$DW$67	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$67, DW_AT_name("mask")
	.dwattr $C$DW$67, DW_AT_TI_symbol_name("mask")
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$67, DW_AT_location[DW_OP_reg13]


;*****************************************************************************
;* FUNCTION NAME: USCI_B_I2C_enableInterrupt                                 *
;*                                                                           *
;*   Regs Modified     : SP,SR,r15                                           *
;*   Regs Used         : SP,SR,r12,r13,r15                                   *
;*   Local Frame Size  : 0 Args + 4 Auto + 0 Save = 4 byte                   *
;*****************************************************************************
USCI_B_I2C_enableInterrupt:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
        SUB.W     #4,SP                 ; [] 
	.dwcfi	cfa_offset, 6
$C$DW$68	.dwtag  DW_TAG_variable
	.dwattr $C$DW$68, DW_AT_name("baseAddress")
	.dwattr $C$DW$68, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$68, DW_AT_location[DW_OP_breg1 0]

$C$DW$69	.dwtag  DW_TAG_variable
	.dwattr $C$DW$69, DW_AT_name("mask")
	.dwattr $C$DW$69, DW_AT_TI_symbol_name("mask")
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$69, DW_AT_location[DW_OP_breg1 2]

        MOV.B     r13,2(SP)             ; [] |143| 
        MOV.W     r12,0(SP)             ; [] |143| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 145,column 5,is_stmt,isa 0
        MOV.W     #42,r15               ; [] |145| 
        ADD.W     0(SP),r15             ; [] |145| 
        OR.B      2(SP),0(r15)          ; [] |145| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 146,column 1,is_stmt,isa 0
        ADD.W     #4,SP                 ; [] 
	.dwcfi	cfa_offset, 2
$C$DW$70	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$70, DW_AT_low_pc(0x00)
	.dwattr $C$DW$70, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$65, DW_AT_TI_end_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$65, DW_AT_TI_end_line(0x92)
	.dwattr $C$DW$65, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$65

	.sect	".text:USCI_B_I2C_disableInterrupt"
	.clink
	.global	USCI_B_I2C_disableInterrupt

$C$DW$71	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$71, DW_AT_name("USCI_B_I2C_disableInterrupt")
	.dwattr $C$DW$71, DW_AT_low_pc(USCI_B_I2C_disableInterrupt)
	.dwattr $C$DW$71, DW_AT_high_pc(0x00)
	.dwattr $C$DW$71, DW_AT_TI_symbol_name("USCI_B_I2C_disableInterrupt")
	.dwattr $C$DW$71, DW_AT_external
	.dwattr $C$DW$71, DW_AT_TI_begin_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$71, DW_AT_TI_begin_line(0x94)
	.dwattr $C$DW$71, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$71, DW_AT_decl_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$71, DW_AT_decl_line(0x94)
	.dwattr $C$DW$71, DW_AT_decl_column(0x06)
	.dwattr $C$DW$71, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 151,column 1,is_stmt,address USCI_B_I2C_disableInterrupt,isa 0

	.dwfde $C$DW$CIE, USCI_B_I2C_disableInterrupt
$C$DW$72	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$72, DW_AT_name("baseAddress")
	.dwattr $C$DW$72, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$72, DW_AT_location[DW_OP_reg12]

$C$DW$73	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$73, DW_AT_name("mask")
	.dwattr $C$DW$73, DW_AT_TI_symbol_name("mask")
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$73, DW_AT_location[DW_OP_reg13]


;*****************************************************************************
;* FUNCTION NAME: USCI_B_I2C_disableInterrupt                                *
;*                                                                           *
;*   Regs Modified     : SP,SR,r15                                           *
;*   Regs Used         : SP,SR,r12,r13,r15                                   *
;*   Local Frame Size  : 0 Args + 4 Auto + 0 Save = 4 byte                   *
;*****************************************************************************
USCI_B_I2C_disableInterrupt:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
        SUB.W     #4,SP                 ; [] 
	.dwcfi	cfa_offset, 6
$C$DW$74	.dwtag  DW_TAG_variable
	.dwattr $C$DW$74, DW_AT_name("baseAddress")
	.dwattr $C$DW$74, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$74, DW_AT_location[DW_OP_breg1 0]

$C$DW$75	.dwtag  DW_TAG_variable
	.dwattr $C$DW$75, DW_AT_name("mask")
	.dwattr $C$DW$75, DW_AT_TI_symbol_name("mask")
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$75, DW_AT_location[DW_OP_breg1 2]

        MOV.B     r13,2(SP)             ; [] |151| 
        MOV.W     r12,0(SP)             ; [] |151| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 153,column 5,is_stmt,isa 0
        MOV.W     #42,r15               ; [] |153| 
        ADD.W     0(SP),r15             ; [] |153| 
        BIC.B     2(SP),0(r15)          ; [] |153| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 154,column 1,is_stmt,isa 0
        ADD.W     #4,SP                 ; [] 
	.dwcfi	cfa_offset, 2
$C$DW$76	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$76, DW_AT_low_pc(0x00)
	.dwattr $C$DW$76, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$71, DW_AT_TI_end_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$71, DW_AT_TI_end_line(0x9a)
	.dwattr $C$DW$71, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$71

	.sect	".text:USCI_B_I2C_clearInterrupt"
	.clink
	.global	USCI_B_I2C_clearInterrupt

$C$DW$77	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$77, DW_AT_name("USCI_B_I2C_clearInterrupt")
	.dwattr $C$DW$77, DW_AT_low_pc(USCI_B_I2C_clearInterrupt)
	.dwattr $C$DW$77, DW_AT_high_pc(0x00)
	.dwattr $C$DW$77, DW_AT_TI_symbol_name("USCI_B_I2C_clearInterrupt")
	.dwattr $C$DW$77, DW_AT_external
	.dwattr $C$DW$77, DW_AT_TI_begin_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$77, DW_AT_TI_begin_line(0x9c)
	.dwattr $C$DW$77, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$77, DW_AT_decl_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$77, DW_AT_decl_line(0x9c)
	.dwattr $C$DW$77, DW_AT_decl_column(0x06)
	.dwattr $C$DW$77, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 159,column 1,is_stmt,address USCI_B_I2C_clearInterrupt,isa 0

	.dwfde $C$DW$CIE, USCI_B_I2C_clearInterrupt
$C$DW$78	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$78, DW_AT_name("baseAddress")
	.dwattr $C$DW$78, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$78, DW_AT_location[DW_OP_reg12]

$C$DW$79	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$79, DW_AT_name("mask")
	.dwattr $C$DW$79, DW_AT_TI_symbol_name("mask")
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$79, DW_AT_location[DW_OP_reg13]


;*****************************************************************************
;* FUNCTION NAME: USCI_B_I2C_clearInterrupt                                  *
;*                                                                           *
;*   Regs Modified     : SP,SR,r15                                           *
;*   Regs Used         : SP,SR,r12,r13,r15                                   *
;*   Local Frame Size  : 0 Args + 4 Auto + 0 Save = 4 byte                   *
;*****************************************************************************
USCI_B_I2C_clearInterrupt:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
        SUB.W     #4,SP                 ; [] 
	.dwcfi	cfa_offset, 6
$C$DW$80	.dwtag  DW_TAG_variable
	.dwattr $C$DW$80, DW_AT_name("baseAddress")
	.dwattr $C$DW$80, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$80, DW_AT_location[DW_OP_breg1 0]

$C$DW$81	.dwtag  DW_TAG_variable
	.dwattr $C$DW$81, DW_AT_name("mask")
	.dwattr $C$DW$81, DW_AT_TI_symbol_name("mask")
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$81, DW_AT_location[DW_OP_breg1 2]

        MOV.B     r13,2(SP)             ; [] |159| 
        MOV.W     r12,0(SP)             ; [] |159| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 161,column 5,is_stmt,isa 0
        MOV.W     #44,r15               ; [] |161| 
        ADD.W     0(SP),r15             ; [] |161| 
        BIC.B     2(SP),0(r15)          ; [] |161| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 162,column 1,is_stmt,isa 0
        ADD.W     #4,SP                 ; [] 
	.dwcfi	cfa_offset, 2
$C$DW$82	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$82, DW_AT_low_pc(0x00)
	.dwattr $C$DW$82, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$77, DW_AT_TI_end_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$77, DW_AT_TI_end_line(0xa2)
	.dwattr $C$DW$77, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$77

	.sect	".text:USCI_B_I2C_getInterruptStatus"
	.clink
	.global	USCI_B_I2C_getInterruptStatus

$C$DW$83	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$83, DW_AT_name("USCI_B_I2C_getInterruptStatus")
	.dwattr $C$DW$83, DW_AT_low_pc(USCI_B_I2C_getInterruptStatus)
	.dwattr $C$DW$83, DW_AT_high_pc(0x00)
	.dwattr $C$DW$83, DW_AT_TI_symbol_name("USCI_B_I2C_getInterruptStatus")
	.dwattr $C$DW$83, DW_AT_external
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$83, DW_AT_TI_begin_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$83, DW_AT_TI_begin_line(0xa4)
	.dwattr $C$DW$83, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$83, DW_AT_decl_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$83, DW_AT_decl_line(0xa4)
	.dwattr $C$DW$83, DW_AT_decl_column(0x09)
	.dwattr $C$DW$83, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 167,column 1,is_stmt,address USCI_B_I2C_getInterruptStatus,isa 0

	.dwfde $C$DW$CIE, USCI_B_I2C_getInterruptStatus
$C$DW$84	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$84, DW_AT_name("baseAddress")
	.dwattr $C$DW$84, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$84, DW_AT_location[DW_OP_reg12]

$C$DW$85	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$85, DW_AT_name("mask")
	.dwattr $C$DW$85, DW_AT_TI_symbol_name("mask")
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$85, DW_AT_location[DW_OP_reg13]


;*****************************************************************************
;* FUNCTION NAME: USCI_B_I2C_getInterruptStatus                              *
;*                                                                           *
;*   Regs Modified     : SP,SR,r12,r15                                       *
;*   Regs Used         : SP,SR,r12,r13,r15                                   *
;*   Local Frame Size  : 0 Args + 4 Auto + 0 Save = 4 byte                   *
;*****************************************************************************
USCI_B_I2C_getInterruptStatus:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
        SUB.W     #4,SP                 ; [] 
	.dwcfi	cfa_offset, 6
$C$DW$86	.dwtag  DW_TAG_variable
	.dwattr $C$DW$86, DW_AT_name("baseAddress")
	.dwattr $C$DW$86, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$86, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$86, DW_AT_location[DW_OP_breg1 0]

$C$DW$87	.dwtag  DW_TAG_variable
	.dwattr $C$DW$87, DW_AT_name("mask")
	.dwattr $C$DW$87, DW_AT_TI_symbol_name("mask")
	.dwattr $C$DW$87, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$87, DW_AT_location[DW_OP_breg1 2]

        MOV.B     r13,2(SP)             ; [] |167| 
        MOV.W     r12,0(SP)             ; [] |167| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 169,column 5,is_stmt,isa 0
        MOV.B     2(SP),r15             ; [] |169| 
        AND.B     44(r12),r15           ; [] |169| 
        MOV.W     r15,r12               ; [] |169| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 170,column 1,is_stmt,isa 0
        ADD.W     #4,SP                 ; [] 
	.dwcfi	cfa_offset, 2
$C$DW$88	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$88, DW_AT_low_pc(0x00)
	.dwattr $C$DW$88, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$83, DW_AT_TI_end_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$83, DW_AT_TI_end_line(0xaa)
	.dwattr $C$DW$83, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$83

	.sect	".text:USCI_B_I2C_masterSendSingleByte"
	.clink
	.global	USCI_B_I2C_masterSendSingleByte

$C$DW$89	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$89, DW_AT_name("USCI_B_I2C_masterSendSingleByte")
	.dwattr $C$DW$89, DW_AT_low_pc(USCI_B_I2C_masterSendSingleByte)
	.dwattr $C$DW$89, DW_AT_high_pc(0x00)
	.dwattr $C$DW$89, DW_AT_TI_symbol_name("USCI_B_I2C_masterSendSingleByte")
	.dwattr $C$DW$89, DW_AT_external
	.dwattr $C$DW$89, DW_AT_TI_begin_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$89, DW_AT_TI_begin_line(0xac)
	.dwattr $C$DW$89, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$89, DW_AT_decl_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$89, DW_AT_decl_line(0xac)
	.dwattr $C$DW$89, DW_AT_decl_column(0x06)
	.dwattr $C$DW$89, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 175,column 1,is_stmt,address USCI_B_I2C_masterSendSingleByte,isa 0

	.dwfde $C$DW$CIE, USCI_B_I2C_masterSendSingleByte
$C$DW$90	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$90, DW_AT_name("baseAddress")
	.dwattr $C$DW$90, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$90, DW_AT_location[DW_OP_reg12]

$C$DW$91	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$91, DW_AT_name("txData")
	.dwattr $C$DW$91, DW_AT_TI_symbol_name("txData")
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$91, DW_AT_location[DW_OP_reg13]


;*****************************************************************************
;* FUNCTION NAME: USCI_B_I2C_masterSendSingleByte                            *
;*                                                                           *
;*   Regs Modified     : SP,SR,r15                                           *
;*   Regs Used         : SP,SR,r12,r13,r15                                   *
;*   Local Frame Size  : 0 Args + 4 Auto + 0 Save = 4 byte                   *
;*****************************************************************************
USCI_B_I2C_masterSendSingleByte:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
        SUB.W     #4,SP                 ; [] 
	.dwcfi	cfa_offset, 6
$C$DW$92	.dwtag  DW_TAG_variable
	.dwattr $C$DW$92, DW_AT_name("baseAddress")
	.dwattr $C$DW$92, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$92, DW_AT_location[DW_OP_breg1 0]

$C$DW$93	.dwtag  DW_TAG_variable
	.dwattr $C$DW$93, DW_AT_name("txData")
	.dwattr $C$DW$93, DW_AT_TI_symbol_name("txData")
	.dwattr $C$DW$93, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$93, DW_AT_location[DW_OP_breg1 2]

$C$DW$94	.dwtag  DW_TAG_variable
	.dwattr $C$DW$94, DW_AT_name("txieStatus")
	.dwattr $C$DW$94, DW_AT_TI_symbol_name("txieStatus")
	.dwattr $C$DW$94, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$94, DW_AT_location[DW_OP_breg1 3]

        MOV.B     r13,2(SP)             ; [] |175| 
        MOV.W     r12,0(SP)             ; [] |175| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 177,column 24,is_stmt,isa 0
        MOV.W     #2,r15                ; [] |177| 
        AND.B     42(r12),r15           ; [] |177| 
        MOV.B     r15,3(SP)             ; [] |177| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 180,column 5,is_stmt,isa 0
        MOV.W     #42,r15               ; [] |180| 
        ADD.W     0(SP),r15             ; [] |180| 
        BIC.B     #2,0(r15)             ; [] |180| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 183,column 5,is_stmt,isa 0
        MOV.W     0(SP),r15             ; [] |183| 
        OR.B      #18,0(r15)            ; [] |183| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 186,column 5,is_stmt,isa 0
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP $C$L3
;*
;*   Loop source line                : 186
;*   Loop closing brace source line  : 186
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
$C$L3:    
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 186,column 12,is_stmt,isa 0
        MOV.W     0(SP),r15             ; [] |186| 
        BIT.B     #2,44(r15)            ; [] |186| 
        JEQ       $C$L3                 ; [] |186| 
                                          ; [] |186| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 189,column 5,is_stmt,isa 0
        MOV.B     2(SP),14(r15)         ; [] |189| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 192,column 5,is_stmt,isa 0
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP $C$L4
;*
;*   Loop source line                : 192
;*   Loop closing brace source line  : 192
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
$C$L4:    
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 192,column 12,is_stmt,isa 0
        MOV.W     0(SP),r15             ; [] |192| 
        BIT.B     #2,44(r15)            ; [] |192| 
        JEQ       $C$L4                 ; [] |192| 
                                          ; [] |192| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 195,column 5,is_stmt,isa 0
        MOV.W     0(SP),r15             ; [] |195| 
        OR.B      #4,0(r15)             ; [] |195| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 198,column 5,is_stmt,isa 0
        MOV.W     #44,r15               ; [] |198| 
        ADD.W     0(SP),r15             ; [] |198| 
        BIC.B     #2,0(r15)             ; [] |198| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 201,column 5,is_stmt,isa 0
        MOV.W     #42,r15               ; [] |201| 
        ADD.W     0(SP),r15             ; [] |201| 
        OR.B      3(SP),0(r15)          ; [] |201| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 202,column 1,is_stmt,isa 0
        ADD.W     #4,SP                 ; [] 
	.dwcfi	cfa_offset, 2
$C$DW$95	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$95, DW_AT_low_pc(0x00)
	.dwattr $C$DW$95, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$89, DW_AT_TI_end_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$89, DW_AT_TI_end_line(0xca)
	.dwattr $C$DW$89, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$89

	.sect	".text:USCI_B_I2C_masterSendSingleByteWithTimeout"
	.clink
	.global	USCI_B_I2C_masterSendSingleByteWithTimeout

$C$DW$96	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$96, DW_AT_name("USCI_B_I2C_masterSendSingleByteWithTimeout")
	.dwattr $C$DW$96, DW_AT_low_pc(USCI_B_I2C_masterSendSingleByteWithTimeout)
	.dwattr $C$DW$96, DW_AT_high_pc(0x00)
	.dwattr $C$DW$96, DW_AT_TI_symbol_name("USCI_B_I2C_masterSendSingleByteWithTimeout")
	.dwattr $C$DW$96, DW_AT_external
	.dwattr $C$DW$96, DW_AT_type(*$C$DW$T$151)
	.dwattr $C$DW$96, DW_AT_TI_begin_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$96, DW_AT_TI_begin_line(0xcc)
	.dwattr $C$DW$96, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$96, DW_AT_decl_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$96, DW_AT_decl_line(0xcc)
	.dwattr $C$DW$96, DW_AT_decl_column(0x06)
	.dwattr $C$DW$96, DW_AT_TI_max_frame_size(0x0e)
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 208,column 1,is_stmt,address USCI_B_I2C_masterSendSingleByteWithTimeout,isa 0

	.dwfde $C$DW$CIE, USCI_B_I2C_masterSendSingleByteWithTimeout
$C$DW$97	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$97, DW_AT_name("baseAddress")
	.dwattr $C$DW$97, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$97, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$97, DW_AT_location[DW_OP_reg12]

$C$DW$98	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$98, DW_AT_name("txData")
	.dwattr $C$DW$98, DW_AT_TI_symbol_name("txData")
	.dwattr $C$DW$98, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$98, DW_AT_location[DW_OP_reg13]

$C$DW$99	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$99, DW_AT_name("timeout")
	.dwattr $C$DW$99, DW_AT_TI_symbol_name("timeout")
	.dwattr $C$DW$99, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$99, DW_AT_location[DW_OP_reg14]


;*****************************************************************************
;* FUNCTION NAME: USCI_B_I2C_masterSendSingleByteWithTimeout                 *
;*                                                                           *
;*   Regs Modified     : SP,SR,r12,r15                                       *
;*   Regs Used         : SP,SR,r12,r13,r14,r15                               *
;*   Local Frame Size  : 0 Args + 12 Auto + 0 Save = 12 byte                 *
;*****************************************************************************
USCI_B_I2C_masterSendSingleByteWithTimeout:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
        SUB.W     #12,SP                ; [] 
	.dwcfi	cfa_offset, 14
$C$DW$100	.dwtag  DW_TAG_variable
	.dwattr $C$DW$100, DW_AT_name("timeout")
	.dwattr $C$DW$100, DW_AT_TI_symbol_name("timeout")
	.dwattr $C$DW$100, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$100, DW_AT_location[DW_OP_breg1 0]

$C$DW$101	.dwtag  DW_TAG_variable
	.dwattr $C$DW$101, DW_AT_name("timeout2")
	.dwattr $C$DW$101, DW_AT_TI_symbol_name("timeout2")
	.dwattr $C$DW$101, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$101, DW_AT_location[DW_OP_breg1 4]

$C$DW$102	.dwtag  DW_TAG_variable
	.dwattr $C$DW$102, DW_AT_name("baseAddress")
	.dwattr $C$DW$102, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$102, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$102, DW_AT_location[DW_OP_breg1 8]

$C$DW$103	.dwtag  DW_TAG_variable
	.dwattr $C$DW$103, DW_AT_name("txData")
	.dwattr $C$DW$103, DW_AT_TI_symbol_name("txData")
	.dwattr $C$DW$103, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$103, DW_AT_location[DW_OP_breg1 10]

$C$DW$104	.dwtag  DW_TAG_variable
	.dwattr $C$DW$104, DW_AT_name("txieStatus")
	.dwattr $C$DW$104, DW_AT_TI_symbol_name("txieStatus")
	.dwattr $C$DW$104, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$104, DW_AT_location[DW_OP_breg1 11]

        MOV.W     r14,0(SP)             ; [] |208| 
        MOV.W     r15,2(SP)             ; [] |208| 
        MOV.B     r13,10(SP)            ; [] |208| 
        MOV.W     r12,8(SP)             ; [] |208| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 210,column 23,is_stmt,isa 0
        MOV.W     0(SP),4(SP)           ; [] |210| 
        MOV.W     2(SP),6(SP)           ; [] |210| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 213,column 24,is_stmt,isa 0
        MOV.W     #2,r15                ; [] |213| 
        AND.B     42(r12),r15           ; [] |213| 
        MOV.B     r15,11(SP)            ; [] |213| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 216,column 5,is_stmt,isa 0
        MOV.W     #42,r15               ; [] |216| 
        ADD.W     8(SP),r15             ; [] |216| 
        BIC.B     #2,0(r15)             ; [] |216| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 219,column 5,is_stmt,isa 0
        MOV.W     8(SP),r15             ; [] |219| 
        OR.B      #18,0(r15)            ; [] |219| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 222,column 5,is_stmt,isa 0
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP $C$L5
;*
;*   Loop source line                : 222
;*   Loop closing brace source line  : 222
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
$C$L5:    
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 222,column 12,is_stmt,isa 0
        MOV.W     8(SP),r15             ; [] |222| 
        BIT.B     #2,44(r15)            ; [] |222| 
        JNE       $C$L6                 ; [] |222| 
                                          ; [] |222| 
;* --------------------------------------------------------------------------*
        SUB.W     #1,0(SP)              ; [] |222| 
        SUBC.W    #0,2(SP)              ; [] |222| 
        JNE       $C$L5                 ; [] |222| 
                                          ; [] |222| 
;* --------------------------------------------------------------------------*
        TST.W     0(SP)                 ; [] |222| 
        JNE       $C$L5                 ; [] |222| 
                                          ; [] |222| 
;* --------------------------------------------------------------------------*
$C$L6:    
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 225,column 5,is_stmt,isa 0
        TST.W     2(SP)                 ; [] |225| 
        JNE       $C$L7                 ; [] |225| 
                                          ; [] |225| 
;* --------------------------------------------------------------------------*
        TST.W     0(SP)                 ; [] |225| 
        JNE       $C$L7                 ; [] |225| 
                                          ; [] |225| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 226,column 9,is_stmt,isa 0
        MOV.B     #0,r12                ; [] |226| 
        JMP       $C$L11                ; [] |226| 
                                          ; [] |226| 
;* --------------------------------------------------------------------------*
$C$L7:    
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 230,column 5,is_stmt,isa 0
        MOV.B     10(SP),14(r15)        ; [] |230| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 233,column 5,is_stmt,isa 0
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP $C$L8
;*
;*   Loop source line                : 233
;*   Loop closing brace source line  : 233
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
$C$L8:    
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 233,column 12,is_stmt,isa 0
        MOV.W     8(SP),r15             ; [] |233| 
        BIT.B     #2,44(r15)            ; [] |233| 
        JNE       $C$L9                 ; [] |233| 
                                          ; [] |233| 
;* --------------------------------------------------------------------------*
        SUB.W     #1,4(SP)              ; [] |233| 
        SUBC.W    #0,6(SP)              ; [] |233| 
        JNE       $C$L8                 ; [] |233| 
                                          ; [] |233| 
;* --------------------------------------------------------------------------*
        TST.W     4(SP)                 ; [] |233| 
        JNE       $C$L8                 ; [] |233| 
                                          ; [] |233| 
;* --------------------------------------------------------------------------*
$C$L9:    
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 236,column 5,is_stmt,isa 0
        TST.W     6(SP)                 ; [] |236| 
        JNE       $C$L10                ; [] |236| 
                                          ; [] |236| 
;* --------------------------------------------------------------------------*
        TST.W     4(SP)                 ; [] |236| 
        JNE       $C$L10                ; [] |236| 
                                          ; [] |236| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 237,column 9,is_stmt,isa 0
        MOV.B     #0,r12                ; [] |237| 
        JMP       $C$L11                ; [] |237| 
                                          ; [] |237| 
;* --------------------------------------------------------------------------*
$C$L10:    
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 241,column 5,is_stmt,isa 0
        MOV.W     8(SP),r15             ; [] |241| 
        OR.B      #4,0(r15)             ; [] |241| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 244,column 5,is_stmt,isa 0
        MOV.W     #44,r15               ; [] |244| 
        ADD.W     8(SP),r15             ; [] |244| 
        BIC.B     #2,0(r15)             ; [] |244| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 247,column 5,is_stmt,isa 0
        MOV.W     #42,r15               ; [] |247| 
        ADD.W     8(SP),r15             ; [] |247| 
        OR.B      11(SP),0(r15)         ; [] |247| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 249,column 5,is_stmt,isa 0
        MOV.B     #1,r12                ; [] |249| 
;* --------------------------------------------------------------------------*
$C$L11:    
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 250,column 1,is_stmt,isa 0
        ADD.W     #12,SP                ; [] 
	.dwcfi	cfa_offset, 2
$C$DW$105	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$105, DW_AT_low_pc(0x00)
	.dwattr $C$DW$105, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$96, DW_AT_TI_end_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$96, DW_AT_TI_end_line(0xfa)
	.dwattr $C$DW$96, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$96

	.sect	".text:USCI_B_I2C_masterSendMultiByteStart"
	.clink
	.global	USCI_B_I2C_masterSendMultiByteStart

$C$DW$106	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$106, DW_AT_name("USCI_B_I2C_masterSendMultiByteStart")
	.dwattr $C$DW$106, DW_AT_low_pc(USCI_B_I2C_masterSendMultiByteStart)
	.dwattr $C$DW$106, DW_AT_high_pc(0x00)
	.dwattr $C$DW$106, DW_AT_TI_symbol_name("USCI_B_I2C_masterSendMultiByteStart")
	.dwattr $C$DW$106, DW_AT_external
	.dwattr $C$DW$106, DW_AT_TI_begin_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$106, DW_AT_TI_begin_line(0xfc)
	.dwattr $C$DW$106, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$106, DW_AT_decl_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$106, DW_AT_decl_line(0xfc)
	.dwattr $C$DW$106, DW_AT_decl_column(0x06)
	.dwattr $C$DW$106, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 255,column 1,is_stmt,address USCI_B_I2C_masterSendMultiByteStart,isa 0

	.dwfde $C$DW$CIE, USCI_B_I2C_masterSendMultiByteStart
$C$DW$107	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$107, DW_AT_name("baseAddress")
	.dwattr $C$DW$107, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$107, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$107, DW_AT_location[DW_OP_reg12]

$C$DW$108	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$108, DW_AT_name("txData")
	.dwattr $C$DW$108, DW_AT_TI_symbol_name("txData")
	.dwattr $C$DW$108, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$108, DW_AT_location[DW_OP_reg13]


;*****************************************************************************
;* FUNCTION NAME: USCI_B_I2C_masterSendMultiByteStart                        *
;*                                                                           *
;*   Regs Modified     : SP,SR,r15                                           *
;*   Regs Used         : SP,SR,r12,r13,r15                                   *
;*   Local Frame Size  : 0 Args + 4 Auto + 0 Save = 4 byte                   *
;*****************************************************************************
USCI_B_I2C_masterSendMultiByteStart:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
        SUB.W     #4,SP                 ; [] 
	.dwcfi	cfa_offset, 6
$C$DW$109	.dwtag  DW_TAG_variable
	.dwattr $C$DW$109, DW_AT_name("baseAddress")
	.dwattr $C$DW$109, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$109, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$109, DW_AT_location[DW_OP_breg1 0]

$C$DW$110	.dwtag  DW_TAG_variable
	.dwattr $C$DW$110, DW_AT_name("txData")
	.dwattr $C$DW$110, DW_AT_TI_symbol_name("txData")
	.dwattr $C$DW$110, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$110, DW_AT_location[DW_OP_breg1 2]

$C$DW$111	.dwtag  DW_TAG_variable
	.dwattr $C$DW$111, DW_AT_name("txieStatus")
	.dwattr $C$DW$111, DW_AT_TI_symbol_name("txieStatus")
	.dwattr $C$DW$111, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$111, DW_AT_location[DW_OP_breg1 3]

        MOV.B     r13,2(SP)             ; [] |255| 
        MOV.W     r12,0(SP)             ; [] |255| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 257,column 24,is_stmt,isa 0
        MOV.W     #2,r15                ; [] |257| 
        AND.B     42(r12),r15           ; [] |257| 
        MOV.B     r15,3(SP)             ; [] |257| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 260,column 5,is_stmt,isa 0
        MOV.W     #42,r15               ; [] |260| 
        ADD.W     0(SP),r15             ; [] |260| 
        BIC.B     #2,0(r15)             ; [] |260| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 263,column 5,is_stmt,isa 0
        MOV.W     0(SP),r15             ; [] |263| 
        OR.B      #18,0(r15)            ; [] |263| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 266,column 5,is_stmt,isa 0
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP $C$L12
;*
;*   Loop source line                : 266
;*   Loop closing brace source line  : 266
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
$C$L12:    
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 266,column 12,is_stmt,isa 0
        MOV.W     0(SP),r15             ; [] |266| 
        BIT.B     #2,44(r15)            ; [] |266| 
        JEQ       $C$L12                ; [] |266| 
                                          ; [] |266| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 269,column 5,is_stmt,isa 0
        MOV.B     2(SP),14(r15)         ; [] |269| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 272,column 5,is_stmt,isa 0
        MOV.W     #42,r15               ; [] |272| 
        ADD.W     0(SP),r15             ; [] |272| 
        OR.B      3(SP),0(r15)          ; [] |272| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 273,column 1,is_stmt,isa 0
        ADD.W     #4,SP                 ; [] 
	.dwcfi	cfa_offset, 2
$C$DW$112	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$112, DW_AT_low_pc(0x00)
	.dwattr $C$DW$112, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$106, DW_AT_TI_end_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$106, DW_AT_TI_end_line(0x111)
	.dwattr $C$DW$106, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$106

	.sect	".text:USCI_B_I2C_masterSendMultiByteStartWithTimeout"
	.clink
	.global	USCI_B_I2C_masterSendMultiByteStartWithTimeout

$C$DW$113	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$113, DW_AT_name("USCI_B_I2C_masterSendMultiByteStartWithTimeout")
	.dwattr $C$DW$113, DW_AT_low_pc(USCI_B_I2C_masterSendMultiByteStartWithTimeout)
	.dwattr $C$DW$113, DW_AT_high_pc(0x00)
	.dwattr $C$DW$113, DW_AT_TI_symbol_name("USCI_B_I2C_masterSendMultiByteStartWithTimeout")
	.dwattr $C$DW$113, DW_AT_external
	.dwattr $C$DW$113, DW_AT_type(*$C$DW$T$151)
	.dwattr $C$DW$113, DW_AT_TI_begin_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$113, DW_AT_TI_begin_line(0x113)
	.dwattr $C$DW$113, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$113, DW_AT_decl_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$113, DW_AT_decl_line(0x113)
	.dwattr $C$DW$113, DW_AT_decl_column(0x06)
	.dwattr $C$DW$113, DW_AT_TI_max_frame_size(0x0a)
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 279,column 1,is_stmt,address USCI_B_I2C_masterSendMultiByteStartWithTimeout,isa 0

	.dwfde $C$DW$CIE, USCI_B_I2C_masterSendMultiByteStartWithTimeout
$C$DW$114	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$114, DW_AT_name("baseAddress")
	.dwattr $C$DW$114, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$114, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$114, DW_AT_location[DW_OP_reg12]

$C$DW$115	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$115, DW_AT_name("txData")
	.dwattr $C$DW$115, DW_AT_TI_symbol_name("txData")
	.dwattr $C$DW$115, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$115, DW_AT_location[DW_OP_reg13]

$C$DW$116	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$116, DW_AT_name("timeout")
	.dwattr $C$DW$116, DW_AT_TI_symbol_name("timeout")
	.dwattr $C$DW$116, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$116, DW_AT_location[DW_OP_reg14]


;*****************************************************************************
;* FUNCTION NAME: USCI_B_I2C_masterSendMultiByteStartWithTimeout             *
;*                                                                           *
;*   Regs Modified     : SP,SR,r12,r15                                       *
;*   Regs Used         : SP,SR,r12,r13,r14,r15                               *
;*   Local Frame Size  : 0 Args + 8 Auto + 0 Save = 8 byte                   *
;*****************************************************************************
USCI_B_I2C_masterSendMultiByteStartWithTimeout:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
        SUB.W     #8,SP                 ; [] 
	.dwcfi	cfa_offset, 10
$C$DW$117	.dwtag  DW_TAG_variable
	.dwattr $C$DW$117, DW_AT_name("timeout")
	.dwattr $C$DW$117, DW_AT_TI_symbol_name("timeout")
	.dwattr $C$DW$117, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$117, DW_AT_location[DW_OP_breg1 0]

$C$DW$118	.dwtag  DW_TAG_variable
	.dwattr $C$DW$118, DW_AT_name("baseAddress")
	.dwattr $C$DW$118, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$118, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$118, DW_AT_location[DW_OP_breg1 4]

$C$DW$119	.dwtag  DW_TAG_variable
	.dwattr $C$DW$119, DW_AT_name("txData")
	.dwattr $C$DW$119, DW_AT_TI_symbol_name("txData")
	.dwattr $C$DW$119, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$119, DW_AT_location[DW_OP_breg1 6]

$C$DW$120	.dwtag  DW_TAG_variable
	.dwattr $C$DW$120, DW_AT_name("txieStatus")
	.dwattr $C$DW$120, DW_AT_TI_symbol_name("txieStatus")
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$120, DW_AT_location[DW_OP_breg1 7]

        MOV.W     r14,0(SP)             ; [] |279| 
        MOV.W     r15,2(SP)             ; [] |279| 
        MOV.B     r13,6(SP)             ; [] |279| 
        MOV.W     r12,4(SP)             ; [] |279| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 281,column 24,is_stmt,isa 0
        MOV.W     #2,r15                ; [] |281| 
        AND.B     42(r12),r15           ; [] |281| 
        MOV.B     r15,7(SP)             ; [] |281| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 284,column 5,is_stmt,isa 0
        MOV.W     #42,r15               ; [] |284| 
        ADD.W     4(SP),r15             ; [] |284| 
        BIC.B     #2,0(r15)             ; [] |284| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 287,column 5,is_stmt,isa 0
        MOV.W     4(SP),r15             ; [] |287| 
        OR.B      #18,0(r15)            ; [] |287| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 290,column 5,is_stmt,isa 0
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP $C$L13
;*
;*   Loop source line                : 290
;*   Loop closing brace source line  : 290
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
$C$L13:    
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 290,column 12,is_stmt,isa 0
        MOV.W     4(SP),r15             ; [] |290| 
        BIT.B     #2,44(r15)            ; [] |290| 
        JNE       $C$L14                ; [] |290| 
                                          ; [] |290| 
;* --------------------------------------------------------------------------*
        SUB.W     #1,0(SP)              ; [] |290| 
        SUBC.W    #0,2(SP)              ; [] |290| 
        JNE       $C$L13                ; [] |290| 
                                          ; [] |290| 
;* --------------------------------------------------------------------------*
        TST.W     0(SP)                 ; [] |290| 
        JNE       $C$L13                ; [] |290| 
                                          ; [] |290| 
;* --------------------------------------------------------------------------*
$C$L14:    
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 293,column 5,is_stmt,isa 0
        TST.W     2(SP)                 ; [] |293| 
        JNE       $C$L15                ; [] |293| 
                                          ; [] |293| 
;* --------------------------------------------------------------------------*
        TST.W     0(SP)                 ; [] |293| 
        JNE       $C$L15                ; [] |293| 
                                          ; [] |293| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 294,column 9,is_stmt,isa 0
        MOV.B     #0,r12                ; [] |294| 
        JMP       $C$L16                ; [] |294| 
                                          ; [] |294| 
;* --------------------------------------------------------------------------*
$C$L15:    
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 298,column 5,is_stmt,isa 0
        MOV.B     6(SP),14(r15)         ; [] |298| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 301,column 5,is_stmt,isa 0
        MOV.W     #42,r15               ; [] |301| 
        ADD.W     4(SP),r15             ; [] |301| 
        OR.B      7(SP),0(r15)          ; [] |301| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 303,column 5,is_stmt,isa 0
        MOV.B     #1,r12                ; [] |303| 
;* --------------------------------------------------------------------------*
$C$L16:    
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 304,column 1,is_stmt,isa 0
        ADD.W     #8,SP                 ; [] 
	.dwcfi	cfa_offset, 2
$C$DW$121	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$121, DW_AT_low_pc(0x00)
	.dwattr $C$DW$121, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$113, DW_AT_TI_end_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$113, DW_AT_TI_end_line(0x130)
	.dwattr $C$DW$113, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$113

	.sect	".text:USCI_B_I2C_masterSendMultiByteNext"
	.clink
	.global	USCI_B_I2C_masterSendMultiByteNext

$C$DW$122	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$122, DW_AT_name("USCI_B_I2C_masterSendMultiByteNext")
	.dwattr $C$DW$122, DW_AT_low_pc(USCI_B_I2C_masterSendMultiByteNext)
	.dwattr $C$DW$122, DW_AT_high_pc(0x00)
	.dwattr $C$DW$122, DW_AT_TI_symbol_name("USCI_B_I2C_masterSendMultiByteNext")
	.dwattr $C$DW$122, DW_AT_external
	.dwattr $C$DW$122, DW_AT_TI_begin_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$122, DW_AT_TI_begin_line(0x132)
	.dwattr $C$DW$122, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$122, DW_AT_decl_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$122, DW_AT_decl_line(0x132)
	.dwattr $C$DW$122, DW_AT_decl_column(0x06)
	.dwattr $C$DW$122, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 309,column 1,is_stmt,address USCI_B_I2C_masterSendMultiByteNext,isa 0

	.dwfde $C$DW$CIE, USCI_B_I2C_masterSendMultiByteNext
$C$DW$123	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$123, DW_AT_name("baseAddress")
	.dwattr $C$DW$123, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$123, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$123, DW_AT_location[DW_OP_reg12]

$C$DW$124	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$124, DW_AT_name("txData")
	.dwattr $C$DW$124, DW_AT_TI_symbol_name("txData")
	.dwattr $C$DW$124, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$124, DW_AT_location[DW_OP_reg13]


;*****************************************************************************
;* FUNCTION NAME: USCI_B_I2C_masterSendMultiByteNext                         *
;*                                                                           *
;*   Regs Modified     : SP,SR                                               *
;*   Regs Used         : SP,SR,r12,r13                                       *
;*   Local Frame Size  : 0 Args + 4 Auto + 0 Save = 4 byte                   *
;*****************************************************************************
USCI_B_I2C_masterSendMultiByteNext:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
        SUB.W     #4,SP                 ; [] 
	.dwcfi	cfa_offset, 6
$C$DW$125	.dwtag  DW_TAG_variable
	.dwattr $C$DW$125, DW_AT_name("baseAddress")
	.dwattr $C$DW$125, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$125, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$125, DW_AT_location[DW_OP_breg1 0]

$C$DW$126	.dwtag  DW_TAG_variable
	.dwattr $C$DW$126, DW_AT_name("txData")
	.dwattr $C$DW$126, DW_AT_TI_symbol_name("txData")
	.dwattr $C$DW$126, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$126, DW_AT_location[DW_OP_breg1 2]

        MOV.B     r13,2(SP)             ; [] |309| 
        MOV.W     r12,0(SP)             ; [] |309| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 311,column 5,is_stmt,isa 0
        BIT.B     #2,42(r12)            ; [] |311| 
        JNE       $C$L18                ; [] |311| 
                                          ; [] |311| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 313,column 9,is_stmt,isa 0
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP $C$L17
;*
;*   Loop source line                : 313
;*   Loop closing brace source line  : 313
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
$C$L17:    
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 313,column 16,is_stmt,isa 0
        BIT.B     #2,44(r12)            ; [] |313| 
        JEQ       $C$L17                ; [] |313| 
                                          ; [] |313| 
;* --------------------------------------------------------------------------*
$C$L18:    
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 317,column 5,is_stmt,isa 0
        MOV.B     2(SP),14(r12)         ; [] |317| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 318,column 1,is_stmt,isa 0
        ADD.W     #4,SP                 ; [] 
	.dwcfi	cfa_offset, 2
$C$DW$127	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$127, DW_AT_low_pc(0x00)
	.dwattr $C$DW$127, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$122, DW_AT_TI_end_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$122, DW_AT_TI_end_line(0x13e)
	.dwattr $C$DW$122, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$122

	.sect	".text:USCI_B_I2C_masterSendMultiByteNextWithTimeout"
	.clink
	.global	USCI_B_I2C_masterSendMultiByteNextWithTimeout

$C$DW$128	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$128, DW_AT_name("USCI_B_I2C_masterSendMultiByteNextWithTimeout")
	.dwattr $C$DW$128, DW_AT_low_pc(USCI_B_I2C_masterSendMultiByteNextWithTimeout)
	.dwattr $C$DW$128, DW_AT_high_pc(0x00)
	.dwattr $C$DW$128, DW_AT_TI_symbol_name("USCI_B_I2C_masterSendMultiByteNextWithTimeout")
	.dwattr $C$DW$128, DW_AT_external
	.dwattr $C$DW$128, DW_AT_type(*$C$DW$T$151)
	.dwattr $C$DW$128, DW_AT_TI_begin_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$128, DW_AT_TI_begin_line(0x140)
	.dwattr $C$DW$128, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$128, DW_AT_decl_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$128, DW_AT_decl_line(0x140)
	.dwattr $C$DW$128, DW_AT_decl_column(0x06)
	.dwattr $C$DW$128, DW_AT_TI_max_frame_size(0x0a)
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 324,column 1,is_stmt,address USCI_B_I2C_masterSendMultiByteNextWithTimeout,isa 0

	.dwfde $C$DW$CIE, USCI_B_I2C_masterSendMultiByteNextWithTimeout
$C$DW$129	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$129, DW_AT_name("baseAddress")
	.dwattr $C$DW$129, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$129, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$129, DW_AT_location[DW_OP_reg12]

$C$DW$130	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$130, DW_AT_name("txData")
	.dwattr $C$DW$130, DW_AT_TI_symbol_name("txData")
	.dwattr $C$DW$130, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$130, DW_AT_location[DW_OP_reg13]

$C$DW$131	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$131, DW_AT_name("timeout")
	.dwattr $C$DW$131, DW_AT_TI_symbol_name("timeout")
	.dwattr $C$DW$131, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$131, DW_AT_location[DW_OP_reg14]


;*****************************************************************************
;* FUNCTION NAME: USCI_B_I2C_masterSendMultiByteNextWithTimeout              *
;*                                                                           *
;*   Regs Modified     : SP,SR,r12                                           *
;*   Regs Used         : SP,SR,r12,r13,r14,r15                               *
;*   Local Frame Size  : 0 Args + 8 Auto + 0 Save = 8 byte                   *
;*****************************************************************************
USCI_B_I2C_masterSendMultiByteNextWithTimeout:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
        SUB.W     #8,SP                 ; [] 
	.dwcfi	cfa_offset, 10
$C$DW$132	.dwtag  DW_TAG_variable
	.dwattr $C$DW$132, DW_AT_name("timeout")
	.dwattr $C$DW$132, DW_AT_TI_symbol_name("timeout")
	.dwattr $C$DW$132, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$132, DW_AT_location[DW_OP_breg1 0]

$C$DW$133	.dwtag  DW_TAG_variable
	.dwattr $C$DW$133, DW_AT_name("baseAddress")
	.dwattr $C$DW$133, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$133, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$133, DW_AT_location[DW_OP_breg1 4]

$C$DW$134	.dwtag  DW_TAG_variable
	.dwattr $C$DW$134, DW_AT_name("txData")
	.dwattr $C$DW$134, DW_AT_TI_symbol_name("txData")
	.dwattr $C$DW$134, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$134, DW_AT_location[DW_OP_breg1 6]

        MOV.W     r14,0(SP)             ; [] |324| 
        MOV.W     r15,2(SP)             ; [] |324| 
        MOV.B     r13,6(SP)             ; [] |324| 
        MOV.W     r12,4(SP)             ; [] |324| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 326,column 5,is_stmt,isa 0
        BIT.B     #2,42(r12)            ; [] |326| 
        JNE       $C$L21                ; [] |326| 
                                          ; [] |326| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 328,column 9,is_stmt,isa 0
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP $C$L19
;*
;*   Loop source line                : 328
;*   Loop closing brace source line  : 328
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
$C$L19:    
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 328,column 16,is_stmt,isa 0
        BIT.B     #2,44(r12)            ; [] |328| 
        JNE       $C$L20                ; [] |328| 
                                          ; [] |328| 
;* --------------------------------------------------------------------------*
        SUB.W     #1,0(SP)              ; [] |328| 
        SUBC.W    #0,2(SP)              ; [] |328| 
        JNE       $C$L19                ; [] |328| 
                                          ; [] |328| 
;* --------------------------------------------------------------------------*
        TST.W     0(SP)                 ; [] |328| 
        JNE       $C$L19                ; [] |328| 
                                          ; [] |328| 
;* --------------------------------------------------------------------------*
$C$L20:    
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 331,column 9,is_stmt,isa 0
        TST.W     2(SP)                 ; [] |331| 
        JNE       $C$L21                ; [] |331| 
                                          ; [] |331| 
;* --------------------------------------------------------------------------*
        TST.W     0(SP)                 ; [] |331| 
        JNE       $C$L21                ; [] |331| 
                                          ; [] |331| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 332,column 13,is_stmt,isa 0
        MOV.B     #0,r12                ; [] |332| 
        JMP       $C$L22                ; [] |332| 
                                          ; [] |332| 
;* --------------------------------------------------------------------------*
$C$L21:    
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 337,column 5,is_stmt,isa 0
        MOV.B     6(SP),14(r12)         ; [] |337| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 339,column 5,is_stmt,isa 0
        MOV.B     #1,r12                ; [] |339| 
;* --------------------------------------------------------------------------*
$C$L22:    
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 340,column 1,is_stmt,isa 0
        ADD.W     #8,SP                 ; [] 
	.dwcfi	cfa_offset, 2
$C$DW$135	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$135, DW_AT_low_pc(0x00)
	.dwattr $C$DW$135, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$128, DW_AT_TI_end_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$128, DW_AT_TI_end_line(0x154)
	.dwattr $C$DW$128, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$128

	.sect	".text:USCI_B_I2C_masterSendMultiByteFinish"
	.clink
	.global	USCI_B_I2C_masterSendMultiByteFinish

$C$DW$136	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$136, DW_AT_name("USCI_B_I2C_masterSendMultiByteFinish")
	.dwattr $C$DW$136, DW_AT_low_pc(USCI_B_I2C_masterSendMultiByteFinish)
	.dwattr $C$DW$136, DW_AT_high_pc(0x00)
	.dwattr $C$DW$136, DW_AT_TI_symbol_name("USCI_B_I2C_masterSendMultiByteFinish")
	.dwattr $C$DW$136, DW_AT_external
	.dwattr $C$DW$136, DW_AT_TI_begin_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$136, DW_AT_TI_begin_line(0x156)
	.dwattr $C$DW$136, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$136, DW_AT_decl_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$136, DW_AT_decl_line(0x156)
	.dwattr $C$DW$136, DW_AT_decl_column(0x06)
	.dwattr $C$DW$136, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 345,column 1,is_stmt,address USCI_B_I2C_masterSendMultiByteFinish,isa 0

	.dwfde $C$DW$CIE, USCI_B_I2C_masterSendMultiByteFinish
$C$DW$137	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$137, DW_AT_name("baseAddress")
	.dwattr $C$DW$137, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$137, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$137, DW_AT_location[DW_OP_reg12]

$C$DW$138	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$138, DW_AT_name("txData")
	.dwattr $C$DW$138, DW_AT_TI_symbol_name("txData")
	.dwattr $C$DW$138, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$138, DW_AT_location[DW_OP_reg13]


;*****************************************************************************
;* FUNCTION NAME: USCI_B_I2C_masterSendMultiByteFinish                       *
;*                                                                           *
;*   Regs Modified     : SP,SR,r15                                           *
;*   Regs Used         : SP,SR,r12,r13,r15                                   *
;*   Local Frame Size  : 0 Args + 4 Auto + 0 Save = 4 byte                   *
;*****************************************************************************
USCI_B_I2C_masterSendMultiByteFinish:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
        SUB.W     #4,SP                 ; [] 
	.dwcfi	cfa_offset, 6
$C$DW$139	.dwtag  DW_TAG_variable
	.dwattr $C$DW$139, DW_AT_name("baseAddress")
	.dwattr $C$DW$139, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$139, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$139, DW_AT_location[DW_OP_breg1 0]

$C$DW$140	.dwtag  DW_TAG_variable
	.dwattr $C$DW$140, DW_AT_name("txData")
	.dwattr $C$DW$140, DW_AT_TI_symbol_name("txData")
	.dwattr $C$DW$140, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$140, DW_AT_location[DW_OP_breg1 2]

        MOV.B     r13,2(SP)             ; [] |345| 
        MOV.W     r12,0(SP)             ; [] |345| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 347,column 5,is_stmt,isa 0
        BIT.B     #2,42(r12)            ; [] |347| 
        JNE       $C$L24                ; [] |347| 
                                          ; [] |347| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 349,column 9,is_stmt,isa 0
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP $C$L23
;*
;*   Loop source line                : 349
;*   Loop closing brace source line  : 349
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
$C$L23:    
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 349,column 16,is_stmt,isa 0
        BIT.B     #2,44(r12)            ; [] |349| 
        JEQ       $C$L23                ; [] |349| 
                                          ; [] |349| 
;* --------------------------------------------------------------------------*
$C$L24:    
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 353,column 5,is_stmt,isa 0
        MOV.B     2(SP),14(r12)         ; [] |353| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 356,column 5,is_stmt,isa 0
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP $C$L25
;*
;*   Loop source line                : 356
;*   Loop closing brace source line  : 356
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
$C$L25:    
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 356,column 12,is_stmt,isa 0
        MOV.W     0(SP),r15             ; [] |356| 
        BIT.B     #2,44(r15)            ; [] |356| 
        JEQ       $C$L25                ; [] |356| 
                                          ; [] |356| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 359,column 5,is_stmt,isa 0
        MOV.W     0(SP),r15             ; [] |359| 
        OR.B      #4,0(r15)             ; [] |359| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 360,column 1,is_stmt,isa 0
        ADD.W     #4,SP                 ; [] 
	.dwcfi	cfa_offset, 2
$C$DW$141	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$141, DW_AT_low_pc(0x00)
	.dwattr $C$DW$141, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$136, DW_AT_TI_end_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$136, DW_AT_TI_end_line(0x168)
	.dwattr $C$DW$136, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$136

	.sect	".text:USCI_B_I2C_masterSendMultiByteFinishWithTimeout"
	.clink
	.global	USCI_B_I2C_masterSendMultiByteFinishWithTimeout

$C$DW$142	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$142, DW_AT_name("USCI_B_I2C_masterSendMultiByteFinishWithTimeout")
	.dwattr $C$DW$142, DW_AT_low_pc(USCI_B_I2C_masterSendMultiByteFinishWithTimeout)
	.dwattr $C$DW$142, DW_AT_high_pc(0x00)
	.dwattr $C$DW$142, DW_AT_TI_symbol_name("USCI_B_I2C_masterSendMultiByteFinishWithTimeout")
	.dwattr $C$DW$142, DW_AT_external
	.dwattr $C$DW$142, DW_AT_type(*$C$DW$T$151)
	.dwattr $C$DW$142, DW_AT_TI_begin_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$142, DW_AT_TI_begin_line(0x16a)
	.dwattr $C$DW$142, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$142, DW_AT_decl_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$142, DW_AT_decl_line(0x16a)
	.dwattr $C$DW$142, DW_AT_decl_column(0x06)
	.dwattr $C$DW$142, DW_AT_TI_max_frame_size(0x0e)
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 366,column 1,is_stmt,address USCI_B_I2C_masterSendMultiByteFinishWithTimeout,isa 0

	.dwfde $C$DW$CIE, USCI_B_I2C_masterSendMultiByteFinishWithTimeout
$C$DW$143	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$143, DW_AT_name("baseAddress")
	.dwattr $C$DW$143, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$143, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$143, DW_AT_location[DW_OP_reg12]

$C$DW$144	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$144, DW_AT_name("txData")
	.dwattr $C$DW$144, DW_AT_TI_symbol_name("txData")
	.dwattr $C$DW$144, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$144, DW_AT_location[DW_OP_reg13]

$C$DW$145	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$145, DW_AT_name("timeout")
	.dwattr $C$DW$145, DW_AT_TI_symbol_name("timeout")
	.dwattr $C$DW$145, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$145, DW_AT_location[DW_OP_reg14]


;*****************************************************************************
;* FUNCTION NAME: USCI_B_I2C_masterSendMultiByteFinishWithTimeout            *
;*                                                                           *
;*   Regs Modified     : SP,SR,r12,r15                                       *
;*   Regs Used         : SP,SR,r12,r13,r14,r15                               *
;*   Local Frame Size  : 0 Args + 12 Auto + 0 Save = 12 byte                 *
;*****************************************************************************
USCI_B_I2C_masterSendMultiByteFinishWithTimeout:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
        SUB.W     #12,SP                ; [] 
	.dwcfi	cfa_offset, 14
$C$DW$146	.dwtag  DW_TAG_variable
	.dwattr $C$DW$146, DW_AT_name("timeout")
	.dwattr $C$DW$146, DW_AT_TI_symbol_name("timeout")
	.dwattr $C$DW$146, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$146, DW_AT_location[DW_OP_breg1 0]

$C$DW$147	.dwtag  DW_TAG_variable
	.dwattr $C$DW$147, DW_AT_name("timeout2")
	.dwattr $C$DW$147, DW_AT_TI_symbol_name("timeout2")
	.dwattr $C$DW$147, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$147, DW_AT_location[DW_OP_breg1 4]

$C$DW$148	.dwtag  DW_TAG_variable
	.dwattr $C$DW$148, DW_AT_name("baseAddress")
	.dwattr $C$DW$148, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$148, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$148, DW_AT_location[DW_OP_breg1 8]

$C$DW$149	.dwtag  DW_TAG_variable
	.dwattr $C$DW$149, DW_AT_name("txData")
	.dwattr $C$DW$149, DW_AT_TI_symbol_name("txData")
	.dwattr $C$DW$149, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$149, DW_AT_location[DW_OP_breg1 10]

        MOV.W     r14,0(SP)             ; [] |366| 
        MOV.W     r15,2(SP)             ; [] |366| 
        MOV.B     r13,10(SP)            ; [] |366| 
        MOV.W     r12,8(SP)             ; [] |366| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 367,column 23,is_stmt,isa 0
        MOV.W     0(SP),4(SP)           ; [] |367| 
        MOV.W     2(SP),6(SP)           ; [] |367| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 370,column 5,is_stmt,isa 0
        BIT.B     #2,42(r12)            ; [] |370| 
        JNE       $C$L28                ; [] |370| 
                                          ; [] |370| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 372,column 9,is_stmt,isa 0
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP $C$L26
;*
;*   Loop source line                : 372
;*   Loop closing brace source line  : 372
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
$C$L26:    
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 372,column 16,is_stmt,isa 0
        BIT.B     #2,44(r12)            ; [] |372| 
        JNE       $C$L27                ; [] |372| 
                                          ; [] |372| 
;* --------------------------------------------------------------------------*
        SUB.W     #1,0(SP)              ; [] |372| 
        SUBC.W    #0,2(SP)              ; [] |372| 
        JNE       $C$L26                ; [] |372| 
                                          ; [] |372| 
;* --------------------------------------------------------------------------*
        TST.W     0(SP)                 ; [] |372| 
        JNE       $C$L26                ; [] |372| 
                                          ; [] |372| 
;* --------------------------------------------------------------------------*
$C$L27:    
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 375,column 9,is_stmt,isa 0
        TST.W     2(SP)                 ; [] |375| 
        JNE       $C$L28                ; [] |375| 
                                          ; [] |375| 
;* --------------------------------------------------------------------------*
        TST.W     0(SP)                 ; [] |375| 
        JNE       $C$L28                ; [] |375| 
                                          ; [] |375| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 376,column 13,is_stmt,isa 0
        MOV.B     #0,r12                ; [] |376| 
        JMP       $C$L32                ; [] |376| 
                                          ; [] |376| 
;* --------------------------------------------------------------------------*
$C$L28:    
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 381,column 5,is_stmt,isa 0
        MOV.B     10(SP),14(r12)        ; [] |381| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 384,column 5,is_stmt,isa 0
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP $C$L29
;*
;*   Loop source line                : 384
;*   Loop closing brace source line  : 384
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
$C$L29:    
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 384,column 12,is_stmt,isa 0
        MOV.W     8(SP),r15             ; [] |384| 
        BIT.B     #2,44(r15)            ; [] |384| 
        JNE       $C$L30                ; [] |384| 
                                          ; [] |384| 
;* --------------------------------------------------------------------------*
        SUB.W     #1,4(SP)              ; [] |384| 
        SUBC.W    #0,6(SP)              ; [] |384| 
        JNE       $C$L29                ; [] |384| 
                                          ; [] |384| 
;* --------------------------------------------------------------------------*
        TST.W     4(SP)                 ; [] |384| 
        JNE       $C$L29                ; [] |384| 
                                          ; [] |384| 
;* --------------------------------------------------------------------------*
$C$L30:    
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 387,column 5,is_stmt,isa 0
        TST.W     6(SP)                 ; [] |387| 
        JNE       $C$L31                ; [] |387| 
                                          ; [] |387| 
;* --------------------------------------------------------------------------*
        TST.W     4(SP)                 ; [] |387| 
        JNE       $C$L31                ; [] |387| 
                                          ; [] |387| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 388,column 9,is_stmt,isa 0
        MOV.B     #0,r12                ; [] |388| 
        JMP       $C$L32                ; [] |388| 
                                          ; [] |388| 
;* --------------------------------------------------------------------------*
$C$L31:    
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 392,column 5,is_stmt,isa 0
        MOV.W     8(SP),r15             ; [] |392| 
        OR.B      #4,0(r15)             ; [] |392| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 394,column 5,is_stmt,isa 0
        MOV.B     #1,r12                ; [] |394| 
;* --------------------------------------------------------------------------*
$C$L32:    
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 395,column 1,is_stmt,isa 0
        ADD.W     #12,SP                ; [] 
	.dwcfi	cfa_offset, 2
$C$DW$150	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$150, DW_AT_low_pc(0x00)
	.dwattr $C$DW$150, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$142, DW_AT_TI_end_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$142, DW_AT_TI_end_line(0x18b)
	.dwattr $C$DW$142, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$142

	.sect	".text:USCI_B_I2C_masterSendMultiByteStop"
	.clink
	.global	USCI_B_I2C_masterSendMultiByteStop

$C$DW$151	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$151, DW_AT_name("USCI_B_I2C_masterSendMultiByteStop")
	.dwattr $C$DW$151, DW_AT_low_pc(USCI_B_I2C_masterSendMultiByteStop)
	.dwattr $C$DW$151, DW_AT_high_pc(0x00)
	.dwattr $C$DW$151, DW_AT_TI_symbol_name("USCI_B_I2C_masterSendMultiByteStop")
	.dwattr $C$DW$151, DW_AT_external
	.dwattr $C$DW$151, DW_AT_TI_begin_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$151, DW_AT_TI_begin_line(0x18d)
	.dwattr $C$DW$151, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$151, DW_AT_decl_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$151, DW_AT_decl_line(0x18d)
	.dwattr $C$DW$151, DW_AT_decl_column(0x06)
	.dwattr $C$DW$151, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 398,column 1,is_stmt,address USCI_B_I2C_masterSendMultiByteStop,isa 0

	.dwfde $C$DW$CIE, USCI_B_I2C_masterSendMultiByteStop
$C$DW$152	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$152, DW_AT_name("baseAddress")
	.dwattr $C$DW$152, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$152, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$152, DW_AT_location[DW_OP_reg12]


;*****************************************************************************
;* FUNCTION NAME: USCI_B_I2C_masterSendMultiByteStop                         *
;*                                                                           *
;*   Regs Modified     : SP,SR,r15                                           *
;*   Regs Used         : SP,SR,r12,r15                                       *
;*   Local Frame Size  : 0 Args + 2 Auto + 0 Save = 2 byte                   *
;*****************************************************************************
USCI_B_I2C_masterSendMultiByteStop:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
        SUB.W     #2,SP                 ; [] 
	.dwcfi	cfa_offset, 4
$C$DW$153	.dwtag  DW_TAG_variable
	.dwattr $C$DW$153, DW_AT_name("baseAddress")
	.dwattr $C$DW$153, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$153, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$153, DW_AT_location[DW_OP_breg1 0]

        MOV.W     r12,0(SP)             ; [] |398| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 400,column 5,is_stmt,isa 0
        BIT.B     #2,42(r12)            ; [] |400| 
        JNE       $C$L34                ; [] |400| 
                                          ; [] |400| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 402,column 9,is_stmt,isa 0
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP $C$L33
;*
;*   Loop source line                : 402
;*   Loop closing brace source line  : 402
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
$C$L33:    
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 402,column 16,is_stmt,isa 0
        BIT.B     #2,44(r12)            ; [] |402| 
        JEQ       $C$L33                ; [] |402| 
                                          ; [] |402| 
;* --------------------------------------------------------------------------*
$C$L34:    
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 406,column 5,is_stmt,isa 0
        MOV.W     0(SP),r15             ; [] |406| 
        OR.B      #4,0(r15)             ; [] |406| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 407,column 1,is_stmt,isa 0
        ADD.W     #2,SP                 ; [] 
	.dwcfi	cfa_offset, 2
$C$DW$154	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$154, DW_AT_low_pc(0x00)
	.dwattr $C$DW$154, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$151, DW_AT_TI_end_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$151, DW_AT_TI_end_line(0x197)
	.dwattr $C$DW$151, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$151

	.sect	".text:USCI_B_I2C_masterSendMultiByteStopWithTimeout"
	.clink
	.global	USCI_B_I2C_masterSendMultiByteStopWithTimeout

$C$DW$155	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$155, DW_AT_name("USCI_B_I2C_masterSendMultiByteStopWithTimeout")
	.dwattr $C$DW$155, DW_AT_low_pc(USCI_B_I2C_masterSendMultiByteStopWithTimeout)
	.dwattr $C$DW$155, DW_AT_high_pc(0x00)
	.dwattr $C$DW$155, DW_AT_TI_symbol_name("USCI_B_I2C_masterSendMultiByteStopWithTimeout")
	.dwattr $C$DW$155, DW_AT_external
	.dwattr $C$DW$155, DW_AT_type(*$C$DW$T$151)
	.dwattr $C$DW$155, DW_AT_TI_begin_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$155, DW_AT_TI_begin_line(0x199)
	.dwattr $C$DW$155, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$155, DW_AT_decl_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$155, DW_AT_decl_line(0x199)
	.dwattr $C$DW$155, DW_AT_decl_column(0x06)
	.dwattr $C$DW$155, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 411,column 1,is_stmt,address USCI_B_I2C_masterSendMultiByteStopWithTimeout,isa 0

	.dwfde $C$DW$CIE, USCI_B_I2C_masterSendMultiByteStopWithTimeout
$C$DW$156	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$156, DW_AT_name("baseAddress")
	.dwattr $C$DW$156, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$156, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$156, DW_AT_location[DW_OP_reg12]

$C$DW$157	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$157, DW_AT_name("timeout")
	.dwattr $C$DW$157, DW_AT_TI_symbol_name("timeout")
	.dwattr $C$DW$157, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$157, DW_AT_location[DW_OP_reg13]


;*****************************************************************************
;* FUNCTION NAME: USCI_B_I2C_masterSendMultiByteStopWithTimeout              *
;*                                                                           *
;*   Regs Modified     : SP,SR,r12,r15                                       *
;*   Regs Used         : SP,SR,r12,r13,r14,r15                               *
;*   Local Frame Size  : 0 Args + 6 Auto + 0 Save = 6 byte                   *
;*****************************************************************************
USCI_B_I2C_masterSendMultiByteStopWithTimeout:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
        SUB.W     #6,SP                 ; [] 
	.dwcfi	cfa_offset, 8
$C$DW$158	.dwtag  DW_TAG_variable
	.dwattr $C$DW$158, DW_AT_name("timeout")
	.dwattr $C$DW$158, DW_AT_TI_symbol_name("timeout")
	.dwattr $C$DW$158, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$158, DW_AT_location[DW_OP_breg1 0]

$C$DW$159	.dwtag  DW_TAG_variable
	.dwattr $C$DW$159, DW_AT_name("baseAddress")
	.dwattr $C$DW$159, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$159, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$159, DW_AT_location[DW_OP_breg1 4]

        MOV.W     r13,0(SP)             ; [] |411| 
        MOV.W     r14,2(SP)             ; [] |411| 
        MOV.W     r12,4(SP)             ; [] |411| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 413,column 5,is_stmt,isa 0
        BIT.B     #2,42(r12)            ; [] |413| 
        JNE       $C$L37                ; [] |413| 
                                          ; [] |413| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 415,column 9,is_stmt,isa 0
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP $C$L35
;*
;*   Loop source line                : 415
;*   Loop closing brace source line  : 415
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
$C$L35:    
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 415,column 16,is_stmt,isa 0
        BIT.B     #2,44(r12)            ; [] |415| 
        JNE       $C$L36                ; [] |415| 
                                          ; [] |415| 
;* --------------------------------------------------------------------------*
        SUB.W     #1,0(SP)              ; [] |415| 
        SUBC.W    #0,2(SP)              ; [] |415| 
        JNE       $C$L35                ; [] |415| 
                                          ; [] |415| 
;* --------------------------------------------------------------------------*
        TST.W     0(SP)                 ; [] |415| 
        JNE       $C$L35                ; [] |415| 
                                          ; [] |415| 
;* --------------------------------------------------------------------------*
$C$L36:    
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 418,column 9,is_stmt,isa 0
        TST.W     2(SP)                 ; [] |418| 
        JNE       $C$L37                ; [] |418| 
                                          ; [] |418| 
;* --------------------------------------------------------------------------*
        TST.W     0(SP)                 ; [] |418| 
        JNE       $C$L37                ; [] |418| 
                                          ; [] |418| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 419,column 13,is_stmt,isa 0
        MOV.B     #0,r12                ; [] |419| 
        JMP       $C$L38                ; [] |419| 
                                          ; [] |419| 
;* --------------------------------------------------------------------------*
$C$L37:    
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 424,column 5,is_stmt,isa 0
        MOV.W     4(SP),r15             ; [] |424| 
        OR.B      #4,0(r15)             ; [] |424| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 426,column 5,is_stmt,isa 0
        MOV.B     #1,r12                ; [] |426| 
;* --------------------------------------------------------------------------*
$C$L38:    
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 427,column 1,is_stmt,isa 0
        ADD.W     #6,SP                 ; [] 
	.dwcfi	cfa_offset, 2
$C$DW$160	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$160, DW_AT_low_pc(0x00)
	.dwattr $C$DW$160, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$155, DW_AT_TI_end_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$155, DW_AT_TI_end_line(0x1ab)
	.dwattr $C$DW$155, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$155

	.sect	".text:USCI_B_I2C_masterReceiveMultiByteStart"
	.clink
	.global	USCI_B_I2C_masterReceiveMultiByteStart

$C$DW$161	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$161, DW_AT_name("USCI_B_I2C_masterReceiveMultiByteStart")
	.dwattr $C$DW$161, DW_AT_low_pc(USCI_B_I2C_masterReceiveMultiByteStart)
	.dwattr $C$DW$161, DW_AT_high_pc(0x00)
	.dwattr $C$DW$161, DW_AT_TI_symbol_name("USCI_B_I2C_masterReceiveMultiByteStart")
	.dwattr $C$DW$161, DW_AT_external
	.dwattr $C$DW$161, DW_AT_TI_begin_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$161, DW_AT_TI_begin_line(0x1ad)
	.dwattr $C$DW$161, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$161, DW_AT_decl_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$161, DW_AT_decl_line(0x1ad)
	.dwattr $C$DW$161, DW_AT_decl_column(0x06)
	.dwattr $C$DW$161, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 430,column 1,is_stmt,address USCI_B_I2C_masterReceiveMultiByteStart,isa 0

	.dwfde $C$DW$CIE, USCI_B_I2C_masterReceiveMultiByteStart
$C$DW$162	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$162, DW_AT_name("baseAddress")
	.dwattr $C$DW$162, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$162, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$162, DW_AT_location[DW_OP_reg12]


;*****************************************************************************
;* FUNCTION NAME: USCI_B_I2C_masterReceiveMultiByteStart                     *
;*                                                                           *
;*   Regs Modified     : SP,SR,r15                                           *
;*   Regs Used         : SP,SR,r12,r15                                       *
;*   Local Frame Size  : 0 Args + 2 Auto + 0 Save = 2 byte                   *
;*****************************************************************************
USCI_B_I2C_masterReceiveMultiByteStart:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
        SUB.W     #2,SP                 ; [] 
	.dwcfi	cfa_offset, 4
$C$DW$163	.dwtag  DW_TAG_variable
	.dwattr $C$DW$163, DW_AT_name("baseAddress")
	.dwattr $C$DW$163, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$163, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$163, DW_AT_location[DW_OP_breg1 0]

        MOV.W     r12,0(SP)             ; [] |430| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 432,column 5,is_stmt,isa 0
        MOV.W     0(SP),r15             ; [] |432| 
        AND.B     #239,0(r15)           ; [] |432| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 434,column 5,is_stmt,isa 0
        MOV.W     0(SP),r15             ; [] |434| 
        OR.B      #2,0(r15)             ; [] |434| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 435,column 1,is_stmt,isa 0
        ADD.W     #2,SP                 ; [] 
	.dwcfi	cfa_offset, 2
$C$DW$164	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$164, DW_AT_low_pc(0x00)
	.dwattr $C$DW$164, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$161, DW_AT_TI_end_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$161, DW_AT_TI_end_line(0x1b3)
	.dwattr $C$DW$161, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$161

	.sect	".text:USCI_B_I2C_masterReceiveMultiByteNext"
	.clink
	.global	USCI_B_I2C_masterReceiveMultiByteNext

$C$DW$165	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$165, DW_AT_name("USCI_B_I2C_masterReceiveMultiByteNext")
	.dwattr $C$DW$165, DW_AT_low_pc(USCI_B_I2C_masterReceiveMultiByteNext)
	.dwattr $C$DW$165, DW_AT_high_pc(0x00)
	.dwattr $C$DW$165, DW_AT_TI_symbol_name("USCI_B_I2C_masterReceiveMultiByteNext")
	.dwattr $C$DW$165, DW_AT_external
	.dwattr $C$DW$165, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$165, DW_AT_TI_begin_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$165, DW_AT_TI_begin_line(0x1b5)
	.dwattr $C$DW$165, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$165, DW_AT_decl_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$165, DW_AT_decl_line(0x1b5)
	.dwattr $C$DW$165, DW_AT_decl_column(0x09)
	.dwattr $C$DW$165, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 438,column 1,is_stmt,address USCI_B_I2C_masterReceiveMultiByteNext,isa 0

	.dwfde $C$DW$CIE, USCI_B_I2C_masterReceiveMultiByteNext
$C$DW$166	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$166, DW_AT_name("baseAddress")
	.dwattr $C$DW$166, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$166, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$166, DW_AT_location[DW_OP_reg12]


;*****************************************************************************
;* FUNCTION NAME: USCI_B_I2C_masterReceiveMultiByteNext                      *
;*                                                                           *
;*   Regs Modified     : SP,SR,r12                                           *
;*   Regs Used         : SP,SR,r12                                           *
;*   Local Frame Size  : 0 Args + 2 Auto + 0 Save = 2 byte                   *
;*****************************************************************************
USCI_B_I2C_masterReceiveMultiByteNext:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
        SUB.W     #2,SP                 ; [] 
	.dwcfi	cfa_offset, 4
$C$DW$167	.dwtag  DW_TAG_variable
	.dwattr $C$DW$167, DW_AT_name("baseAddress")
	.dwattr $C$DW$167, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$167, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$167, DW_AT_location[DW_OP_breg1 0]

        MOV.W     r12,0(SP)             ; [] |438| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 439,column 5,is_stmt,isa 0
        MOV.B     12(r12),r12           ; [] |439| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 440,column 1,is_stmt,isa 0
        ADD.W     #2,SP                 ; [] 
	.dwcfi	cfa_offset, 2
$C$DW$168	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$168, DW_AT_low_pc(0x00)
	.dwattr $C$DW$168, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$165, DW_AT_TI_end_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$165, DW_AT_TI_end_line(0x1b8)
	.dwattr $C$DW$165, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$165

	.sect	".text:USCI_B_I2C_masterReceiveMultiByteFinish"
	.clink
	.global	USCI_B_I2C_masterReceiveMultiByteFinish

$C$DW$169	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$169, DW_AT_name("USCI_B_I2C_masterReceiveMultiByteFinish")
	.dwattr $C$DW$169, DW_AT_low_pc(USCI_B_I2C_masterReceiveMultiByteFinish)
	.dwattr $C$DW$169, DW_AT_high_pc(0x00)
	.dwattr $C$DW$169, DW_AT_TI_symbol_name("USCI_B_I2C_masterReceiveMultiByteFinish")
	.dwattr $C$DW$169, DW_AT_external
	.dwattr $C$DW$169, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$169, DW_AT_TI_begin_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$169, DW_AT_TI_begin_line(0x1ba)
	.dwattr $C$DW$169, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$169, DW_AT_decl_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$169, DW_AT_decl_line(0x1ba)
	.dwattr $C$DW$169, DW_AT_decl_column(0x09)
	.dwattr $C$DW$169, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 443,column 1,is_stmt,address USCI_B_I2C_masterReceiveMultiByteFinish,isa 0

	.dwfde $C$DW$CIE, USCI_B_I2C_masterReceiveMultiByteFinish
$C$DW$170	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$170, DW_AT_name("baseAddress")
	.dwattr $C$DW$170, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$170, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$170, DW_AT_location[DW_OP_reg12]


;*****************************************************************************
;* FUNCTION NAME: USCI_B_I2C_masterReceiveMultiByteFinish                    *
;*                                                                           *
;*   Regs Modified     : SP,SR,r12,r13,r14,r15                               *
;*   Regs Used         : SP,SR,r12,r13,r14,r15                               *
;*   Local Frame Size  : 0 Args + 4 Auto + 0 Save = 4 byte                   *
;*****************************************************************************
USCI_B_I2C_masterReceiveMultiByteFinish:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
        SUB.W     #4,SP                 ; [] 
	.dwcfi	cfa_offset, 6
$C$DW$171	.dwtag  DW_TAG_variable
	.dwattr $C$DW$171, DW_AT_name("baseAddress")
	.dwattr $C$DW$171, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$171, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$171, DW_AT_location[DW_OP_breg1 0]

$C$DW$172	.dwtag  DW_TAG_variable
	.dwattr $C$DW$172, DW_AT_name("receiveData")
	.dwattr $C$DW$172, DW_AT_TI_symbol_name("receiveData")
	.dwattr $C$DW$172, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$172, DW_AT_location[DW_OP_breg1 2]

        MOV.W     r12,0(SP)             ; [] |443| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 447,column 5,is_stmt,isa 0
        MOV.W     0(SP),r15             ; [] |447| 
        OR.B      #4,0(r15)             ; [] |447| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 451,column 5,is_stmt,isa 0
        MOV.W     0(SP),r15             ; [] |451| 
        MOV.B     12(r15),2(SP)         ; [] |451| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 454,column 5,is_stmt,isa 0
        MOV.W     #4,r13                ; [] |454| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP $C$L39
;*
;*   Loop source line                : 454
;*   Loop closing brace source line  : 454
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
$C$L39:    
        MOV.W     0(SP),r14             ; [] |454| 
        BIT.B     @r14,r13              ; [] |454| 
        JNE       $C$L39                ; [] |454| 
                                          ; [] |454| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 457,column 5,is_stmt,isa 0
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP $C$L40
;*
;*   Loop source line                : 457
;*   Loop closing brace source line  : 457
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
$C$L40:    
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 457,column 12,is_stmt,isa 0
        BIT.B     #1,44(r15)            ; [] |457| 
        JEQ       $C$L40                ; [] |457| 
                                          ; [] |457| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 459,column 5,is_stmt,isa 0
        MOV.B     2(SP),r12             ; [] |459| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 460,column 1,is_stmt,isa 0
        ADD.W     #4,SP                 ; [] 
	.dwcfi	cfa_offset, 2
$C$DW$173	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$173, DW_AT_low_pc(0x00)
	.dwattr $C$DW$173, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$169, DW_AT_TI_end_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$169, DW_AT_TI_end_line(0x1cc)
	.dwattr $C$DW$169, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$169

	.sect	".text:USCI_B_I2C_masterReceiveMultiByteFinishWithTimeout"
	.clink
	.global	USCI_B_I2C_masterReceiveMultiByteFinishWithTimeout

$C$DW$174	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$174, DW_AT_name("USCI_B_I2C_masterReceiveMultiByteFinishWithTimeout")
	.dwattr $C$DW$174, DW_AT_low_pc(USCI_B_I2C_masterReceiveMultiByteFinishWithTimeout)
	.dwattr $C$DW$174, DW_AT_high_pc(0x00)
	.dwattr $C$DW$174, DW_AT_TI_symbol_name("USCI_B_I2C_masterReceiveMultiByteFinishWithTimeout")
	.dwattr $C$DW$174, DW_AT_external
	.dwattr $C$DW$174, DW_AT_type(*$C$DW$T$151)
	.dwattr $C$DW$174, DW_AT_TI_begin_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$174, DW_AT_TI_begin_line(0x1ce)
	.dwattr $C$DW$174, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$174, DW_AT_decl_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$174, DW_AT_decl_line(0x1ce)
	.dwattr $C$DW$174, DW_AT_decl_column(0x06)
	.dwattr $C$DW$174, DW_AT_TI_max_frame_size(0x0e)
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 466,column 1,is_stmt,address USCI_B_I2C_masterReceiveMultiByteFinishWithTimeout,isa 0

	.dwfde $C$DW$CIE, USCI_B_I2C_masterReceiveMultiByteFinishWithTimeout
$C$DW$175	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$175, DW_AT_name("baseAddress")
	.dwattr $C$DW$175, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$175, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$175, DW_AT_location[DW_OP_reg12]

$C$DW$176	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$176, DW_AT_name("rxData")
	.dwattr $C$DW$176, DW_AT_TI_symbol_name("rxData")
	.dwattr $C$DW$176, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$176, DW_AT_location[DW_OP_reg13]

$C$DW$177	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$177, DW_AT_name("timeout")
	.dwattr $C$DW$177, DW_AT_TI_symbol_name("timeout")
	.dwattr $C$DW$177, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$177, DW_AT_location[DW_OP_reg14]


;*****************************************************************************
;* FUNCTION NAME: USCI_B_I2C_masterReceiveMultiByteFinishWithTimeout         *
;*                                                                           *
;*   Regs Modified     : SP,SR,r12,r14,r15                                   *
;*   Regs Used         : SP,SR,r12,r13,r14,r15                               *
;*   Local Frame Size  : 0 Args + 12 Auto + 0 Save = 12 byte                 *
;*****************************************************************************
USCI_B_I2C_masterReceiveMultiByteFinishWithTimeout:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
        SUB.W     #12,SP                ; [] 
	.dwcfi	cfa_offset, 14
$C$DW$178	.dwtag  DW_TAG_variable
	.dwattr $C$DW$178, DW_AT_name("timeout")
	.dwattr $C$DW$178, DW_AT_TI_symbol_name("timeout")
	.dwattr $C$DW$178, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$178, DW_AT_location[DW_OP_breg1 0]

$C$DW$179	.dwtag  DW_TAG_variable
	.dwattr $C$DW$179, DW_AT_name("timeout2")
	.dwattr $C$DW$179, DW_AT_TI_symbol_name("timeout2")
	.dwattr $C$DW$179, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$179, DW_AT_location[DW_OP_breg1 4]

$C$DW$180	.dwtag  DW_TAG_variable
	.dwattr $C$DW$180, DW_AT_name("baseAddress")
	.dwattr $C$DW$180, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$180, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$180, DW_AT_location[DW_OP_breg1 8]

$C$DW$181	.dwtag  DW_TAG_variable
	.dwattr $C$DW$181, DW_AT_name("rxData")
	.dwattr $C$DW$181, DW_AT_TI_symbol_name("rxData")
	.dwattr $C$DW$181, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$181, DW_AT_location[DW_OP_breg1 10]

        MOV.W     r14,0(SP)             ; [] |466| 
        MOV.W     r15,2(SP)             ; [] |466| 
        MOV.W     r13,10(SP)            ; [] |466| 
        MOV.W     r12,8(SP)             ; [] |466| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 467,column 23,is_stmt,isa 0
        MOV.W     0(SP),4(SP)           ; [] |467| 
        MOV.W     2(SP),6(SP)           ; [] |467| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 470,column 5,is_stmt,isa 0
        MOV.W     8(SP),r15             ; [] |470| 
        OR.B      #4,0(r15)             ; [] |470| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 474,column 5,is_stmt,isa 0
        MOV.W     8(SP),r15             ; [] |474| 
        MOV.W     10(SP),r14            ; [] |474| 
        MOV.B     12(r15),0(r14)        ; [] |474| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 477,column 5,is_stmt,isa 0
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP $C$L41
;*
;*   Loop source line                : 477
;*   Loop closing brace source line  : 477
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
$C$L41:    
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 477,column 12,is_stmt,isa 0
        MOV.W     8(SP),r15             ; [] |477| 
        MOV.W     #4,r14                ; [] |477| 
        BIT.B     @r15,r14              ; [] |477| 
        JEQ       $C$L42                ; [] |477| 
                                          ; [] |477| 
;* --------------------------------------------------------------------------*
        SUB.W     #1,0(SP)              ; [] |477| 
        SUBC.W    #0,2(SP)              ; [] |477| 
        JNE       $C$L41                ; [] |477| 
                                          ; [] |477| 
;* --------------------------------------------------------------------------*
        TST.W     0(SP)                 ; [] |477| 
        JNE       $C$L41                ; [] |477| 
                                          ; [] |477| 
;* --------------------------------------------------------------------------*
$C$L42:    
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 480,column 5,is_stmt,isa 0
        TST.W     2(SP)                 ; [] |480| 
        JNE       $C$L43                ; [] |480| 
                                          ; [] |480| 
;* --------------------------------------------------------------------------*
        TST.W     0(SP)                 ; [] |480| 
        JNE       $C$L43                ; [] |480| 
                                          ; [] |480| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 481,column 9,is_stmt,isa 0
        MOV.B     #0,r12                ; [] |481| 
        JMP       $C$L46                ; [] |481| 
                                          ; [] |481| 
;* --------------------------------------------------------------------------*
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP $C$L43
;*
;*   Loop source line                : 485
;*   Loop closing brace source line  : 485
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
$C$L43:    
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 485,column 12,is_stmt,isa 0
        MOV.W     8(SP),r15             ; [] |485| 
        BIT.B     #1,44(r15)            ; [] |485| 
        JNE       $C$L44                ; [] |485| 
                                          ; [] |485| 
;* --------------------------------------------------------------------------*
        SUB.W     #1,4(SP)              ; [] |485| 
        SUBC.W    #0,6(SP)              ; [] |485| 
        JNE       $C$L43                ; [] |485| 
                                          ; [] |485| 
;* --------------------------------------------------------------------------*
        TST.W     4(SP)                 ; [] |485| 
        JNE       $C$L43                ; [] |485| 
                                          ; [] |485| 
;* --------------------------------------------------------------------------*
$C$L44:    
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 488,column 5,is_stmt,isa 0
        TST.W     6(SP)                 ; [] |488| 
        JNE       $C$L45                ; [] |488| 
                                          ; [] |488| 
;* --------------------------------------------------------------------------*
        TST.W     4(SP)                 ; [] |488| 
        JNE       $C$L45                ; [] |488| 
                                          ; [] |488| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 489,column 9,is_stmt,isa 0
        MOV.B     #0,r12                ; [] |489| 
        JMP       $C$L46                ; [] |489| 
                                          ; [] |489| 
;* --------------------------------------------------------------------------*
$C$L45:    
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 492,column 5,is_stmt,isa 0
        MOV.B     #1,r12                ; [] |492| 
;* --------------------------------------------------------------------------*
$C$L46:    
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 493,column 1,is_stmt,isa 0
        ADD.W     #12,SP                ; [] 
	.dwcfi	cfa_offset, 2
$C$DW$182	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$182, DW_AT_low_pc(0x00)
	.dwattr $C$DW$182, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$174, DW_AT_TI_end_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$174, DW_AT_TI_end_line(0x1ed)
	.dwattr $C$DW$174, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$174

	.sect	".text:USCI_B_I2C_masterReceiveMultiByteStop"
	.clink
	.global	USCI_B_I2C_masterReceiveMultiByteStop

$C$DW$183	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$183, DW_AT_name("USCI_B_I2C_masterReceiveMultiByteStop")
	.dwattr $C$DW$183, DW_AT_low_pc(USCI_B_I2C_masterReceiveMultiByteStop)
	.dwattr $C$DW$183, DW_AT_high_pc(0x00)
	.dwattr $C$DW$183, DW_AT_TI_symbol_name("USCI_B_I2C_masterReceiveMultiByteStop")
	.dwattr $C$DW$183, DW_AT_external
	.dwattr $C$DW$183, DW_AT_TI_begin_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$183, DW_AT_TI_begin_line(0x1ef)
	.dwattr $C$DW$183, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$183, DW_AT_decl_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$183, DW_AT_decl_line(0x1ef)
	.dwattr $C$DW$183, DW_AT_decl_column(0x06)
	.dwattr $C$DW$183, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 496,column 1,is_stmt,address USCI_B_I2C_masterReceiveMultiByteStop,isa 0

	.dwfde $C$DW$CIE, USCI_B_I2C_masterReceiveMultiByteStop
$C$DW$184	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$184, DW_AT_name("baseAddress")
	.dwattr $C$DW$184, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$184, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$184, DW_AT_location[DW_OP_reg12]


;*****************************************************************************
;* FUNCTION NAME: USCI_B_I2C_masterReceiveMultiByteStop                      *
;*                                                                           *
;*   Regs Modified     : SP,SR,r15                                           *
;*   Regs Used         : SP,SR,r12,r15                                       *
;*   Local Frame Size  : 0 Args + 2 Auto + 0 Save = 2 byte                   *
;*****************************************************************************
USCI_B_I2C_masterReceiveMultiByteStop:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
        SUB.W     #2,SP                 ; [] 
	.dwcfi	cfa_offset, 4
$C$DW$185	.dwtag  DW_TAG_variable
	.dwattr $C$DW$185, DW_AT_name("baseAddress")
	.dwattr $C$DW$185, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$185, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$185, DW_AT_location[DW_OP_breg1 0]

        MOV.W     r12,0(SP)             ; [] |496| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 498,column 5,is_stmt,isa 0
        MOV.W     0(SP),r15             ; [] |498| 
        OR.B      #4,0(r15)             ; [] |498| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 499,column 1,is_stmt,isa 0
        ADD.W     #2,SP                 ; [] 
	.dwcfi	cfa_offset, 2
$C$DW$186	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$186, DW_AT_low_pc(0x00)
	.dwattr $C$DW$186, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$183, DW_AT_TI_end_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$183, DW_AT_TI_end_line(0x1f3)
	.dwattr $C$DW$183, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$183

	.sect	".text:USCI_B_I2C_masterReceiveSingleStart"
	.clink
	.global	USCI_B_I2C_masterReceiveSingleStart

$C$DW$187	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$187, DW_AT_name("USCI_B_I2C_masterReceiveSingleStart")
	.dwattr $C$DW$187, DW_AT_low_pc(USCI_B_I2C_masterReceiveSingleStart)
	.dwattr $C$DW$187, DW_AT_high_pc(0x00)
	.dwattr $C$DW$187, DW_AT_TI_symbol_name("USCI_B_I2C_masterReceiveSingleStart")
	.dwattr $C$DW$187, DW_AT_external
	.dwattr $C$DW$187, DW_AT_TI_begin_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$187, DW_AT_TI_begin_line(0x1f5)
	.dwattr $C$DW$187, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$187, DW_AT_decl_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$187, DW_AT_decl_line(0x1f5)
	.dwattr $C$DW$187, DW_AT_decl_column(0x06)
	.dwattr $C$DW$187, DW_AT_TI_max_frame_size(0x06)
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 502,column 1,is_stmt,address USCI_B_I2C_masterReceiveSingleStart,isa 0

	.dwfde $C$DW$CIE, USCI_B_I2C_masterReceiveSingleStart
$C$DW$188	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$188, DW_AT_name("baseAddress")
	.dwattr $C$DW$188, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$188, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$188, DW_AT_location[DW_OP_reg12]


;*****************************************************************************
;* FUNCTION NAME: USCI_B_I2C_masterReceiveSingleStart                        *
;*                                                                           *
;*   Regs Modified     : SP,SR,r14,r15                                       *
;*   Regs Used         : SP,SR,r12,r14,r15                                   *
;*   Local Frame Size  : 0 Args + 4 Auto + 0 Save = 4 byte                   *
;*****************************************************************************
USCI_B_I2C_masterReceiveSingleStart:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
        SUB.W     #4,SP                 ; [] 
	.dwcfi	cfa_offset, 6
$C$DW$189	.dwtag  DW_TAG_variable
	.dwattr $C$DW$189, DW_AT_name("baseAddress")
	.dwattr $C$DW$189, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$189, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$189, DW_AT_location[DW_OP_breg1 0]

$C$DW$190	.dwtag  DW_TAG_variable
	.dwattr $C$DW$190, DW_AT_name("gieStatus")
	.dwattr $C$DW$190, DW_AT_TI_symbol_name("gieStatus")
	.dwattr $C$DW$190, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$190, DW_AT_location[DW_OP_breg1 2]

        MOV.W     r12,0(SP)             ; [] |502| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 507,column 5,is_stmt,isa 0
        MOV.W     SR,r15                ; [] |507| 
        AND.W     #8,r15                ; [] |507| 
        MOV.W     r15,2(SP)             ; [] |507| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 510,column 5,is_stmt,isa 0
        DINT
        NOP      ; [] |510| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 513,column 5,is_stmt,isa 0
        MOV.W     0(SP),r15             ; [] |513| 
        AND.B     #239,0(r15)           ; [] |513| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 516,column 5,is_stmt,isa 0
        MOV.W     0(SP),r15             ; [] |516| 
        OR.B      #2,0(r15)             ; [] |516| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 519,column 5,is_stmt,isa 0
        MOV.W     #2,r14                ; [] |519| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP $C$L47
;*
;*   Loop source line                : 519
;*   Loop closing brace source line  : 519
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
$C$L47:    
        MOV.W     0(SP),r15             ; [] |519| 
        BIT.B     @r15,r14              ; [] |519| 
        JNE       $C$L47                ; [] |519| 
                                          ; [] |519| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 522,column 5,is_stmt,isa 0
        OR.B      #4,0(r15)             ; [] |522| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 525,column 5,is_stmt,isa 0
        BIS.W     2(SP),SR              ; [] |525| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 526,column 1,is_stmt,isa 0
        ADD.W     #4,SP                 ; [] 
	.dwcfi	cfa_offset, 2
$C$DW$191	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$191, DW_AT_low_pc(0x00)
	.dwattr $C$DW$191, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$187, DW_AT_TI_end_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$187, DW_AT_TI_end_line(0x20e)
	.dwattr $C$DW$187, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$187

	.sect	".text:USCI_B_I2C_masterReceiveSingleStartWithTimeout"
	.clink
	.global	USCI_B_I2C_masterReceiveSingleStartWithTimeout

$C$DW$192	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$192, DW_AT_name("USCI_B_I2C_masterReceiveSingleStartWithTimeout")
	.dwattr $C$DW$192, DW_AT_low_pc(USCI_B_I2C_masterReceiveSingleStartWithTimeout)
	.dwattr $C$DW$192, DW_AT_high_pc(0x00)
	.dwattr $C$DW$192, DW_AT_TI_symbol_name("USCI_B_I2C_masterReceiveSingleStartWithTimeout")
	.dwattr $C$DW$192, DW_AT_external
	.dwattr $C$DW$192, DW_AT_type(*$C$DW$T$151)
	.dwattr $C$DW$192, DW_AT_TI_begin_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$192, DW_AT_TI_begin_line(0x210)
	.dwattr $C$DW$192, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$192, DW_AT_decl_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$192, DW_AT_decl_line(0x210)
	.dwattr $C$DW$192, DW_AT_decl_column(0x06)
	.dwattr $C$DW$192, DW_AT_TI_max_frame_size(0x0a)
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 531,column 1,is_stmt,address USCI_B_I2C_masterReceiveSingleStartWithTimeout,isa 0

	.dwfde $C$DW$CIE, USCI_B_I2C_masterReceiveSingleStartWithTimeout
$C$DW$193	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$193, DW_AT_name("baseAddress")
	.dwattr $C$DW$193, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$193, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$193, DW_AT_location[DW_OP_reg12]

$C$DW$194	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$194, DW_AT_name("timeout")
	.dwattr $C$DW$194, DW_AT_TI_symbol_name("timeout")
	.dwattr $C$DW$194, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$194, DW_AT_location[DW_OP_reg13]


;*****************************************************************************
;* FUNCTION NAME: USCI_B_I2C_masterReceiveSingleStartWithTimeout             *
;*                                                                           *
;*   Regs Modified     : SP,SR,r12,r14,r15                                   *
;*   Regs Used         : SP,SR,r12,r13,r14,r15                               *
;*   Local Frame Size  : 0 Args + 8 Auto + 0 Save = 8 byte                   *
;*****************************************************************************
USCI_B_I2C_masterReceiveSingleStartWithTimeout:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
        SUB.W     #8,SP                 ; [] 
	.dwcfi	cfa_offset, 10
$C$DW$195	.dwtag  DW_TAG_variable
	.dwattr $C$DW$195, DW_AT_name("timeout")
	.dwattr $C$DW$195, DW_AT_TI_symbol_name("timeout")
	.dwattr $C$DW$195, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$195, DW_AT_location[DW_OP_breg1 0]

$C$DW$196	.dwtag  DW_TAG_variable
	.dwattr $C$DW$196, DW_AT_name("baseAddress")
	.dwattr $C$DW$196, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$196, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$196, DW_AT_location[DW_OP_breg1 4]

$C$DW$197	.dwtag  DW_TAG_variable
	.dwattr $C$DW$197, DW_AT_name("gieStatus")
	.dwattr $C$DW$197, DW_AT_TI_symbol_name("gieStatus")
	.dwattr $C$DW$197, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$197, DW_AT_location[DW_OP_breg1 6]

        MOV.W     r13,0(SP)             ; [] |531| 
        MOV.W     r14,2(SP)             ; [] |531| 
        MOV.W     r12,4(SP)             ; [] |531| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 536,column 5,is_stmt,isa 0
        MOV.W     SR,r15                ; [] |536| 
        AND.W     #8,r15                ; [] |536| 
        MOV.W     r15,6(SP)             ; [] |536| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 539,column 5,is_stmt,isa 0
        DINT
        NOP      ; [] |539| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 542,column 5,is_stmt,isa 0
        MOV.W     4(SP),r15             ; [] |542| 
        AND.B     #239,0(r15)           ; [] |542| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 545,column 5,is_stmt,isa 0
        MOV.W     4(SP),r15             ; [] |545| 
        OR.B      #2,0(r15)             ; [] |545| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 548,column 5,is_stmt,isa 0
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP $C$L48
;*
;*   Loop source line                : 548
;*   Loop closing brace source line  : 548
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
$C$L48:    
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 548,column 12,is_stmt,isa 0
        MOV.W     4(SP),r15             ; [] |548| 
        MOV.W     #2,r14                ; [] |548| 
        BIT.B     @r15,r14              ; [] |548| 
        JEQ       $C$L49                ; [] |548| 
                                          ; [] |548| 
;* --------------------------------------------------------------------------*
        SUB.W     #1,0(SP)              ; [] |548| 
        SUBC.W    #0,2(SP)              ; [] |548| 
        JNE       $C$L48                ; [] |548| 
                                          ; [] |548| 
;* --------------------------------------------------------------------------*
        TST.W     0(SP)                 ; [] |548| 
        JNE       $C$L48                ; [] |548| 
                                          ; [] |548| 
;* --------------------------------------------------------------------------*
$C$L49:    
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 551,column 5,is_stmt,isa 0
        TST.W     2(SP)                 ; [] |551| 
        JNE       $C$L50                ; [] |551| 
                                          ; [] |551| 
;* --------------------------------------------------------------------------*
        TST.W     0(SP)                 ; [] |551| 
        JNE       $C$L50                ; [] |551| 
                                          ; [] |551| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 552,column 9,is_stmt,isa 0
        MOV.B     #0,r12                ; [] |552| 
        JMP       $C$L51                ; [] |552| 
                                          ; [] |552| 
;* --------------------------------------------------------------------------*
$C$L50:    
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 556,column 5,is_stmt,isa 0
        OR.B      #4,0(r15)             ; [] |556| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 559,column 5,is_stmt,isa 0
        BIS.W     6(SP),SR              ; [] |559| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 561,column 5,is_stmt,isa 0
        MOV.B     #1,r12                ; [] |561| 
;* --------------------------------------------------------------------------*
$C$L51:    
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 562,column 1,is_stmt,isa 0
        ADD.W     #8,SP                 ; [] 
	.dwcfi	cfa_offset, 2
$C$DW$198	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$198, DW_AT_low_pc(0x00)
	.dwattr $C$DW$198, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$192, DW_AT_TI_end_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$192, DW_AT_TI_end_line(0x232)
	.dwattr $C$DW$192, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$192

	.sect	".text:USCI_B_I2C_masterReceiveSingle"
	.clink
	.global	USCI_B_I2C_masterReceiveSingle

$C$DW$199	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$199, DW_AT_name("USCI_B_I2C_masterReceiveSingle")
	.dwattr $C$DW$199, DW_AT_low_pc(USCI_B_I2C_masterReceiveSingle)
	.dwattr $C$DW$199, DW_AT_high_pc(0x00)
	.dwattr $C$DW$199, DW_AT_TI_symbol_name("USCI_B_I2C_masterReceiveSingle")
	.dwattr $C$DW$199, DW_AT_external
	.dwattr $C$DW$199, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$199, DW_AT_TI_begin_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$199, DW_AT_TI_begin_line(0x234)
	.dwattr $C$DW$199, DW_AT_TI_begin_column(0x09)
	.dwattr $C$DW$199, DW_AT_decl_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$199, DW_AT_decl_line(0x234)
	.dwattr $C$DW$199, DW_AT_decl_column(0x09)
	.dwattr $C$DW$199, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 565,column 1,is_stmt,address USCI_B_I2C_masterReceiveSingle,isa 0

	.dwfde $C$DW$CIE, USCI_B_I2C_masterReceiveSingle
$C$DW$200	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$200, DW_AT_name("baseAddress")
	.dwattr $C$DW$200, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$200, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$200, DW_AT_location[DW_OP_reg12]


;*****************************************************************************
;* FUNCTION NAME: USCI_B_I2C_masterReceiveSingle                             *
;*                                                                           *
;*   Regs Modified     : SP,SR,r12                                           *
;*   Regs Used         : SP,SR,r12                                           *
;*   Local Frame Size  : 0 Args + 2 Auto + 0 Save = 2 byte                   *
;*****************************************************************************
USCI_B_I2C_masterReceiveSingle:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
        SUB.W     #2,SP                 ; [] 
	.dwcfi	cfa_offset, 4
$C$DW$201	.dwtag  DW_TAG_variable
	.dwattr $C$DW$201, DW_AT_name("baseAddress")
	.dwattr $C$DW$201, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$201, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$201, DW_AT_location[DW_OP_breg1 0]

        MOV.W     r12,0(SP)             ; [] |565| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 567,column 5,is_stmt,isa 0
        BIT.B     #1,42(r12)            ; [] |567| 
        JNE       $C$L53                ; [] |567| 
                                          ; [] |567| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 568,column 9,is_stmt,isa 0
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP $C$L52
;*
;*   Loop source line                : 568
;*   Loop closing brace source line  : 568
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
$C$L52:    
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 568,column 15,is_stmt,isa 0
        BIT.B     #1,44(r12)            ; [] |568| 
        JEQ       $C$L52                ; [] |568| 
                                          ; [] |568| 
;* --------------------------------------------------------------------------*
$C$L53:    
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 572,column 5,is_stmt,isa 0
        MOV.B     12(r12),r12           ; [] |572| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 573,column 1,is_stmt,isa 0
        ADD.W     #2,SP                 ; [] 
	.dwcfi	cfa_offset, 2
$C$DW$202	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$202, DW_AT_low_pc(0x00)
	.dwattr $C$DW$202, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$199, DW_AT_TI_end_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$199, DW_AT_TI_end_line(0x23d)
	.dwattr $C$DW$199, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$199

	.sect	".text:USCI_B_I2C_getReceiveBufferAddressForDMA"
	.clink
	.global	USCI_B_I2C_getReceiveBufferAddressForDMA

$C$DW$203	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$203, DW_AT_name("USCI_B_I2C_getReceiveBufferAddressForDMA")
	.dwattr $C$DW$203, DW_AT_low_pc(USCI_B_I2C_getReceiveBufferAddressForDMA)
	.dwattr $C$DW$203, DW_AT_high_pc(0x00)
	.dwattr $C$DW$203, DW_AT_TI_symbol_name("USCI_B_I2C_getReceiveBufferAddressForDMA")
	.dwattr $C$DW$203, DW_AT_external
	.dwattr $C$DW$203, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$203, DW_AT_TI_begin_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$203, DW_AT_TI_begin_line(0x23f)
	.dwattr $C$DW$203, DW_AT_TI_begin_column(0x0a)
	.dwattr $C$DW$203, DW_AT_decl_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$203, DW_AT_decl_line(0x23f)
	.dwattr $C$DW$203, DW_AT_decl_column(0x0a)
	.dwattr $C$DW$203, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 576,column 1,is_stmt,address USCI_B_I2C_getReceiveBufferAddressForDMA,isa 0

	.dwfde $C$DW$CIE, USCI_B_I2C_getReceiveBufferAddressForDMA
$C$DW$204	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$204, DW_AT_name("baseAddress")
	.dwattr $C$DW$204, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$204, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$204, DW_AT_location[DW_OP_reg12]


;*****************************************************************************
;* FUNCTION NAME: USCI_B_I2C_getReceiveBufferAddressForDMA                   *
;*                                                                           *
;*   Regs Modified     : SP,SR,r12,r13                                       *
;*   Regs Used         : SP,SR,r12,r13                                       *
;*   Local Frame Size  : 0 Args + 2 Auto + 0 Save = 2 byte                   *
;*****************************************************************************
USCI_B_I2C_getReceiveBufferAddressForDMA:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
        SUB.W     #2,SP                 ; [] 
	.dwcfi	cfa_offset, 4
$C$DW$205	.dwtag  DW_TAG_variable
	.dwattr $C$DW$205, DW_AT_name("baseAddress")
	.dwattr $C$DW$205, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$205, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$205, DW_AT_location[DW_OP_breg1 0]

        MOV.W     r12,0(SP)             ; [] |576| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 577,column 5,is_stmt,isa 0
        MOV.W     #12,r12               ; [] |577| 
        ADD.W     0(SP),r12             ; [] |577| 
        MOV.W     #0,r13                ; [] |577| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 578,column 1,is_stmt,isa 0
        ADD.W     #2,SP                 ; [] 
	.dwcfi	cfa_offset, 2
$C$DW$206	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$206, DW_AT_low_pc(0x00)
	.dwattr $C$DW$206, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$203, DW_AT_TI_end_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$203, DW_AT_TI_end_line(0x242)
	.dwattr $C$DW$203, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$203

	.sect	".text:USCI_B_I2C_getTransmitBufferAddressForDMA"
	.clink
	.global	USCI_B_I2C_getTransmitBufferAddressForDMA

$C$DW$207	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$207, DW_AT_name("USCI_B_I2C_getTransmitBufferAddressForDMA")
	.dwattr $C$DW$207, DW_AT_low_pc(USCI_B_I2C_getTransmitBufferAddressForDMA)
	.dwattr $C$DW$207, DW_AT_high_pc(0x00)
	.dwattr $C$DW$207, DW_AT_TI_symbol_name("USCI_B_I2C_getTransmitBufferAddressForDMA")
	.dwattr $C$DW$207, DW_AT_external
	.dwattr $C$DW$207, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$207, DW_AT_TI_begin_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$207, DW_AT_TI_begin_line(0x244)
	.dwattr $C$DW$207, DW_AT_TI_begin_column(0x0a)
	.dwattr $C$DW$207, DW_AT_decl_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$207, DW_AT_decl_line(0x244)
	.dwattr $C$DW$207, DW_AT_decl_column(0x0a)
	.dwattr $C$DW$207, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 581,column 1,is_stmt,address USCI_B_I2C_getTransmitBufferAddressForDMA,isa 0

	.dwfde $C$DW$CIE, USCI_B_I2C_getTransmitBufferAddressForDMA
$C$DW$208	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$208, DW_AT_name("baseAddress")
	.dwattr $C$DW$208, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$208, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$208, DW_AT_location[DW_OP_reg12]


;*****************************************************************************
;* FUNCTION NAME: USCI_B_I2C_getTransmitBufferAddressForDMA                  *
;*                                                                           *
;*   Regs Modified     : SP,SR,r12,r13                                       *
;*   Regs Used         : SP,SR,r12,r13                                       *
;*   Local Frame Size  : 0 Args + 2 Auto + 0 Save = 2 byte                   *
;*****************************************************************************
USCI_B_I2C_getTransmitBufferAddressForDMA:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
        SUB.W     #2,SP                 ; [] 
	.dwcfi	cfa_offset, 4
$C$DW$209	.dwtag  DW_TAG_variable
	.dwattr $C$DW$209, DW_AT_name("baseAddress")
	.dwattr $C$DW$209, DW_AT_TI_symbol_name("baseAddress")
	.dwattr $C$DW$209, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$209, DW_AT_location[DW_OP_breg1 0]

        MOV.W     r12,0(SP)             ; [] |581| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 582,column 5,is_stmt,isa 0
        MOV.W     #14,r12               ; [] |582| 
        ADD.W     0(SP),r12             ; [] |582| 
        MOV.W     #0,r13                ; [] |582| 
	.dwpsn	file "../driverlib/MSP430F5xx_6xx/usci_b_i2c.c",line 583,column 1,is_stmt,isa 0
        ADD.W     #2,SP                 ; [] 
	.dwcfi	cfa_offset, 2
$C$DW$210	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$210, DW_AT_low_pc(0x00)
	.dwattr $C$DW$210, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$207, DW_AT_TI_end_file("../driverlib/MSP430F5xx_6xx/usci_b_i2c.c")
	.dwattr $C$DW$207, DW_AT_TI_end_line(0x247)
	.dwattr $C$DW$207, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$207

;*****************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                             *
;*****************************************************************************
	.global	__mspabi_divul

;******************************************************************************
;* BUILD ATTRIBUTES                                                           *
;******************************************************************************
	.battr "TI", Tag_File, 1, Tag_LPM_INFO(2)
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
$C$DW$211	.dwtag  DW_TAG_member
	.dwattr $C$DW$211, DW_AT_type(*$C$DW$T$14)
	.dwattr $C$DW$211, DW_AT_name("__max_align1")
	.dwattr $C$DW$211, DW_AT_TI_symbol_name("__max_align1")
	.dwattr $C$DW$211, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$211, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$211, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$211, DW_AT_decl_line(0x7b)
	.dwattr $C$DW$211, DW_AT_decl_column(0x0c)

$C$DW$212	.dwtag  DW_TAG_member
	.dwattr $C$DW$212, DW_AT_type(*$C$DW$T$18)
	.dwattr $C$DW$212, DW_AT_name("__max_align2")
	.dwattr $C$DW$212, DW_AT_TI_symbol_name("__max_align2")
	.dwattr $C$DW$212, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$212, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$212, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$212, DW_AT_decl_line(0x7c)
	.dwattr $C$DW$212, DW_AT_decl_column(0x0e)

	.dwattr $C$DW$T$21, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$21, DW_AT_decl_line(0x7a)
	.dwattr $C$DW$T$21, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$21

$C$DW$T$27	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$27, DW_AT_name("__max_align_t")
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$27, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$27, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$27, DW_AT_decl_line(0x7d)
	.dwattr $C$DW$T$27, DW_AT_decl_column(0x03)


$C$DW$T$26	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$26, DW_AT_name("USCI_B_I2C_initMasterParam")
	.dwattr $C$DW$T$26, DW_AT_byte_size(0x0a)
$C$DW$213	.dwtag  DW_TAG_member
	.dwattr $C$DW$213, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$213, DW_AT_name("selectClockSource")
	.dwattr $C$DW$213, DW_AT_TI_symbol_name("selectClockSource")
	.dwattr $C$DW$213, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$213, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$213, DW_AT_decl_file("..\driverlib\MSP430F5xx_6xx\usci_b_i2c.h")
	.dwattr $C$DW$213, DW_AT_decl_line(0x24)
	.dwattr $C$DW$213, DW_AT_decl_column(0x0d)

$C$DW$214	.dwtag  DW_TAG_member
	.dwattr $C$DW$214, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$214, DW_AT_name("i2cClk")
	.dwattr $C$DW$214, DW_AT_TI_symbol_name("i2cClk")
	.dwattr $C$DW$214, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$214, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$214, DW_AT_decl_file("..\driverlib\MSP430F5xx_6xx\usci_b_i2c.h")
	.dwattr $C$DW$214, DW_AT_decl_line(0x26)
	.dwattr $C$DW$214, DW_AT_decl_column(0x0e)

$C$DW$215	.dwtag  DW_TAG_member
	.dwattr $C$DW$215, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$215, DW_AT_name("dataRate")
	.dwattr $C$DW$215, DW_AT_TI_symbol_name("dataRate")
	.dwattr $C$DW$215, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$215, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$215, DW_AT_decl_file("..\driverlib\MSP430F5xx_6xx\usci_b_i2c.h")
	.dwattr $C$DW$215, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$215, DW_AT_decl_column(0x0e)

	.dwattr $C$DW$T$26, DW_AT_decl_file("..\driverlib\MSP430F5xx_6xx\usci_b_i2c.h")
	.dwattr $C$DW$T$26, DW_AT_decl_line(0x1f)
	.dwattr $C$DW$T$26, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$26

$C$DW$T$28	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$28, DW_AT_name("USCI_B_I2C_initMasterParam")
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$28, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$28, DW_AT_decl_file("..\driverlib\MSP430F5xx_6xx\usci_b_i2c.h")
	.dwattr $C$DW$T$28, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$T$28, DW_AT_decl_column(0x03)

$C$DW$T$29	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$29, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$T$29, DW_AT_address_class(0x10)

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

$C$DW$T$22	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$22, DW_AT_name("__uint8_t")
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$22, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$22, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$22, DW_AT_decl_line(0x37)
	.dwattr $C$DW$T$22, DW_AT_decl_column(0x18)

$C$DW$T$42	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$42, DW_AT_name("__sa_family_t")
	.dwattr $C$DW$T$42, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$42, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$42, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$42, DW_AT_decl_line(0x47)
	.dwattr $C$DW$T$42, DW_AT_decl_column(0x13)

$C$DW$T$43	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$43, DW_AT_name("__uint_least8_t")
	.dwattr $C$DW$T$43, DW_AT_type(*$C$DW$T$22)
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

$C$DW$T$23	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$23, DW_AT_name("uint8_t")
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$23, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$23, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$23, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$T$23, DW_AT_decl_column(0x14)

$C$DW$T$47	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$47, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$47, DW_AT_address_class(0x10)

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

$C$DW$T$50	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$50, DW_AT_name("_Mbstatet")
	.dwattr $C$DW$T$50, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$50, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$50, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$50, DW_AT_decl_line(0x8f)
	.dwattr $C$DW$T$50, DW_AT_decl_column(0x0d)

$C$DW$T$51	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$51, DW_AT_name("__mbstate_t")
	.dwattr $C$DW$T$51, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$T$51, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$51, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$51, DW_AT_decl_line(0x92)
	.dwattr $C$DW$T$51, DW_AT_decl_column(0x13)

$C$DW$T$52	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$52, DW_AT_name("__accmode_t")
	.dwattr $C$DW$T$52, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$52, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$52, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$52, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$T$52, DW_AT_decl_column(0x0e)

$C$DW$T$53	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$53, DW_AT_name("__cpulevel_t")
	.dwattr $C$DW$T$53, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$53, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$53, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$53, DW_AT_decl_line(0x50)
	.dwattr $C$DW$T$53, DW_AT_decl_column(0x0e)

$C$DW$T$54	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$54, DW_AT_name("__cpusetid_t")
	.dwattr $C$DW$T$54, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$54, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$54, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$54, DW_AT_decl_line(0x51)
	.dwattr $C$DW$T$54, DW_AT_decl_column(0x0e)

$C$DW$T$55	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$55, DW_AT_name("__cpuwhich_t")
	.dwattr $C$DW$T$55, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$55, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$55, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$55, DW_AT_decl_line(0x4f)
	.dwattr $C$DW$T$55, DW_AT_decl_column(0x0e)

$C$DW$T$56	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$56, DW_AT_name("__ct_rune_t")
	.dwattr $C$DW$T$56, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$56, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$56, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$56, DW_AT_decl_line(0x69)
	.dwattr $C$DW$T$56, DW_AT_decl_column(0x0e)

$C$DW$T$57	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$57, DW_AT_name("__rune_t")
	.dwattr $C$DW$T$57, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$T$57, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$57, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$57, DW_AT_decl_line(0x6c)
	.dwattr $C$DW$T$57, DW_AT_decl_column(0x15)

$C$DW$T$58	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$58, DW_AT_name("__wint_t")
	.dwattr $C$DW$T$58, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$T$58, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$58, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$58, DW_AT_decl_line(0x6d)
	.dwattr $C$DW$T$58, DW_AT_decl_column(0x15)

$C$DW$T$59	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$59, DW_AT_name("__int16_t")
	.dwattr $C$DW$T$59, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$59, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$59, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$59, DW_AT_decl_line(0x38)
	.dwattr $C$DW$T$59, DW_AT_decl_column(0x0f)

$C$DW$T$60	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$60, DW_AT_name("__int_fast16_t")
	.dwattr $C$DW$T$60, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$T$60, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$60, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$60, DW_AT_decl_line(0x57)
	.dwattr $C$DW$T$60, DW_AT_decl_column(0x13)

$C$DW$T$61	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$61, DW_AT_name("int_fast16_t")
	.dwattr $C$DW$T$61, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$T$61, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$61, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$61, DW_AT_decl_line(0x35)
	.dwattr $C$DW$T$61, DW_AT_decl_column(0x19)

$C$DW$T$62	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$62, DW_AT_name("__int_fast8_t")
	.dwattr $C$DW$T$62, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$T$62, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$62, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$62, DW_AT_decl_line(0x56)
	.dwattr $C$DW$T$62, DW_AT_decl_column(0x13)

$C$DW$T$63	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$63, DW_AT_name("int_fast8_t")
	.dwattr $C$DW$T$63, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$T$63, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$63, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$63, DW_AT_decl_line(0x34)
	.dwattr $C$DW$T$63, DW_AT_decl_column(0x18)

$C$DW$T$64	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$64, DW_AT_name("__int_least16_t")
	.dwattr $C$DW$T$64, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$T$64, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$64, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$64, DW_AT_decl_line(0x5b)
	.dwattr $C$DW$T$64, DW_AT_decl_column(0x13)

$C$DW$T$65	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$65, DW_AT_name("int_least16_t")
	.dwattr $C$DW$T$65, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$T$65, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$65, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$65, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$T$65, DW_AT_decl_column(0x1a)

$C$DW$T$66	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$66, DW_AT_name("__intptr_t")
	.dwattr $C$DW$T$66, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$T$66, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$66, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$66, DW_AT_decl_line(0x53)
	.dwattr $C$DW$T$66, DW_AT_decl_column(0x19)

$C$DW$T$67	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$67, DW_AT_name("intptr_t")
	.dwattr $C$DW$T$67, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$T$67, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$67, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$67, DW_AT_decl_line(0x50)
	.dwattr $C$DW$T$67, DW_AT_decl_column(0x15)

$C$DW$T$68	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$68, DW_AT_name("__register_t")
	.dwattr $C$DW$T$68, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$T$68, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$68, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$68, DW_AT_decl_line(0x5f)
	.dwattr $C$DW$T$68, DW_AT_decl_column(0x13)

$C$DW$T$69	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$69, DW_AT_name("int16_t")
	.dwattr $C$DW$T$69, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$T$69, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$69, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$69, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$T$69, DW_AT_decl_column(0x14)

$C$DW$T$70	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$70, DW_AT_name("__nl_item")
	.dwattr $C$DW$T$70, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$70, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$70, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$70, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$T$70, DW_AT_decl_column(0x0e)

$C$DW$T$71	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$71, DW_AT_name("__ptrdiff_t")
	.dwattr $C$DW$T$71, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$71, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$71, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$71, DW_AT_decl_line(0x5e)
	.dwattr $C$DW$T$71, DW_AT_decl_column(0x1c)

$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x02)

$C$DW$T$72	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$72, DW_AT_name("___wchar_t")
	.dwattr $C$DW$T$72, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$72, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$72, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$72, DW_AT_decl_line(0x7d)
	.dwattr $C$DW$T$72, DW_AT_decl_column(0x1a)

$C$DW$T$73	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$73, DW_AT_name("__size_t")
	.dwattr $C$DW$T$73, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$73, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$73, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$73, DW_AT_decl_line(0x61)
	.dwattr $C$DW$T$73, DW_AT_decl_column(0x19)

$C$DW$T$30	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$30, DW_AT_name("__uint16_t")
	.dwattr $C$DW$T$30, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$30, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$30, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$30, DW_AT_decl_line(0x39)
	.dwattr $C$DW$T$30, DW_AT_decl_column(0x17)

$C$DW$T$74	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$74, DW_AT_name("__mode_t")
	.dwattr $C$DW$T$74, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$74, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$74, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$74, DW_AT_decl_line(0x3a)
	.dwattr $C$DW$T$74, DW_AT_decl_column(0x14)

$C$DW$T$75	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$75, DW_AT_name("__u_register_t")
	.dwattr $C$DW$T$75, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$75, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$75, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$75, DW_AT_decl_line(0x78)
	.dwattr $C$DW$T$75, DW_AT_decl_column(0x14)

$C$DW$T$76	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$76, DW_AT_name("__uint_fast16_t")
	.dwattr $C$DW$T$76, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$76, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$76, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$76, DW_AT_decl_line(0x71)
	.dwattr $C$DW$T$76, DW_AT_decl_column(0x14)

$C$DW$T$77	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$77, DW_AT_name("uint_fast16_t")
	.dwattr $C$DW$T$77, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$T$77, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$77, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$77, DW_AT_decl_line(0x3a)
	.dwattr $C$DW$T$77, DW_AT_decl_column(0x1a)

$C$DW$T$78	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$78, DW_AT_name("__uint_fast8_t")
	.dwattr $C$DW$T$78, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$78, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$78, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$78, DW_AT_decl_line(0x70)
	.dwattr $C$DW$T$78, DW_AT_decl_column(0x14)

$C$DW$T$79	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$79, DW_AT_name("uint_fast8_t")
	.dwattr $C$DW$T$79, DW_AT_type(*$C$DW$T$78)
	.dwattr $C$DW$T$79, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$79, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$79, DW_AT_decl_line(0x39)
	.dwattr $C$DW$T$79, DW_AT_decl_column(0x19)

$C$DW$T$80	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$80, DW_AT_name("__uint_least16_t")
	.dwattr $C$DW$T$80, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$80, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$80, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$80, DW_AT_decl_line(0x75)
	.dwattr $C$DW$T$80, DW_AT_decl_column(0x14)

$C$DW$T$81	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$81, DW_AT_name("__char16_t")
	.dwattr $C$DW$T$81, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$T$81, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$81, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$81, DW_AT_decl_line(0x71)
	.dwattr $C$DW$T$81, DW_AT_decl_column(0x1a)

$C$DW$T$82	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$82, DW_AT_name("uint_least16_t")
	.dwattr $C$DW$T$82, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$T$82, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$82, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$82, DW_AT_decl_line(0x30)
	.dwattr $C$DW$T$82, DW_AT_decl_column(0x1a)

$C$DW$T$83	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$83, DW_AT_name("__uintptr_t")
	.dwattr $C$DW$T$83, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$83, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$83, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$83, DW_AT_decl_line(0x6d)
	.dwattr $C$DW$T$83, DW_AT_decl_column(0x14)

$C$DW$T$84	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$84, DW_AT_name("uintptr_t")
	.dwattr $C$DW$T$84, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$T$84, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$84, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$84, DW_AT_decl_line(0x54)
	.dwattr $C$DW$T$84, DW_AT_decl_column(0x16)

$C$DW$T$31	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$31, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$31, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$31, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$31, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$31, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$31, DW_AT_decl_column(0x15)

$C$DW$T$87	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$87, DW_AT_name("__useconds_t")
	.dwattr $C$DW$T$87, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$87, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$87, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$87, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$T$87, DW_AT_decl_column(0x16)

$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x04)

$C$DW$T$88	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$88, DW_AT_name("__int32_t")
	.dwattr $C$DW$T$88, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$88, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$88, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$88, DW_AT_decl_line(0x3a)
	.dwattr $C$DW$T$88, DW_AT_decl_column(0x10)

$C$DW$T$89	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$89, DW_AT_name("__blksize_t")
	.dwattr $C$DW$T$89, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$T$89, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$89, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$89, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$T$89, DW_AT_decl_column(0x13)

$C$DW$T$90	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$90, DW_AT_name("__clockid_t")
	.dwattr $C$DW$T$90, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$T$90, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$90, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$90, DW_AT_decl_line(0x31)
	.dwattr $C$DW$T$90, DW_AT_decl_column(0x13)

$C$DW$T$91	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$91, DW_AT_name("__critical_t")
	.dwattr $C$DW$T$91, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$T$91, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$91, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$91, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$T$91, DW_AT_decl_column(0x13)

$C$DW$T$92	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$92, DW_AT_name("__int_fast32_t")
	.dwattr $C$DW$T$92, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$T$92, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$92, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$92, DW_AT_decl_line(0x58)
	.dwattr $C$DW$T$92, DW_AT_decl_column(0x13)

$C$DW$T$93	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$93, DW_AT_name("int_fast32_t")
	.dwattr $C$DW$T$93, DW_AT_type(*$C$DW$T$92)
	.dwattr $C$DW$T$93, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$93, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$93, DW_AT_decl_line(0x36)
	.dwattr $C$DW$T$93, DW_AT_decl_column(0x19)

$C$DW$T$94	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$94, DW_AT_name("__int_least32_t")
	.dwattr $C$DW$T$94, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$T$94, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$94, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$94, DW_AT_decl_line(0x5c)
	.dwattr $C$DW$T$94, DW_AT_decl_column(0x13)

$C$DW$T$95	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$95, DW_AT_name("int_least32_t")
	.dwattr $C$DW$T$95, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$T$95, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$95, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$95, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$T$95, DW_AT_decl_column(0x1a)

$C$DW$T$96	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$96, DW_AT_name("__intfptr_t")
	.dwattr $C$DW$T$96, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$T$96, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$96, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$96, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$T$96, DW_AT_decl_column(0x13)

$C$DW$T$97	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$97, DW_AT_name("__lwpid_t")
	.dwattr $C$DW$T$97, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$T$97, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$97, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$97, DW_AT_decl_line(0x39)
	.dwattr $C$DW$T$97, DW_AT_decl_column(0x13)

$C$DW$T$98	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$98, DW_AT_name("__pid_t")
	.dwattr $C$DW$T$98, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$T$98, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$98, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$98, DW_AT_decl_line(0x40)
	.dwattr $C$DW$T$98, DW_AT_decl_column(0x13)

$C$DW$T$99	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$99, DW_AT_name("__segsz_t")
	.dwattr $C$DW$T$99, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$T$99, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$99, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$99, DW_AT_decl_line(0x60)
	.dwattr $C$DW$T$99, DW_AT_decl_column(0x13)

$C$DW$T$100	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$100, DW_AT_name("__ssize_t")
	.dwattr $C$DW$T$100, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$T$100, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$100, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$100, DW_AT_decl_line(0x62)
	.dwattr $C$DW$T$100, DW_AT_decl_column(0x13)

$C$DW$T$101	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$101, DW_AT_name("int32_t")
	.dwattr $C$DW$T$101, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$T$101, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$101, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$101, DW_AT_decl_line(0x30)
	.dwattr $C$DW$T$101, DW_AT_decl_column(0x14)

$C$DW$T$102	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$102, DW_AT_name("__key_t")
	.dwattr $C$DW$T$102, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$102, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$102, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$102, DW_AT_decl_line(0x38)
	.dwattr $C$DW$T$102, DW_AT_decl_column(0x0f)

$C$DW$T$103	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$103, DW_AT_name("__suseconds_t")
	.dwattr $C$DW$T$103, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$103, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$103, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$103, DW_AT_decl_line(0x4a)
	.dwattr $C$DW$T$103, DW_AT_decl_column(0x0f)

$C$DW$T$104	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$104, DW_AT_name("_off_t")
	.dwattr $C$DW$T$104, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$104, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$104, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$104, DW_AT_decl_line(0x8d)
	.dwattr $C$DW$T$104, DW_AT_decl_column(0x12)

$C$DW$T$105	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$105, DW_AT_name("__off_t")
	.dwattr $C$DW$T$105, DW_AT_type(*$C$DW$T$104)
	.dwattr $C$DW$T$105, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$105, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$105, DW_AT_decl_line(0x3e)
	.dwattr $C$DW$T$105, DW_AT_decl_column(0x18)

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

$C$DW$T$106	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$106, DW_AT_name("__clock_t")
	.dwattr $C$DW$T$106, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$106, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$106, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$106, DW_AT_decl_line(0x4a)
	.dwattr $C$DW$T$106, DW_AT_decl_column(0x14)

$C$DW$T$107	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$107, DW_AT_name("__fflags_t")
	.dwattr $C$DW$T$107, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$107, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$107, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$107, DW_AT_decl_line(0x32)
	.dwattr $C$DW$T$107, DW_AT_decl_column(0x14)

$C$DW$T$108	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$108, DW_AT_name("__fixpt_t")
	.dwattr $C$DW$T$108, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$108, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$108, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$108, DW_AT_decl_line(0x81)
	.dwattr $C$DW$T$108, DW_AT_decl_column(0x14)

$C$DW$T$109	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$109, DW_AT_name("__gid_t")
	.dwattr $C$DW$T$109, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$109, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$109, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$109, DW_AT_decl_line(0x35)
	.dwattr $C$DW$T$109, DW_AT_decl_column(0x14)

$C$DW$T$110	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$110, DW_AT_name("__socklen_t")
	.dwattr $C$DW$T$110, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$110, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$110, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$110, DW_AT_decl_line(0x49)
	.dwattr $C$DW$T$110, DW_AT_decl_column(0x14)

$C$DW$T$111	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$111, DW_AT_name("__time_t")
	.dwattr $C$DW$T$111, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$111, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$111, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$111, DW_AT_decl_line(0x66)
	.dwattr $C$DW$T$111, DW_AT_decl_column(0x19)

$C$DW$T$112	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$112, DW_AT_name("__uid_t")
	.dwattr $C$DW$T$112, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$112, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$112, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$112, DW_AT_decl_line(0x4d)
	.dwattr $C$DW$T$112, DW_AT_decl_column(0x14)

$C$DW$T$113	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$113, DW_AT_name("__uint_fast32_t")
	.dwattr $C$DW$T$113, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$113, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$113, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$113, DW_AT_decl_line(0x72)
	.dwattr $C$DW$T$113, DW_AT_decl_column(0x14)

$C$DW$T$114	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$114, DW_AT_name("uint_fast32_t")
	.dwattr $C$DW$T$114, DW_AT_type(*$C$DW$T$113)
	.dwattr $C$DW$T$114, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$114, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$114, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$T$114, DW_AT_decl_column(0x1a)

$C$DW$T$115	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$115, DW_AT_name("__uint_least32_t")
	.dwattr $C$DW$T$115, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$115, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$115, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$115, DW_AT_decl_line(0x76)
	.dwattr $C$DW$T$115, DW_AT_decl_column(0x14)

$C$DW$T$116	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$116, DW_AT_name("__char32_t")
	.dwattr $C$DW$T$116, DW_AT_type(*$C$DW$T$115)
	.dwattr $C$DW$T$116, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$116, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$116, DW_AT_decl_line(0x72)
	.dwattr $C$DW$T$116, DW_AT_decl_column(0x1a)

$C$DW$T$117	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$117, DW_AT_name("uint_least32_t")
	.dwattr $C$DW$T$117, DW_AT_type(*$C$DW$T$115)
	.dwattr $C$DW$T$117, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$117, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$117, DW_AT_decl_line(0x31)
	.dwattr $C$DW$T$117, DW_AT_decl_column(0x1a)

$C$DW$T$118	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$118, DW_AT_name("__uintfptr_t")
	.dwattr $C$DW$T$118, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$118, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$118, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$118, DW_AT_decl_line(0x68)
	.dwattr $C$DW$T$118, DW_AT_decl_column(0x14)

$C$DW$T$119	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$119, DW_AT_name("__vm_offset_t")
	.dwattr $C$DW$T$119, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$119, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$119, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$119, DW_AT_decl_line(0x79)
	.dwattr $C$DW$T$119, DW_AT_decl_column(0x14)

$C$DW$T$120	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$120, DW_AT_name("__vm_paddr_t")
	.dwattr $C$DW$T$120, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$120, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$120, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$120, DW_AT_decl_line(0x7a)
	.dwattr $C$DW$T$120, DW_AT_decl_column(0x14)

$C$DW$T$121	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$121, DW_AT_name("__vm_size_t")
	.dwattr $C$DW$T$121, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$121, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$121, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$121, DW_AT_decl_line(0x7b)
	.dwattr $C$DW$T$121, DW_AT_decl_column(0x14)

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

$C$DW$T$123	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$123, DW_AT_name("__int64_t")
	.dwattr $C$DW$T$123, DW_AT_type(*$C$DW$T$14)
	.dwattr $C$DW$T$123, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$123, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$123, DW_AT_decl_line(0x40)
	.dwattr $C$DW$T$123, DW_AT_decl_column(0x14)

$C$DW$T$124	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$124, DW_AT_name("__blkcnt_t")
	.dwattr $C$DW$T$124, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$T$124, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$124, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$124, DW_AT_decl_line(0x30)
	.dwattr $C$DW$T$124, DW_AT_decl_column(0x13)

$C$DW$T$125	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$125, DW_AT_name("__id_t")
	.dwattr $C$DW$T$125, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$T$125, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$125, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$125, DW_AT_decl_line(0x36)
	.dwattr $C$DW$T$125, DW_AT_decl_column(0x13)

$C$DW$T$126	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$126, DW_AT_name("__int_fast64_t")
	.dwattr $C$DW$T$126, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$T$126, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$126, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$126, DW_AT_decl_line(0x59)
	.dwattr $C$DW$T$126, DW_AT_decl_column(0x13)

$C$DW$T$127	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$127, DW_AT_name("int_fast64_t")
	.dwattr $C$DW$T$127, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$T$127, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$127, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$127, DW_AT_decl_line(0x37)
	.dwattr $C$DW$T$127, DW_AT_decl_column(0x19)

$C$DW$T$128	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$128, DW_AT_name("__int_least64_t")
	.dwattr $C$DW$T$128, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$T$128, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$128, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$128, DW_AT_decl_line(0x5d)
	.dwattr $C$DW$T$128, DW_AT_decl_column(0x13)

$C$DW$T$129	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$129, DW_AT_name("int_least64_t")
	.dwattr $C$DW$T$129, DW_AT_type(*$C$DW$T$128)
	.dwattr $C$DW$T$129, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$129, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$129, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$T$129, DW_AT_decl_column(0x1a)

$C$DW$T$130	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$130, DW_AT_name("__intmax_t")
	.dwattr $C$DW$T$130, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$T$130, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$130, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$130, DW_AT_decl_line(0x4f)
	.dwattr $C$DW$T$130, DW_AT_decl_column(0x13)

$C$DW$T$131	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$131, DW_AT_name("intmax_t")
	.dwattr $C$DW$T$131, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$T$131, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$131, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$131, DW_AT_decl_line(0x58)
	.dwattr $C$DW$T$131, DW_AT_decl_column(0x15)

$C$DW$T$132	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$132, DW_AT_name("__off64_t")
	.dwattr $C$DW$T$132, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$T$132, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$132, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$132, DW_AT_decl_line(0x3f)
	.dwattr $C$DW$T$132, DW_AT_decl_column(0x13)

$C$DW$T$133	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$133, DW_AT_name("__rlim_t")
	.dwattr $C$DW$T$133, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$T$133, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$133, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$133, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$133, DW_AT_decl_column(0x13)

$C$DW$T$134	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$134, DW_AT_name("int64_t")
	.dwattr $C$DW$T$134, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$T$134, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$134, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$134, DW_AT_decl_line(0x35)
	.dwattr $C$DW$T$134, DW_AT_decl_column(0x14)

$C$DW$T$15	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$15, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$15, DW_AT_name("unsigned long long")
	.dwattr $C$DW$T$15, DW_AT_byte_size(0x08)

$C$DW$T$135	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$135, DW_AT_name("__uint64_t")
	.dwattr $C$DW$T$135, DW_AT_type(*$C$DW$T$15)
	.dwattr $C$DW$T$135, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$135, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$135, DW_AT_decl_line(0x45)
	.dwattr $C$DW$T$135, DW_AT_decl_column(0x1c)

$C$DW$T$136	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$136, DW_AT_name("__dev_t")
	.dwattr $C$DW$T$136, DW_AT_type(*$C$DW$T$135)
	.dwattr $C$DW$T$136, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$136, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$136, DW_AT_decl_line(0x7f)
	.dwattr $C$DW$T$136, DW_AT_decl_column(0x14)

$C$DW$T$137	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$137, DW_AT_name("__fsblkcnt_t")
	.dwattr $C$DW$T$137, DW_AT_type(*$C$DW$T$135)
	.dwattr $C$DW$T$137, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$137, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$137, DW_AT_decl_line(0x33)
	.dwattr $C$DW$T$137, DW_AT_decl_column(0x14)

$C$DW$T$138	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$138, DW_AT_name("__fsfilcnt_t")
	.dwattr $C$DW$T$138, DW_AT_type(*$C$DW$T$135)
	.dwattr $C$DW$T$138, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$138, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$138, DW_AT_decl_line(0x34)
	.dwattr $C$DW$T$138, DW_AT_decl_column(0x14)

$C$DW$T$139	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$139, DW_AT_name("__ino_t")
	.dwattr $C$DW$T$139, DW_AT_type(*$C$DW$T$135)
	.dwattr $C$DW$T$139, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$139, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$139, DW_AT_decl_line(0x37)
	.dwattr $C$DW$T$139, DW_AT_decl_column(0x14)

$C$DW$T$140	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$140, DW_AT_name("__nlink_t")
	.dwattr $C$DW$T$140, DW_AT_type(*$C$DW$T$135)
	.dwattr $C$DW$T$140, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$140, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$140, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$T$140, DW_AT_decl_column(0x14)

$C$DW$T$141	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$141, DW_AT_name("__uint_fast64_t")
	.dwattr $C$DW$T$141, DW_AT_type(*$C$DW$T$135)
	.dwattr $C$DW$T$141, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$141, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$141, DW_AT_decl_line(0x73)
	.dwattr $C$DW$T$141, DW_AT_decl_column(0x14)

$C$DW$T$142	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$142, DW_AT_name("uint_fast64_t")
	.dwattr $C$DW$T$142, DW_AT_type(*$C$DW$T$141)
	.dwattr $C$DW$T$142, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$142, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$142, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$T$142, DW_AT_decl_column(0x1a)

$C$DW$T$143	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$143, DW_AT_name("__uint_least64_t")
	.dwattr $C$DW$T$143, DW_AT_type(*$C$DW$T$135)
	.dwattr $C$DW$T$143, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$143, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$143, DW_AT_decl_line(0x77)
	.dwattr $C$DW$T$143, DW_AT_decl_column(0x14)

$C$DW$T$144	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$144, DW_AT_name("uint_least64_t")
	.dwattr $C$DW$T$144, DW_AT_type(*$C$DW$T$143)
	.dwattr $C$DW$T$144, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$144, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$144, DW_AT_decl_line(0x32)
	.dwattr $C$DW$T$144, DW_AT_decl_column(0x1a)

$C$DW$T$145	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$145, DW_AT_name("__uintmax_t")
	.dwattr $C$DW$T$145, DW_AT_type(*$C$DW$T$135)
	.dwattr $C$DW$T$145, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$145, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$145, DW_AT_decl_line(0x69)
	.dwattr $C$DW$T$145, DW_AT_decl_column(0x14)

$C$DW$T$146	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$146, DW_AT_name("__rman_res_t")
	.dwattr $C$DW$T$146, DW_AT_type(*$C$DW$T$145)
	.dwattr $C$DW$T$146, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$146, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$146, DW_AT_decl_line(0x9a)
	.dwattr $C$DW$T$146, DW_AT_decl_column(0x19)

$C$DW$T$147	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$147, DW_AT_name("uintmax_t")
	.dwattr $C$DW$T$147, DW_AT_type(*$C$DW$T$145)
	.dwattr $C$DW$T$147, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$147, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$147, DW_AT_decl_line(0x5c)
	.dwattr $C$DW$T$147, DW_AT_decl_column(0x16)

$C$DW$T$148	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$148, DW_AT_name("uint64_t")
	.dwattr $C$DW$T$148, DW_AT_type(*$C$DW$T$135)
	.dwattr $C$DW$T$148, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$148, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$148, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$T$148, DW_AT_decl_column(0x15)

$C$DW$T$16	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$16, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$16, DW_AT_name("float")
	.dwattr $C$DW$T$16, DW_AT_byte_size(0x04)

$C$DW$T$149	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$149, DW_AT_name("__float_t")
	.dwattr $C$DW$T$149, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$T$149, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$149, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$149, DW_AT_decl_line(0x4d)
	.dwattr $C$DW$T$149, DW_AT_decl_column(0x10)

$C$DW$T$17	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$17, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$17, DW_AT_name("double")
	.dwattr $C$DW$T$17, DW_AT_byte_size(0x08)

$C$DW$T$150	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$150, DW_AT_name("__double_t")
	.dwattr $C$DW$T$150, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$T$150, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$150, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$150, DW_AT_decl_line(0x4c)
	.dwattr $C$DW$T$150, DW_AT_decl_column(0x11)

$C$DW$T$18	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$18, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$18, DW_AT_name("long double")
	.dwattr $C$DW$T$18, DW_AT_byte_size(0x08)

$C$DW$T$151	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$151, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$151, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$151, DW_AT_byte_size(0x01)

$C$DW$T$156	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$156, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$156, DW_AT_address_class(0x10)

$C$DW$T$157	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$157, DW_AT_name("__va_list")
	.dwattr $C$DW$T$157, DW_AT_type(*$C$DW$T$156)
	.dwattr $C$DW$T$157, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$157, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$157, DW_AT_decl_line(0x92)
	.dwattr $C$DW$T$157, DW_AT_decl_column(0x0f)


$C$DW$T$19	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$19, DW_AT_name("__mq")
	.dwattr $C$DW$T$19, DW_AT_declaration
	.dwattr $C$DW$T$19, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$19, DW_AT_decl_line(0x4c)
	.dwattr $C$DW$T$19, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$19

$C$DW$T$158	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$158, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$158, DW_AT_address_class(0x10)

$C$DW$T$159	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$159, DW_AT_name("__mqd_t")
	.dwattr $C$DW$T$159, DW_AT_type(*$C$DW$T$158)
	.dwattr $C$DW$T$159, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$159, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$159, DW_AT_decl_line(0x4c)
	.dwattr $C$DW$T$159, DW_AT_decl_column(0x16)


$C$DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$20, DW_AT_name("__timer")
	.dwattr $C$DW$T$20, DW_AT_declaration
	.dwattr $C$DW$T$20, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$20, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$T$20, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$20

$C$DW$T$160	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$160, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$160, DW_AT_address_class(0x10)

$C$DW$T$161	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$161, DW_AT_name("__timer_t")
	.dwattr $C$DW$T$161, DW_AT_type(*$C$DW$T$160)
	.dwattr $C$DW$T$161, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$161, DW_AT_decl_file("C:/ti/ccs1040/ccs/tools/compiler/ti-cgt-msp430_20.2.5.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$161, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$T$161, DW_AT_decl_column(0x19)

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

$C$DW$216	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$216, DW_AT_name("PC")
	.dwattr $C$DW$216, DW_AT_location[DW_OP_reg0]

$C$DW$217	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$217, DW_AT_name("SP")
	.dwattr $C$DW$217, DW_AT_location[DW_OP_reg1]

$C$DW$218	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$218, DW_AT_name("SR")
	.dwattr $C$DW$218, DW_AT_location[DW_OP_reg2]

$C$DW$219	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$219, DW_AT_name("CG")
	.dwattr $C$DW$219, DW_AT_location[DW_OP_reg3]

$C$DW$220	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$220, DW_AT_name("r4")
	.dwattr $C$DW$220, DW_AT_location[DW_OP_reg4]

$C$DW$221	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$221, DW_AT_name("r5")
	.dwattr $C$DW$221, DW_AT_location[DW_OP_reg5]

$C$DW$222	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$222, DW_AT_name("r6")
	.dwattr $C$DW$222, DW_AT_location[DW_OP_reg6]

$C$DW$223	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$223, DW_AT_name("r7")
	.dwattr $C$DW$223, DW_AT_location[DW_OP_reg7]

$C$DW$224	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$224, DW_AT_name("r8")
	.dwattr $C$DW$224, DW_AT_location[DW_OP_reg8]

$C$DW$225	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$225, DW_AT_name("r9")
	.dwattr $C$DW$225, DW_AT_location[DW_OP_reg9]

$C$DW$226	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$226, DW_AT_name("r10")
	.dwattr $C$DW$226, DW_AT_location[DW_OP_reg10]

$C$DW$227	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$227, DW_AT_name("r11")
	.dwattr $C$DW$227, DW_AT_location[DW_OP_reg11]

$C$DW$228	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$228, DW_AT_name("r12")
	.dwattr $C$DW$228, DW_AT_location[DW_OP_reg12]

$C$DW$229	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$229, DW_AT_name("r13")
	.dwattr $C$DW$229, DW_AT_location[DW_OP_reg13]

$C$DW$230	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$230, DW_AT_name("r14")
	.dwattr $C$DW$230, DW_AT_location[DW_OP_reg14]

$C$DW$231	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$231, DW_AT_name("r15")
	.dwattr $C$DW$231, DW_AT_location[DW_OP_reg15]

$C$DW$232	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$232, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$232, DW_AT_location[DW_OP_reg16]

	.dwendtag $C$DW$CU


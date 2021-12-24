;-------------------------------------------------------------------------------
; MSP430 Assembler Code Template for use with TI Code Composer Studio
;
;
;-------------------------------------------------------------------------------
            .cdecls C,LIST,"msp430.h"       ; Include device header file
            
;-------------------------------------------------------------------------------
            .def    RESET                   ; Export program entry-point to
                                            ; make it known to linker.
;-------------------------------------------------------------------------------
            .text                           ; Assemble into program memory.
            .retain                         ; Override ELF conditional linking
                                            ; and retain current section.
            .retainrefs                     ; And retain any sections that have
                                            ; references to current section.

;-------------------------------------------------------------------------------
RESET       mov.w   #__STACK_END,SP         ; Initialize stackpointer
StopWDT     mov.w   #WDTPW|WDTHOLD,&WDTCTL  ; Stop watchdog timer


;-------------------------------------------------------------------------------
; Main loop here
;-------------------------------------------------------------------------------
init:
    MOV.W   #0x2000,R4
    MOV.W   R4,R5
    MOV.W   #0x2004,R6
    BIC.B   #2,&P4DIR
    BIS.B   #2,&P4REN
    BIS.B   #2,&P4OUT
    BIC.B   #-1,&P4IFG
    BIS.B   #2,&P4IES
    BIS.B   #2,&P4IE
    NOP     
    EINT    
    NOP     
    EINT    
    NOP     
    DINT    
    NOP     
    BIC.B   #1,&PM5CTL0_L
main:
movement:
    MOV.W   &Con1,R7
    MOV.W   Con2,R8
    MOV.W   @R4,R9
    MOV.W   @R5+,R10
    MOV.W   @R5+,R11
    MOV.W   0x0002(R4),0x0004(R6)
manipulation:
    MOV.W   #0x2000,R4
    ADD.W   R4,Const2
    ADD.W   &Con1,R5
    MOV.W   #0x2000,R4
    MOV.W   #0x2004,R6
    ADD.W   @R4,0x0004(R6)
    ADD.W   #0x2000,Var1
    ADD.W   @R5+,R6
    ADDC.W  R4,R5
    ADDC.W  R5,Const2
    ADDC.W  &Con1,R5
    MOV.W   #0x2000,R4
    MOV.W   #0x2004,R6
    ADDC.W  @R4,0x0004(R6)
    ADDC.W  #0x2000,Var1
    ADDC.W  @R5+,R6
    SETC    
    ADC.W   R4
    ADC.W   Const2
    ADC.W   &Con1
    MOV.W   #0x2000,Var1
    MOV.W   #0x2000,R4
    SETC    
    ADC.W   Var1
    ADC.W   0x0004(R4)
    SUB.W   R4,R5
    SUB.W   R4,Const2
    SUB.W   &Con1,R5
    MOV.W   #0x2000,R4
    MOV.W   #0x2004,R6
    SUB.W   @R4,0x0004(R6)
    SUB.W   #0x2000,Var1
    SUB.W   @R5+,R6
    SUBC.W  R5,R6
    SUBC.W  R4,Const2
    SUBC.W  &Con1,R5
    MOV.W   #0x2000,R4
    MOV.W   #0x2004,R6
    SUBC.W  @R4,0x0004(R6)
    SUBC.W  #0x2000,Var1
    SUBC.W  @R5+,R6
    SETC    
    SBC.W   R4
    SBC.W   Const2
    SBC.W   &Con1
    MOV.W   #0x2000,Var1
    MOV.W   #0x2000,R4
    SETC    
    SBC.W   Var1
    SBC.W   0x0004(R4)
    SETC    
    DADD.W  R4,R5
    DADD.W  R4,Const2
    DADD.W  &Con1,R5
    MOV.W   #0x2000,R4
    MOV.W   #0x2004,R6
    SETC    
    DADD.W  @R4,0x0004(R6)
    DADD.W  #0x2000,Var1
    DADD.W  @R5+,R6
    SETC    
    DADC.W  R4
    DADC.W  Const2
    DADC.W  &Con1
    MOV.W   #0x2000,Var1
    MOV.W   #0x2000,R4
    SETC    
    DADC.W  Var1
    DADC.W  0x0004(R4)
    INC.W   R4
    INC.W   Const2
    INC.W   &Con1
    MOV.W   #0x2000,Var1
    MOV.W   #0x2000,R4
    INC.W   Var1
    INC.W   0x0004(R4)
    INCD.W  R4
    INCD.W  Const2
    INCD.W  &Con1
    MOV.W   #0x2000,Var1
    MOV.W   #0x2000,R4
    INCD.W  Var1
    INCD.W  0x0004(R4)
    DEC.W   R4
    DEC.W   Const2
    DEC.W   &Con1
    MOV.W   #0x2000,Var1
    MOV.W   #0x2000,R4
    DEC.W   Var1
    DEC.W   0x0004(R4)
    DECD.W  R4
    DECD.W  Const2
    DECD.W  &Con1
    MOV.W   #0x2000,Var1
    MOV.W   #0x2000,R4
    DECD.W  Var1
    DECD.W  0x0004(R4)
    MOV.B   #0x004e,R4
    INV.B   R4
    MOV.W   #0x2032,R4
    INV.W   R4
    INV.W   &Const1
    INV.W   Const10
    MOV.W   #0x2032,R4
    INV.W   0x0002(R4)
    MOV.B   #0x00aa,R4
    AND.B   #0x000f,R4
    AND.W   R4,R5
    AND.W   R4,Const2
    AND.W   &Con1,R5
    MOV.W   #0x2000,R4
    MOV.W   #0x2004,R6
    AND.W   @R4,0x0004(R6)
    AND.W   #0x2000,Var1
    AND.W   @R5+,R6
    MOV.B   #0x00aa,R4
    BIS.B   #0x0249,R4
    BIS.W   R4,R5
    BIS.W   R4,Const2
    BIS.W   &Con1,R5
    BIS.W   #0x2000,R4
    BIS.W   #0x2004,R6
    BIS.W   @R4,0x0004(R6)
    BIS.W   #0x2000,Var1
    BIS.W   @R5+,R6
    MOV.B   #0x00aa,R4
    XOR.B   #0x0055,R4
    XOR.W   R5,R6
    XOR.W   R4,Const2
    XOR.W   &Con1,R5
    MOV.W   #0x2000,R4
    MOV.W   #0x2004,R6
    XOR.W   @R4,0x0004(R6)
    XOR.W   #0x2000,Var1
    XOR.W   @R5+,R6
    MOV.B   #0x00aa,R4
    BIS.B   #0x0249,R4
    BIS.W   R4,R5
    BIS.W   R4,Const2
    BIS.W   &Con1,R5
    MOV.W   #0x2000,R4
    MOV.W   #0x2004,R6
    BIS.W   @R4,0x0004(R6)
    BIS.W   #0x2000,Var1
    BIS.W   @R5+,R6
    MOV.B   #0x00aa,R4
    BIC.B   #0x0018,R4
    BIC.W   R4,R5
    BIC.W   R4,Const2
    BIC.W   &Con1,R5
    MOV.W   #0x2000,R4
    MOV.W   #0x2004,R6
    BIC.W   @R4,0x0004(R6)
    BIC.W   #0x2000,Var1
    BIC.W   @R5+,R6
    MOV.B   #0x00aa,R4
    BIT.B   #0x0018,R4
    BIT.W   R4,R5
    BIT.W   R4,Const2
    BIT.W   &Con1,R5
    MOV.W   #0x2000,R4
    MOV.W   #0x2004,R6
    BIT.W   @R4,0x0004(R6)
    BIT.W   #0x2000,Var1
    BIT.W   @R5+,R6
    MOV.B   #0x0063,R5
    CMP.B   #0x0063,R5
    CMP.B   #0x004d,R5
    CMP.W   R4,R5
    CMP.W   R4,Const2
    CMP.W   &Con1,R5
    MOV.W   #0x2000,R4
    MOV.W   #0x2004,R6
    CMP.W   @R4,0x0004(R6)
    CMP.W   #0x2000,Var1
    CMP.W   @R5+,R6
    MOV.B   #0xff9d,R7
    CLR.B   R6
    TST.B   R6
    TST.B   R7
    TST.W   R4
    TST.W   Const2
    TST.W   &Con1
    MOV.W   #0x2000,Var1
    MOV.W   #0x2000,R4
    TST.W   Var1
    TST.W   0x0004(R4)
    MOV.B   #1,R4
    RLA.B   R4
    RLA.B   R4
    RLA.W   R4
    ADD.W   Const2,Const2
    RLA.W   &Con1
    MOV.W   #0x2000,Var1
    MOV.W   #0x2000,R4
    ADD.W   Var1,Var1
    RLA.W   0x0004(R4)
    MOV.B   #0x0020,R4
    RRA.B   R4
    RRA.B   R4
    RRA     R4
    RRA     Const2
    RRA     &Con1
    MOV.W   #0x2000,Var1
    MOV.W   #0x2000,R4
    RRA     Var1
    RRA     0x0004(R4)
    CLRC    
    MOV.B   #0x0080,R7
    RLC.B   R7
    RLC.B   R7
    RLC.W   R4
    ADDC.W  Const2,Const2
    RLC.W   &Con1
    MOV.W   #0x2000,Var1
    MOV.W   #0x2000,R4
    ADDC.W  Var1,Var1
    RLC.W   0x0004(R4)
    CLRC    
    MOV.B   #1,R8
    RRC.B   R8
    RRC.B   R8
    RRC     R4
    RRC     Const2
    RRC     &Con1
    MOV.W   #0x2000,Var1
    MOV.W   #0x2000,R4
    RRC     Var1
    RRC     0x0004(R4)
    MOV.W   #0x00ff,R4
    SWPB    R4
    SWPB    Const2
    SWPB    &Con1
    MOV.W   #0x2000,Var1
    MOV.W   #0x2000,R4
    SWPB    Var1
    SWPB    0x0004(R4)
    MOV.W   #0x00ff,R4
    SXT     R4
    SXT     Const2
    SXT     &Con1
    MOV.W   #0x2000,Var1
    MOV.W   #0x2000,R4
    SXT     Var1
    SXT     0x0004(R4)
sr_flags:
    SETC    
    SETN    
    SETZ    
    CLRC    
    CLRN    
    CLRZ    
    MOV.W   #0x001c,R10
    CLR.W   R10
    CLR.W   Var1
    CLR.W   &Con1
    MOV.W   #0x2000,R10
    CLR.W   0x0002(R10)
program_flow:
    SETC    
    JHS     (_jc)
_jc:
    CLRC    
    JHS     (_jc)
    SETC    
    JHS     (_jhs)
_jhs:
    CLRC    
    JHS     (_jhs)
    SETZ    
    JEQ     (_jeq)
_jeq:
    CLRZ    
    JEQ     (_jeq)
    SETZ    
    JEQ     (_jz)
_jz:
    CLRZ    
    JEQ     (_jz)
    MOV.W   #1,R4
    TST.W   R4
    JGE     (_jge)
_jge:
    CLR.W   R4
    CMP.W   #1,R4
    JGE     (_jge)
    CLR.W   R4
    CMP.W   #1,R4
    JL      (_jl)
_jl:
    MOV.W   #1,R4
    TST.W   R4
    JL      (_jl)
    JMP     (_jmp)
_jmp:
    NOP     
    SETN    
    JN      (_jn)
_jn:
    CLRN    
    JN      (_jn)
    CLRC    
    JLO     (_jnc)
_jnc:
    SETC    
    JLO     (_jnc)
    CLRN    
    JLO     (_jlo)
_jlo:
    SETN    
    JLO     (_jlo)
    CLRZ    
    JNE     (_jne)
_jne:
    SETZ    
    JNE     (_jne)
    CLRZ    
    JNE     (_jnz)
_jnz:
    SETZ    
    JNE     (_jnz)
    MOV.W   #0x847a,R4
    BR      R4
br_1:
    MOV.W   #0x8484,Const2
    BR      Const2
br_2:
    BR      #br_3
br_3:
    NOP     
stack:
    MOV.W   #0x00ff,R4
    PUSH    #0xf0f0
    PUSH    R4
    PUSH    &Con1
    MOV.W   #0x2000,R4
    PUSH    0x0000(R4)
    PUSH    #0x2000
    PUSH    @R5+
    POP.W   R4
    POP.W   Const2
    POP.W   &Con1
    MOV.W   #0x2000,Var1
    MOV.W   #0x2000,R4
    POP.W   Var1
    POP.W   0x0004(R4)
    POP.W   R4
subroutine:
    CLR.W   R5
    MOV.W   #0x84e4,R4
    MOV.W   #0x84e4,Var1
    CALL    #add_3
    CALL    R4
    CALL    Var1
    CALL    #add_3
    BR      #main
    NOP     
add_3:
    ADD.W   #0x0003,R5
    RET     

;-------------------------------------------------------------------------------
; Stack Pointer definition
;-------------------------------------------------------------------------------
            .global __STACK_END
            .sect   .stack

;-------------------------------------------------------------------------------
; Interrupt Vectors
;-------------------------------------------------------------------------------
            .sect   ".reset"                ; MSP430 RESET Vector
            .short  RESET


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
    mov.w   #0x2000,R4
    mov.w   R4,R5
    mov.w   #0x2004,R6
    bic.b   #2,&P4DIR
    bis.b   #2,&P4REN
    bis.b   #2,&P4OUT
    bic.b   #-1,&P4IFG
    bis.b   #2,&P4IES
    bis.b   #2,&P4IE
    nop     
    eint    
    nop     
    eint    
    nop     
    dint    
    nop     
    bic.b   #1,&PM5CTL0_L
main:
movement:
    mov.w   &Con1,R7
    mov.w   Con2,R8
    mov.w   @R4,R9
    mov.w   @R5+,R10
    mov.w   @R5+,R11
    mov.w   0x0002(R4),0x0004(R6)
manipulation:
    mov.w   #0x2000,R4
    add.w   R4,Const2
    add.w   &Con1,R5
    mov.w   #0x2000,R4
    mov.w   #0x2004,R6
    add.w   @R4,0x0004(R6)
    add.w   #0x2000,Var1
    add.w   @R5+,R6
    addc.w  R4,R5
    addc.w  R5,Const2
    addc.w  &Con1,R5
    mov.w   #0x2000,R4
    mov.w   #0x2004,R6
    addc.w  @R4,0x0004(R6)
    addc.w  #0x2000,Var1
    addc.w  @R5+,R6
    setc    
    adc.w   R4
    adc.w   Const2
    adc.w   &Con1
    mov.w   #0x2000,Var1
    mov.w   #0x2000,R4
    setc    
    adc.w   Var1
    adc.w   0x0004(R4)
    sub.w   R4,R5
    sub.w   R4,Const2
    sub.w   &Con1,R5
    mov.w   #0x2000,R4
    mov.w   #0x2004,R6
    sub.w   @R4,0x0004(R6)
    sub.w   #0x2000,Var1
    sub.w   @R5+,R6
    subc.w  R5,R6
    subc.w  R4,Const2
    subc.w  &Con1,R5
    mov.w   #0x2000,R4
    mov.w   #0x2004,R6
    subc.w  @R4,0x0004(R6)
    subc.w  #0x2000,Var1
    subc.w  @R5+,R6
    setc    
    sbc.w   R4
    sbc.w   Const2
    sbc.w   &Con1
    mov.w   #0x2000,Var1
    mov.w   #0x2000,R4
    setc    
    sbc.w   Var1
    sbc.w   0x0004(R4)
    setc    
    dadd.w  R4,R5
    dadd.w  R4,Const2
    dadd.w  &Con1,R5
    mov.w   #0x2000,R4
    mov.w   #0x2004,R6
    setc    
    dadd.w  @R4,0x0004(R6)
    dadd.w  #0x2000,Var1
    dadd.w  @R5+,R6
    setc    
    dadc.w  R4
    dadc.w  Const2
    dadc.w  &Con1
    mov.w   #0x2000,Var1
    mov.w   #0x2000,R4
    setc    
    dadc.w  Var1
    dadc.w  0x0004(R4)
    inc.w   R4
    inc.w   Const2
    inc.w   &Con1
    mov.w   #0x2000,Var1
    mov.w   #0x2000,R4
    inc.w   Var1
    inc.w   0x0004(R4)
    incd.w  R4
    incd.w  Const2
    incd.w  &Con1
    mov.w   #0x2000,Var1
    mov.w   #0x2000,R4
    incd.w  Var1
    incd.w  0x0004(R4)
    dec.w   R4
    dec.w   Const2
    dec.w   &Con1
    mov.w   #0x2000,Var1
    mov.w   #0x2000,R4
    dec.w   Var1
    dec.w   0x0004(R4)
    decd.w  R4
    decd.w  Const2
    decd.w  &Con1
    mov.w   #0x2000,Var1
    mov.w   #0x2000,R4
    decd.w  Var1
    decd.w  0x0004(R4)
    mov.b   #0x004e,R4
    inv.b   R4
    mov.w   #0x2032,R4
    inv.w   R4
    inv.w   &Const1
    inv.w   Const10
    mov.w   #0x2032,R4
    inv.w   0x0002(R4)
    mov.b   #0x00aa,R4
    and.b   #0x000f,R4
    and.w   R4,R5
    and.w   R4,Const2
    and.w   &Con1,R5
    mov.w   #0x2000,R4
    mov.w   #0x2004,R6
    and.w   @R4,0x0004(R6)
    and.w   #0x2000,Var1
    and.w   @R5+,R6
    mov.b   #0x00aa,R4
    bis.b   #0x0249,R4
    bis.w   R4,R5
    bis.w   R4,Const2
    bis.w   &Con1,R5
    bis.w   #0x2000,R4
    bis.w   #0x2004,R6
    bis.w   @R4,0x0004(R6)
    bis.w   #0x2000,Var1
    bis.w   @R5+,R6
    mov.b   #0x00aa,R4
    xor.b   #0x0055,R4
    xor.w   R5,R6
    xor.w   R4,Const2
    xor.w   &Con1,R5
    mov.w   #0x2000,R4
    mov.w   #0x2004,R6
    xor.w   @R4,0x0004(R6)
    xor.w   #0x2000,Var1
    xor.w   @R5+,R6
    mov.b   #0x00aa,R4
    bis.b   #0x0249,R4
    bis.w   R4,R5
    bis.w   R4,Const2
    bis.w   &Con1,R5
    mov.w   #0x2000,R4
    mov.w   #0x2004,R6
    bis.w   @R4,0x0004(R6)
    bis.w   #0x2000,Var1
    bis.w   @R5+,R6
    mov.b   #0x00aa,R4
    bic.b   #0x0018,R4
    bic.w   R4,R5
    bic.w   R4,Const2
    bic.w   &Con1,R5
    mov.w   #0x2000,R4
    mov.w   #0x2004,R6
    bic.w   @R4,0x0004(R6)
    bic.w   #0x2000,Var1
    bic.w   @R5+,R6
    mov.b   #0x00aa,R4
    bit.b   #0x0018,R4
    bit.w   R4,R5
    bit.w   R4,Const2
    bit.w   &Con1,R5
    mov.w   #0x2000,R4
    mov.w   #0x2004,R6
    bit.w   @R4,0x0004(R6)
    bit.w   #0x2000,Var1
    bit.w   @R5+,R6
    mov.b   #0x0063,R5
    cmp.b   #0x0063,R5
    cmp.b   #0x004d,R5
    cmp.w   R4,R5
    cmp.w   R4,Const2
    cmp.w   &Con1,R5
    mov.w   #0x2000,R4
    mov.w   #0x2004,R6
    cmp.w   @R4,0x0004(R6)
    cmp.w   #0x2000,Var1
    cmp.w   @R5+,R6
    mov.b   #0xff9d,R7
    clr.b   R6
    tst.b   R6
    tst.b   R7
    tst.w   R4
    tst.w   Const2
    tst.w   &Con1
    mov.w   #0x2000,Var1
    mov.w   #0x2000,R4
    tst.w   Var1
    tst.w   0x0004(R4)
    mov.b   #1,R4
    rla.b   R4
    rla.b   R4
    rla.w   R4
    add.w   Const2,Const2
    rla.w   &Con1
    mov.w   #0x2000,Var1
    mov.w   #0x2000,R4
    add.w   Var1,Var1
    rla.w   0x0004(R4)
    mov.b   #0x0020,R4
    rra.b   R4
    rra.b   R4
    rra     R4
    rra     Const2
    rra     &Con1
    mov.w   #0x2000,Var1
    mov.w   #0x2000,R4
    rra     Var1
    rra     0x0004(R4)
    clrc    
    mov.b   #0x0080,R7
    rlc.b   R7
    rlc.b   R7
    rlc.w   R4
    addc.w  Const2,Const2
    rlc.w   &Con1
    mov.w   #0x2000,Var1
    mov.w   #0x2000,R4
    addc.w  Var1,Var1
    rlc.w   0x0004(R4)
    clrc    
    mov.b   #1,R8
    rrc.b   R8
    rrc.b   R8
    rrc     R4
    rrc     Const2
    rrc     &Con1
    mov.w   #0x2000,Var1
    mov.w   #0x2000,R4
    rrc     Var1
    rrc     0x0004(R4)
    mov.w   #0x00ff,R4
    swpb    R4
    swpb    Const2
    swpb    &Con1
    mov.w   #0x2000,Var1
    mov.w   #0x2000,R4
    swpb    Var1
    swpb    0x0004(R4)
    mov.w   #0x00ff,R4
    sxt     R4
    sxt     Const2
    sxt     &Con1
    mov.w   #0x2000,Var1
    mov.w   #0x2000,R4
    sxt     Var1
    sxt     0x0004(R4)
sr_flags:
    setc    
    setn    
    setz    
    clrc    
    clrn    
    clrz    
    mov.w   #0x001c,R10
    clr.w   R10
    clr.w   Var1
    clr.w   &Con1
    mov.w   #0x2000,R10
    clr.w   0x0002(R10)
program_flow:
    setc    
    jhs     (_jc)
_jc:
    clrc    
    jhs     (_jc)
    setc    
    jhs     (_jhs)
_jhs:
    clrc    
    jhs     (_jhs)
    setz    
    jeq     (_jeq)
_jeq:
    clrz    
    jeq     (_jeq)
    setz    
    jeq     (_jz)
_jz:
    clrz    
    jeq     (_jz)
    mov.w   #1,R4
    tst.w   R4
    jge     (_jge)
_jge:
    clr.w   R4
    cmp.w   #1,R4
    jge     (_jge)
    clr.w   R4
    cmp.w   #1,R4
    jl      (_jl)
_jl:
    mov.w   #1,R4
    tst.w   R4
    jl      (_jl)
    jmp     (_jmp)
_jmp:
    nop     
    setn    
    jn      (_jn)
_jn:
    clrn    
    jn      (_jn)
    clrc    
    jlo     (_jnc)
_jnc:
    setc    
    jlo     (_jnc)
    clrn    
    jlo     (_jlo)
_jlo:
    setn    
    jlo     (_jlo)
    clrz    
    jne     (_jne)
_jne:
    setz    
    jne     (_jne)
    clrz    
    jne     (_jnz)
_jnz:
    setz    
    jne     (_jnz)
    mov.w   #0x847a,R4
    br      R4
br_1:
    mov.w   #0x8484,Const2
    br      Const2
br_2:
    br      #br_3
br_3:
    nop     
stack:
    mov.w   #0x00ff,R4
    push    #0xf0f0
    push    R4
    push    &Con1
    mov.w   #0x2000,R4
    push    0x0000(R4)
    push    #0x2000
    push    @R5+
    pop.w   R4
    pop.w   Const2
    pop.w   &Con1
    mov.w   #0x2000,Var1
    mov.w   #0x2000,R4
    pop.w   Var1
    pop.w   0x0004(R4)
    pop.w   R4
subroutine:
    clr.w   R5
    mov.w   #0x84e4,R4
    mov.w   #0x84e4,Var1
    call    #add_3
    call    R4
    call    Var1
    call    #add_3
    br      #main
    nop     
add_3:
    add.w   #0x0003,R5
    ret     

;-------------------------------------------------------------------------------
; Memory Allocation
;-------------------------------------------------------------------------------

            .data									; allocate variables in data memory
            .retain									; keep these statements even if not used
Con1:		.word 0xaced
Con2:		.word 0xbeef
Var1:		.space 28
Const1:		.word 0xaaaa
Const2:		.word 0xaaa1
Const3:		.word 0xabab
Const4:		.word 0xcbcb
Const5:		.word 0x4321
Const6:		.word 0xcccc
Const7:		.word 0xabab
Const8:		.word 0xcbcb
Const9:		.word 0x1234
Const10:		.word 0xcccc
Const11:		.word 0xabab
Const12:		.word 0xcbcb

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


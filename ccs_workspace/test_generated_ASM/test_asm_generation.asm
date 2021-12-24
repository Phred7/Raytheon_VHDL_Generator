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
main:

    MOV.W   #0x5a80,&WDTCTL_L

    BIC.W   #1,&PM5CTL0_L

$C$L1:

    BIS.B   #0x0010,&P1OUT

    MOV.W   #0x0fff,0x0000(SP)

    TST.W   0x0000(SP)

$C$L2:

    MOV.W   #0x0fff,0x0002(SP)

    TST.W   0x0002(SP)

$C$L3:

    DEC.W   0x0002(SP)

$C$L4:

    DEC.W   0x0000(SP)

$C$L5:

    AND.B   #0x00ef,&P1OUT

    MOV.W   #0x0fff,0x0000(SP)

    TST.W   0x0000(SP)

$C$L6:

    MOV.W   #0x0fff,0x0002(SP)

    TST.W   0x0002(SP)

$C$L7:

    DEC.W   0x0002(SP)

$C$L8:

    DEC.W   0x0000(SP)

    JMP     ($C$L1)

    NOP

__mpu_init:

    MOV.W   R15,0x0002(SP)

    MOV.W   R13,0x0004(SP)

    BIS.W   R14,R15

    BIS.W   0x0004(SP),R15

abort:

C$$EXIT:

    NOP

_system_pre_init:

    RETA



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


            

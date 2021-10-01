;-------------------------------------------------------------------------------
; MSP430 Assembler Code Template for use with TI Code Composer Studio
; Walker Ward
; 09/16/2021
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
				mov.w	#02000h, R4		; use immediate to init R4 with val
				mov.w	R4, R5			; init R5 with val of R4
				mov.w	#Var1, R6		; init R6 with addr of Var1


main: 					; for each instruction they can be implemnted with 7 addr'ing modes. Not all can be modes can be implemented in the dst.


movement:

				mov.w	&02000h, R7		; use absolute to put the val at the addr 2000h into R7
				mov.w	Con2, R8		; use symbolic to put contents of Con2 into R8
				mov.w	0(R4), R9		; use indexed to copy val of Con1 into R9 using R4
				mov.w	@R5+, R10		; use auto-incriment to copy Con1 into R10
				mov.w	@R5+, R11		; use auto-increment to copy Con2 into R11
				mov.w	2(R4), 4(R6)	; use indexed to copy Con2 into 3rd word of Var1 using R4 and R6 which contain addrs to Con1 and Var1 respectively

manipulation:

;add.w-------------------------------------------------------------------------

				add.w	R4, Const2
				add.w	&02000h, R5
				mov.w	#02000h, R4
				mov.w   #Var1, R6
				add.w	0(R4), 4(R6)
				add.w	#Con1, #Var1
				add.w	@R5+, R6

;addc.w----------------------------------------------------------------------

				addc.w	R4, R5
				addc.w	R5, Const2
				addc.w	&02000h, R5
				mov.w	#02000h, R4
				mov.w   #Var1, R6
				addc.w	0(R4), 4(R6)
				addc.w	#Con1, #Var1
				addc.w	@R5+, R6

;sub.w------------------------------------------------------------------------

				sub.w 	R4, R5
				sub.w	R4, Const2
				sub.w	&02000h, R5
				mov.w	#02000h, R4
				mov.w   #Var1, R6
				sub.w	0(R4), 4(R6)
				sub.w	#Con1, #Var1
				sub.w	@R5+, R6

;subc.w--------------------------------------------

				subc.w	R5,	R6
				subc.w	R4, Const2
				subc.w	&02000h, R5
				mov.w	#02000h, R4
				mov.w   #Var1, R6
				subc.w	0(R4), 4(R6)
				subc.w	#Con1, #Var1
				subc.w	@R5+, R6

;inc-----------------------------------------------

				inc		R4
				inc		Const2
				inc		&02000h
				mov.w	#02000h, Var1
				mov.w	#02000h, R4
				inc		#Var1
				inc		4(R4)
				inc		@R4+


;incd------------------------------------------------------------

				incd	R4
				incd	Const2
				incd	&02000h
				mov.w	#02000h, Var1
				mov.w	#02000h, R4
				incd	#Var1
				incd	4(R4)
				incd	@R4+

;dec----------------------------------------------------------------

	   			dec		R4
				dec		Const2
				dec		&02000h
				mov.w	#02000h, Var1
				mov.w	#02000h, R4
				dec		#Var1
				dec		4(R4)
				dec		@R4+

;decd------------------------------------------------------------

				decd	R4
				decd	Const2
				decd	&02000h
				mov.w	#02000h, Var1
				mov.w	#02000h, R4
				decd	#Var1
				decd	4(R4)
				decd	@R4+

;inv.b-----------------------------------------------------------

				inv.b	R4

;and.b-----------------------------------------------------------

				mov.b	#10101010b, R4
				and.b	#01010101b, R4

;or.b--------------------------------------------------------------

				mov.b	#10101010b, R4
				or.b	#01010101b, R4

;xor.b------------------------------------------------------------

				mov.b	#10101010b, R4
				xor.b	#01010101b, R4

;bis.b--------------------------------------------------------------------------

				mov.b	#00000000b, R4
				bis.b	#00011000b, R4

;bic.b-------------------------------------------------------------------------------

				bic.b	#00011000b, R4

;cmp.b----------------------------------------------------------------
				mov.b	#99, R5

				cmp.b	#99, R5	;0x0083B8
				cmp.b	#77, R5

;tst.b----------------------------------------------------------------

				mov.b	#-99, R7
				mov.b	#00h, R6

				tst.b	R6
				tst.b	R7


;rla.b---------------------------------------------------------------------------

				mov.b	#000000001b, R4
				rla.b	R4
				rla.b	R4

;rrc.b-------------------------------------------------------------------------------

				rra.b	R4
				rra.b	R4

;rlc.b-------------------------------------------------------------------------------

				clrc
				mov.b	#10000000b, R7

				rlc.b	R7
				rlc.b	R7
				rlc.b	R7

;rrc.b------------------------------------------------------------------------------

				clrc
				mov.b	#00000001b, R8

				rrc.b	R8
				rrc.b	R8
				rrc.b	R8

clears:
				clrc
				clrn
				clrz

				mov.w	00011100b, R10
				clr		R10
				clr		#Var1
				clr		&02000h
				mov.w	02000h, R10
				clr		2(R10)
				clr		@R10+

program_flow:

;jmp-------------------------------------------------------------------------------
				mov.w	#0, R4
				jmp		do_this_1st


stack:


subroutine:


do_this_1st:
				jmp		main
				nop

;-------------------------------------------------------------------------------
; Memory Allocation
;-------------------------------------------------------------------------------

			.data									; allocate variables in data memory
			.retain									; keep these statements even if not used

Con1:		.short	0ACEDh
Con2:		.short	0BEEFh
Var1:		.space	28

Const1:		.short 0AAAAh
Const2:		.short 0AAA1h
Const3:		.short 0ABABh
Const4:		.short 0CBCBh
Const5:		.short 4321h
Const6:		.short 0CCCCh
Const7:		.short 0ABABh
Const8:		.short 0CBCBh
Const9:		.short 01234h
Const10:	.short 0CCCCh
Const11:	.short 0ABABh
Const12:	.short 0CBCBh

                                            

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
            

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

				bic.b	#BIT1, &P4DIR			; set P4.1 as input - SW1
				bis.b	#BIT1, &P4REN			; EN pull up/down
				bis.b	#BIT1, &P4OUT			; pull-up res.
				bic.b	#11111111b, &P4IFG		; clear interrupt flags on P4
				bis.b   #BIT1, &P4IES			; set as falling edge (high->low)
				bis.b	#BIT1, &P4IE			; assert local interrupt enable

				nop
				bis.w	#GIE, SR				; assert global interrupt flag
				nop
				dint							; clear global interrupt flag
				nop
				eint							; assert global interrupt flag
				nop

				bic.b	#LOCKLPM5, &PM5CTL0		; disable DIO low-power default

main:


; data manipulation instructions
movement:

				mov.w	&02000h, R7		; use absolute to put the val at the addr 2000h into R7
				mov.w	Con2, R8		; use symbolic to put contents of Con2 into R8
				mov.w	0(R4), R9		; use indexed to copy val of Con1 into R9 using R4
				mov.w	@R5+, R10		; use auto-incriment to copy Con1 into R10
				mov.w	@R5+, R11		; use auto-increment to copy Con2 into R11
				mov.w	2(R4), 4(R6)	; use indexed to copy Con2 into 3rd word of Var1 using R4 and R6 which contain addrs to Con1 and Var1 respectively

; data manipulation instructions
manipulation:

;add.w-------------------------------------------------------------------------

				mov.w	#02000h, R4
				add.w	R4, Const2
				add.w	&02000h, R5
				mov.w	#02000h, R4
				mov.w   #Var1, R6
				add.w	0(R4), 4(R6)
				add.w	#Con1, Var1
				add.w	@R5+, R6

;addc.w----------------------------------------------------------------------

				addc.w	R4, R5
				addc.w	R5, Const2
				addc.w	&02000h, R5
				mov.w	#02000h, R4
				mov.w   #Var1, R6
				addc.w	0(R4), 4(R6)
				addc.w	#Con1, Var1
				addc.w	@R5+, R6

;adc.w----------------------------------------------------------------------

				setc
				adc.w	R4
				adc.w	Const2
				adc.w	&02000h
				mov.w	#02000h, Var1
				mov.w	#02000h, R4
				setc
				adc.w	Var1
				adc.w	4(R4)

;sub.w------------------------------------------------------------------------

				sub.w 	R4, R5
				sub.w	R4, Const2
				sub.w	&02000h, R5
				mov.w	#02000h, R4
				mov.w   #Var1, R6
				sub.w	0(R4), 4(R6)
				sub.w	#Con1, Var1
				sub.w	@R5+, R6

;subc.w--------------------------------------------

				subc.w	R5,	R6
				subc.w	R4, Const2
				subc.w	&02000h, R5
				mov.w	#02000h, R4
				mov.w   #Var1, R6
				subc.w	0(R4), 4(R6)
				subc.w	#Con1, Var1
				subc.w	@R5+, R6

;sbc.w----------------------------------------------------------------------

				setc
				sbc.w	R4
				sbc.w	Const2
				sbc.w	&02000h
				mov.w	#02000h, Var1
				mov.w	#02000h, R4
				setc
				sbc.w	Var1
				sbc.w	4(R4)

;dadd-----------------------------------------------

				setc
				dadd.w 	R4, R5
				dadd.w	R4, Const2
				dadd.w	&02000h, R5
				mov.w	#02000h, R4
				mov.w   #Var1, R6
				setc
				dadd.w	0(R4), 4(R6)
				dadd.w	#Con1, Var1
				dadd.w	@R5+, R6

;dadc-----------------------------------------------

				setc
				dadc.w	R4
				dadc.w	Const2
				dadc.w	&02000h
				mov.w	#02000h, Var1
				mov.w	#02000h, R4
				setc
				dadc.w	Var1
				dadc.w	4(R4)

;inc-----------------------------------------------

				inc		R4
				inc		Const2
				inc		&02000h
				mov.w	#02000h, Var1
				mov.w	#02000h, R4
				inc		Var1
				inc		4(R4)


;incd------------------------------------------------------------

				incd	R4
				incd	Const2
				incd	&02000h
				mov.w	#02000h, Var1
				mov.w	#02000h, R4
				incd	Var1
				incd	4(R4)

;dec----------------------------------------------------------------

	   			dec		R4
				dec		Const2
				dec		&02000h
				mov.w	#02000h, Var1
				mov.w	#02000h, R4
				dec		Var1
				dec		4(R4)

;decd------------------------------------------------------------

				decd	R4
				decd	Const2
				decd	&02000h
				mov.w	#02000h, Var1
				mov.w	#02000h, R4
				decd	Var1
				decd	4(R4)

;inv-----------------------------------------------------------

				mov.b	#01001110b, R4
				inv.b	R4
				mov.w	#Const10, R4
				inv 	R4
				inv		&02020h
				inv		Const10
				mov.w	#Const10, R4
				inv		2(R4)

;and-----------------------------------------------------------

				mov.b	#10101010b, R4
				and.b	#00001111b, R4
				and.w 	R4, R5
				and.w	R4, Const2
				and.w	&02000h, R5
				mov.w	#02000h, R4
				mov.w   #Var1, R6
				and.w	0(R4), 4(R6)
				and.w	#Con1, Var1
				and.w	@R5+, R6


;or--------------------------------------------------------------

				mov.b	#10101010b, R4
				or.b	#00001111, R4
				or.w	R4, R5
				or.w	R4, Const2
				or.w	&02000h, R5
				or.w	#02000h, R4
				or.w   #Var1, R6
				or.w	0(R4), 4(R6)
				or.w	#Con1, Var1
				or.w	@R5+, R6

;xor------------------------------------------------------------

				mov.b	#10101010b, R4
				xor.b	#01010101b, R4
				xor.w	R5,	R6
				xor.w	R4, Const2
				xor.w	&02000h, R5
				mov.w	#02000h, R4
				mov.w   #Var1, R6
				xor.w	0(R4), 4(R6)
				xor.w	#Con1, Var1
				xor.w	@R5+, R6

;bis--------------------------------------------------------------------------

				mov.b	#10101010b, R4
				bis.b	#00001111, R4
				bis.w 	R4, R5
				bis.w	R4, Const2
				bis.w	&02000h, R5
				mov.w	#02000h, R4
				mov.w   #Var1, R6
				bis.w	0(R4), 4(R6)
				bis.w	#Con1, Var1
				bis.w	@R5+, R6

;bic-------------------------------------------------------------------------------

				mov.b	#10101010b, R4
				bic.b	#00011000b, R4
				bic.w 	R4, R5
				bic.w	R4, Const2
				bic.w	&02000h, R5
				mov.w	#02000h, R4
				mov.w   #Var1, R6
				bic.w	0(R4), 4(R6)
				bic.w	#Con1, Var1
				bic.w	@R5+, R6

;bit-------------------------------------------------------------------------------

				mov.b	#10101010b, R4
				bit.b	#00011000b, R4
				bit.w 	R4, R5
				bit.w	R4, Const2
				bit.w	&02000h, R5
				mov.w	#02000h, R4
				mov.w   #Var1, R6
				bit.w	0(R4), 4(R6)
				bit.w	#Con1, Var1
				bit.w	@R5+, R6

;cmp----------------------------------------------------------------

				mov.b	#99d, R5
				cmp.b	#99d, R5	;0x0083B8
				cmp.b	#77d, R5
				cmp.w 	R4, R5
				cmp.w	R4, Const2
				cmp.w	&02000h, R5
				mov.w	#02000h, R4
				mov.w   #Var1, R6
				cmp.w	0(R4), 4(R6)
				cmp.w	#Con1, Var1
				cmp.w	@R5+, R6

;tst----------------------------------------------------------------

				mov.b	#-99, R7
				mov.b	#00h, R6

				tst.b	R6
				tst.b	R7

				tst.w	R4
				tst.w	Const2
				tst.w	&02000h
				mov.w	#02000h, Var1
				mov.w	#02000h, R4
				tst.w	Var1
				tst.w	4(R4)


;rla.b---------------------------------------------------------------------------

				mov.b	#000000001b, R4
				rla.b	R4
				rla.b	R4

				rla.w	R4
				rla.w	Const2
				rla.w	&02000h
				mov.w	#02000h, Var1
				mov.w	#02000h, R4
				rla.w	Var1
				rla.w	4(R4)

;rrc.b-------------------------------------------------------------------------------

				mov.b	#000100000b, R4
				rra.b	R4
				rra.b	R4

				rra.w	R4
				rra.w	Const2
				rra.w	&02000h
				mov.w	#02000h, Var1
				mov.w	#02000h, R4
				rra.w	Var1
				rra.w	4(R4)

;rlc.b-------------------------------------------------------------------------------

				clrc
				mov.b	#10000000b, R7

				rlc.b	R7
				rlc.b	R7

				rlc.w	R4
				rlc.w	Const2
				rlc.w	&02000h
				mov.w	#02000h, Var1
				mov.w	#02000h, R4
				rlc.w	Var1
				rlc.w	4(R4)

;rrc.b------------------------------------------------------------------------------

				clrc
				mov.b	#00000001b, R8

				rrc.b	R8
				rrc.b	R8

				rrc.w	R4
				rrc.w	Const2
				rrc.w	&02000h
				mov.w	#02000h, Var1
				mov.w	#02000h, R4
				rrc.w	Var1
				rrc.w	4(R4)

;swpb------------------------------------------------------------------------------

				mov.w	#000FFh, R4
				swpb	R4
				swpb	Const2
				swpb	&02000h
				mov.w	#02000h, Var1
				mov.w	#02000h, R4
				swpb	Var1
				swpb	4(R4)

;sxt------------------------------------------------------------------------------

				mov.w	#000FFh, R4
				sxt		R4
				sxt		Const2
				sxt		&02000h
				mov.w	#02000h, Var1
				mov.w	#02000h, R4
				sxt		Var1
				sxt		4(R4)

;-------------- END manipulation --------------

; clear instructions
sr_flags:
;setx------------------------------------------------------------------------------

				setc
				setn
				setz

;clrx------------------------------------------------------------------------------

				clrc
				clrn
				clrz

				mov.w	#00011100b, R10
				clr		R10
				clr		Var1
				clr		&02000h
				mov.w	#02000h, R10
				clr		2(R10)


; program flow instructions
program_flow:

;jc--------------------------------------------------------------------------------

				setc
				jc		_jc
_jc:			clrc
				jc		_jc

;jhs-------------------------------------------------------------------------------

				setc
				jhs		_jhs
_jhs:			clrc
				jhs		_jhs

;jeq-------------------------------------------------------------------------------

				setz
				jeq		_jeq
_jeq:			clrz
				jeq		_jeq

;jz--------------------------------------------------------------------------------

				setz
				jz		_jz
_jz:			clrz
				jz		_jz

;jge-------------------------------------------------------------------------------
				mov.w	#01h, R4
				cmp		#00h, R4
				jge		_jge
_jge:			mov.w	#00h, R4
				cmp		#01h, R4
				jge		_jge

;jl--------------------------------------------------------------------------------

				mov.w	#00h, R4
				cmp		#01h, R4
				jl		_jl
_jl:			mov.w	#01h, R4
				cmp		#00h, R4
				jl		_jl

;jmp-------------------------------------------------------------------------------

				jmp		_jmp
_jmp:			nop

;jn--------------------------------------------------------------------------------

				setn
				jn		_jn
_jn:			clrn
				jn		_jn

;jnc-------------------------------------------------------------------------------

				clrn
				jnc		_jnc
_jnc:			setn
				jnc		_jnc

;jlo-------------------------------------------------------------------------------

				clrn
				jlo		_jlo
_jlo:			setn
				jlo		_jlo


;jne-------------------------------------------------------------------------------

				clrz
				jne		_jne
_jne:			setz
				jne		_jne

;jnz-------------------------------------------------------------------------------

				clrz
				jnz		_jnz
_jnz:			setz
				jnz		_jnz

;br--------------------------------------------------------------------------------

				mov.w	#br_1, R4
				br		R4
br_1:			mov.w	#br_2, Const2
				br		Const2
br_2:			br		#br_3
br_3:			nop

; stack instructions
stack:
;push.b-------------------------------------------------------------------------------

				mov.w	#000FFh, R4
				push.w	#0F0F0h
				push.w 	R4
				push.w	&02000h
				mov.w	#02000h, R4
				push.w	0(R4)
				push.w	#Con1
				push.w	@R5+

;pop.b--------------------------------------------------------------------------------

				pop.w	R4
				pop.w	Const2
				pop.w	&02000h
				mov.w	#02000h, Var1
				mov.w	#02000h, R4
				pop.w	Var1
				pop.w	4(R4)
				pop.w	R4


; subroutine isntructions
subroutine:

;call-------------------------------------------------------------------------------

				mov.w	#00h, R5
				mov.w	#add_3, R4
				mov.w	#add_3, Var1
				call	#add_3
				call	R4
				call	Var1
				call	#084E4h



				jmp		main
				nop

;-------------- END MAIN --------------

;-------------------------------------------------------------------------------
; Subroutines
;-------------------------------------------------------------------------------
add_3:

			add.w	#03h, R5
			ret

;-------------------------------------------------------------------------------
; Interrupt Service Routines
;-------------------------------------------------------------------------------

; Service SW1
press_SW_1:
			xor.b	#BIT6, &P6OUT
			bic.b	#BIT1, &P4IFG
     		reti
;-------------- END press_SW_1 --------------

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
            
            .sect 	".int22"
            .short	press_SW_1


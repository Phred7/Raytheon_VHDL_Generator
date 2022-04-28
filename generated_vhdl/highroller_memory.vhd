library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;


entity highroller_memory is
    port ( clk	: in	std_logic;
         MAB		: in	std_logic_vector(15 downto 0);
         MDB_in  	: out	std_logic_vector(15 downto 0);
         MDB_out  	: in	std_logic_vector(15 downto 0);
         write	    : in	std_logic;
         Byte       : in    std_logic);
end entity;

architecture highroller_memory_arch of highroller_memory is

type rom_type is array (32768 to 65535) of std_logic_vector(7 downto 0);  -- this is MAB: x8000 to xFFFF
    
constant ROM : rom_type :=(32768 => x"01",		-- Begin: .cinit DATA Section
						   32769 => x"00",
						   32770 => x"04",
						   32771 => x"00",
						   32772 => x"fc",
						   32773 => x"08",
						   32774 => x"dc",
						   32775 => x"05",
						   32776 => x"10",
						   32777 => x"80",
						   32778 => x"34",
						   32779 => x"82",
						   32780 => x"00",
						   32781 => x"80",
						   32782 => x"00",
						   32783 => x"20",
						   -- Begin: program memory TEXT Section
						   33128 => x"B2",		-- 008168: B240             MOV.W   #0x5a80,&WDTCTL_L
						   33129 => x"60",
						   33130 => x"80",		-- 00816a: 805A            
						   33131 => x"5A",
						   33132 => x"CC",		-- 00816c: CC01            
						   33133 => x"01",
						   33134 => x"D2",		-- 00816e: D2D3             BIS.B   #1,&P3DIR
						   33135 => x"F3",
						   33136 => x"24",		-- 008170: 2402            
						   33137 => x"02",
						   33138 => x"D2",		-- 008172: D2C3             BIC.B   #1,&P3OUT
						   33139 => x"E3",
						   33140 => x"22",		-- 008174: 2202            
						   33141 => x"02",
						   33142 => x"B0",		-- 008176: B012             CALL    #configTimer
						   33143 => x"32",
						   33144 => x"F4",		-- 008178: F481            
						   33145 => x"81",
						   33146 => x"B0",		-- 00817a: B012             CALL    #configUART
						   33147 => x"32",
						   33148 => x"CA",		-- 00817c: CA81            
						   33149 => x"81",
						   33150 => x"92",		-- 00817e: 92C3             BIC.W   #1,&PM5CTL0_L
						   33151 => x"E3",
						   33152 => x"30",		-- 008180: 3001            
						   33153 => x"01",
						   33154 => x"92",		-- 008182: 92D3             BIS.W   #1,&UCA1IE_L
						   33155 => x"F3",
						   33156 => x"9A",		-- 008184: 9A05            
						   33157 => x"05",
						   33158 => x"B2",		-- 008186: B2D0             BIS.W   #0x0010,&TB0CCTL0_L
						   33159 => x"F0",
						   33160 => x"10",		-- 008188: 1000            
						   33161 => x"00",
						   33162 => x"82",		-- 00818a: 8203            
						   33163 => x"03",
						   33164 => x"92",		-- 00818c: 92C3             BIC.W   #1,&TB0CCTL0_L
						   33165 => x"E3",
						   33166 => x"82",		-- 00818e: 8203            
						   33167 => x"03",
						   33168 => x"B2",		-- 008190: B2D0             BIS.W   #0x0010,&TB0CCTL1_L
						   33169 => x"F0",
						   33170 => x"10",		-- 008192: 1000            
						   33171 => x"00",
						   33172 => x"84",		-- 008194: 8403            
						   33173 => x"03",
						   33174 => x"92",		-- 008196: 92C3             BIC.W   #1,&TB0CCTL1_L
						   33175 => x"E3",
						   33176 => x"84",		-- 008198: 8403            
						   33177 => x"03",
						   33178 => x"32",		-- 00819a: 32D2             EINT    
						   33179 => x"F2",
						   33180 => x"FF",		-- 00819c: FF3F             JMP     ($C$L1)
						   33181 => x"5F",
						   -- Begin: __mspabi_slli
						   33182 => x"3D",		-- 00819e: 3DF0             AND.W   #0x000f,R13
						   33183 => x"10",
						   33184 => x"0F",		-- 0081a0: 0F00            
						   33185 => x"00",
						   33186 => x"3D",		-- 0081a2: 3DE0             XOR.W   #0x000f,R13
						   33187 => x"00",
						   33188 => x"0F",		-- 0081a4: 0F00            
						   33189 => x"00",
						   33190 => x"0D",		-- 0081a6: 0D5D             RLA.W   R13
						   33191 => x"7D",
						   33192 => x"00",		-- 0081a8: 005D             ADD.W   R13,PC
						   33193 => x"7D",
						   -- Begin: __mspabi_slli_15
						   33194 => x"0C",		-- 0081aa: 0C5C             RLA.W   R12
						   33195 => x"7C",
						   -- Begin: __mspabi_slli_14
						   33196 => x"0C",		-- 0081ac: 0C5C             RLA.W   R12
						   33197 => x"7C",
						   -- Begin: __mspabi_slli_13
						   33198 => x"0C",		-- 0081ae: 0C5C             RLA.W   R12
						   33199 => x"7C",
						   -- Begin: __mspabi_slli_12
						   33200 => x"0C",		-- 0081b0: 0C5C             RLA.W   R12
						   33201 => x"7C",
						   -- Begin: __mspabi_slli_11
						   33202 => x"0C",		-- 0081b2: 0C5C             RLA.W   R12
						   33203 => x"7C",
						   -- Begin: __mspabi_slli_10
						   33204 => x"0C",		-- 0081b4: 0C5C             RLA.W   R12
						   33205 => x"7C",
						   -- Begin: __mspabi_slli_9
						   33206 => x"0C",		-- 0081b6: 0C5C             RLA.W   R12
						   33207 => x"7C",
						   -- Begin: __mspabi_slli_8
						   33208 => x"0C",		-- 0081b8: 0C5C             RLA.W   R12
						   33209 => x"7C",
						   -- Begin: __mspabi_slli_7
						   33210 => x"0C",		-- 0081ba: 0C5C             RLA.W   R12
						   33211 => x"7C",
						   -- Begin: __mspabi_slli_6
						   33212 => x"0C",		-- 0081bc: 0C5C             RLA.W   R12
						   33213 => x"7C",
						   -- Begin: __mspabi_slli_5
						   33214 => x"0C",		-- 0081be: 0C5C             RLA.W   R12
						   33215 => x"7C",
						   -- Begin: __mspabi_slli_4
						   33216 => x"0C",		-- 0081c0: 0C5C             RLA.W   R12
						   33217 => x"7C",
						   -- Begin: __mspabi_slli_3
						   33218 => x"0C",		-- 0081c2: 0C5C             RLA.W   R12
						   33219 => x"7C",
						   -- Begin: __mspabi_slli_2
						   33220 => x"0C",		-- 0081c4: 0C5C             RLA.W   R12
						   33221 => x"7C",
						   -- Begin: __mspabi_slli_1
						   33222 => x"0C",		-- 0081c6: 0C5C             RLA.W   R12
						   33223 => x"7C",
						   33224 => x"30",		-- 0081c8: 3041             RET     
						   33225 => x"61",
						   -- Begin: configUART
						   33226 => x"92",		-- 0081ca: 92D3             BIS.W   #1,&UCA1CTLW0_L
						   33227 => x"F3",
						   33228 => x"80",		-- 0081cc: 8005            
						   33229 => x"05",
						   33230 => x"B2",		-- 0081ce: B2D0             BIS.W   #0x0080,&UCA1CTLW0_L
						   33231 => x"F0",
						   33232 => x"80",		-- 0081d0: 8000            
						   33233 => x"00",
						   33234 => x"80",		-- 0081d2: 8005            
						   33235 => x"05",
						   33236 => x"B2",		-- 0081d4: B242             MOV.W   #8,&UCA1BRW_L
						   33237 => x"62",
						   33238 => x"86",		-- 0081d6: 8605            
						   33239 => x"05",
						   33240 => x"B2",		-- 0081d8: B2D0             BIS.W   #0xd600,&UCA1MCTLW_L
						   33241 => x"F0",
						   33242 => x"00",		-- 0081da: 00D6            
						   33243 => x"D6",
						   33244 => x"88",		-- 0081dc: 8805            
						   33245 => x"05",
						   33246 => x"F2",		-- 0081de: F2C2             BIC.B   #8,&P4SEL1
						   33247 => x"E2",
						   33248 => x"2D",		-- 0081e0: 2D02            
						   33249 => x"02",
						   33250 => x"F2",		-- 0081e2: F2D2             BIS.B   #8,&P4SEL0
						   33251 => x"F2",
						   33252 => x"2B",		-- 0081e4: 2B02            
						   33253 => x"02",
						   33254 => x"E2",		-- 0081e6: E2C2             BIC.B   #4,&P4SEL1
						   33255 => x"E2",
						   33256 => x"2D",		-- 0081e8: 2D02            
						   33257 => x"02",
						   33258 => x"E2",		-- 0081ea: E2D2             BIS.B   #4,&P4SEL0
						   33259 => x"F2",
						   33260 => x"2B",		-- 0081ec: 2B02            
						   33261 => x"02",
						   33262 => x"92",		-- 0081ee: 92C3             BIC.W   #1,&UCA1CTLW0_L
						   33263 => x"E3",
						   33264 => x"80",		-- 0081f0: 8005            
						   33265 => x"05",
						   33266 => x"30",		-- 0081f2: 3041             RET     
						   33267 => x"61",
						   -- Begin: configTimer
						   33268 => x"A2",		-- 0081f4: A2D2             BIS.W   #4,&TB0CTL_L
						   33269 => x"F2",
						   33270 => x"80",		-- 0081f6: 8003            
						   33271 => x"03",
						   33272 => x"B2",		-- 0081f8: B2D0             BIS.W   #0x0200,&TB0CTL_L
						   33273 => x"F0",
						   33274 => x"00",		-- 0081fa: 0002            
						   33275 => x"02",
						   33276 => x"80",		-- 0081fc: 8003            
						   33277 => x"03",
						   33278 => x"B2",		-- 0081fe: B2D0             BIS.W   #0x0010,&TB0CTL_L
						   33279 => x"F0",
						   33280 => x"10",		-- 008200: 1000            
						   33281 => x"00",
						   33282 => x"80",		-- 008202: 8003            
						   33283 => x"03",
						   33284 => x"92",		-- 008204: 9242             MOV.W   &TB0CTL_L,&TB0CTL_L
						   33285 => x"62",
						   33286 => x"80",		-- 008206: 8003            
						   33287 => x"03",
						   33288 => x"80",		-- 008208: 8003            
						   33289 => x"03",
						   33290 => x"B2",		-- 00820a: B240             MOV.W   #0x08fc,&TB0CCR0_L
						   33291 => x"60",
						   33292 => x"FC",		-- 00820c: FC08            
						   33293 => x"08",
						   33294 => x"92",		-- 00820e: 9203            
						   33295 => x"03",
						   33296 => x"B2",		-- 008210: B240             MOV.W   #0x05dc,&TB0CCR1_L
						   33297 => x"60",
						   33298 => x"DC",		-- 008212: DC05            
						   33299 => x"05",
						   33300 => x"94",		-- 008214: 9403            
						   33301 => x"03",
						   33302 => x"30",		-- 008216: 3041             RET     
						   33303 => x"61",
						   -- Begin: _c_int00_noargs
						   33304 => x"31",		-- 008218: 3140             MOV.W   #0x3000,SP
						   33305 => x"60",
						   33306 => x"00",		-- 00821a: 0030            
						   33307 => x"30",
						   33308 => x"B0",		-- 00821c: B012             CALL    #_system_pre_init
						   33309 => x"32",
						   33310 => x"88",		-- 00821e: 8882            
						   33311 => x"82",
						   33312 => x"0C",		-- 008220: 0C93             TST.W   R12
						   33313 => x"B3",
						   33314 => x"02",		-- 008222: 0224             JEQ     ($C$L2)
						   33315 => x"44",
						   33316 => x"B0",		-- 008224: B012             CALL    #__TI_auto_init_nobinit_nopinit
						   33317 => x"32",
						   33318 => x"26",		-- 008226: 2681            
						   33319 => x"81",
						   33320 => x"0C",		-- 008228: 0C43             CLR.W   R12
						   33321 => x"63",
						   33322 => x"B0",		-- 00822a: B012             CALL    #main
						   33323 => x"32",
						   33324 => x"68",		-- 00822c: 6881            
						   33325 => x"81",
						   33326 => x"1C",		-- 00822e: 1C43             MOV.W   #1,R12
						   33327 => x"63",
						   33328 => x"B0",		-- 008230: B012             CALL    #abort
						   33329 => x"32",
						   33330 => x"82",		-- 008232: 8282            
						   33331 => x"82",
						   -- Begin: __TI_decompress_none
						   33332 => x"0F",		-- 008234: 0F4C             MOV.W   R12,R15
						   33333 => x"6C",
						   33334 => x"0C",		-- 008236: 0C4D             MOV.W   R13,R12
						   33335 => x"6D",
						   33336 => x"3D",		-- 008238: 3D40             MOV.W   #0x0003,R13
						   33337 => x"60",
						   33338 => x"03",		-- 00823a: 0300            
						   33339 => x"00",
						   33340 => x"0D",		-- 00823c: 0D5F             ADD.W   R15,R13
						   33341 => x"7F",
						   33342 => x"1E",		-- 00823e: 1E4F             MOV.W   0x0001(R15),R14
						   33343 => x"6F",
						   33344 => x"01",		-- 008240: 0100            
						   33345 => x"00",
						   33346 => x"30",		-- 008242: 3040             BR      #memcpy
						   33347 => x"60",
						   33348 => x"46",		-- 008244: 4682            
						   33349 => x"82",
						   -- Begin: memcpy
						   33350 => x"0E",		-- 008246: 0E93             TST.W   R14
						   33351 => x"B3",
						   33352 => x"06",		-- 008248: 0624             JEQ     ($C$L2)
						   33353 => x"44",
						   33354 => x"0F",		-- 00824a: 0F4C             MOV.W   R12,R15
						   33355 => x"6C",
						   33356 => x"1F",		-- 00824c: 1F53             INC.W   R15
						   33357 => x"73",
						   33358 => x"FF",		-- 00824e: FF4D             MOV.B   @R13+,0xffff(R15)
						   33359 => x"6D",
						   33360 => x"FF",		-- 008250: FFFF            
						   33361 => x"FF",
						   33362 => x"1E",		-- 008252: 1E83             DEC.W   R14
						   33363 => x"A3",
						   33364 => x"FB",		-- 008254: FB23             JNE     ($C$L1)
						   33365 => x"43",
						   33366 => x"30",		-- 008256: 3041             RET     
						   33367 => x"61",
						   -- Begin: ISR_TB0CCR1
						   33368 => x"92",		-- 008258: 9242             MOV.W   &duty_cycle,&TB0CCR1_L
						   33369 => x"62",
						   33370 => x"02",		-- 00825a: 0220            
						   33371 => x"20",
						   33372 => x"94",		-- 00825c: 9403            
						   33373 => x"03",
						   33374 => x"D2",		-- 00825e: D2C3             BIC.B   #1,&P3OUT
						   33375 => x"E3",
						   33376 => x"22",		-- 008260: 2202            
						   33377 => x"02",
						   33378 => x"92",		-- 008262: 92C3             BIC.W   #1,&TB0CCTL1_L
						   33379 => x"E3",
						   33380 => x"84",		-- 008264: 8403            
						   33381 => x"03",
						   33382 => x"00",		-- 008266: 0013             RETI    
						   33383 => x"33",
						   -- Begin: __mspabi_func_epilog_7
						   -- Begin: __mspabi_func_epilog
						   33384 => x"34",		-- 008268: 3441             POP.W   R4
						   33385 => x"61",
						   -- Begin: __mspabi_func_epilog_6
						   33386 => x"35",		-- 00826a: 3541             POP.W   R5
						   33387 => x"61",
						   -- Begin: __mspabi_func_epilog_5
						   33388 => x"36",		-- 00826c: 3641             POP.W   R6
						   33389 => x"61",
						   -- Begin: __mspabi_func_epilog_4
						   33390 => x"37",		-- 00826e: 3741             POP.W   R7
						   33391 => x"61",
						   -- Begin: __mspabi_func_epilog_3
						   33392 => x"38",		-- 008270: 3841             POP.W   R8
						   33393 => x"61",
						   -- Begin: __mspabi_func_epilog_2
						   33394 => x"39",		-- 008272: 3941             POP.W   R9
						   33395 => x"61",
						   -- Begin: __mspabi_func_epilog_1
						   33396 => x"3A",		-- 008274: 3A41             POP.W   R10
						   33397 => x"61",
						   33398 => x"30",		-- 008276: 3041             RET     
						   33399 => x"61",
						   -- Begin: ISR_TB0CCR0
						   33400 => x"D2",		-- 008278: D2D3             BIS.B   #1,&P3OUT
						   33401 => x"F3",
						   33402 => x"22",		-- 00827a: 2202            
						   33403 => x"02",
						   33404 => x"92",		-- 00827c: 92C3             BIC.W   #1,&TB0CCTL0_L
						   33405 => x"E3",
						   33406 => x"82",		-- 00827e: 8203            
						   33407 => x"03",
						   33408 => x"00",		-- 008280: 0013             RETI    
						   33409 => x"33",
						   -- Begin: abort
						   33410 => x"03",		-- 008282: 0343             NOP     
						   33411 => x"63",
						   33412 => x"FF",		-- 008284: FF3F             JMP     ($C$L1)
						   33413 => x"5F",
						   33414 => x"03",		-- 008286: 0343             NOP     
						   33415 => x"63",
						   -- Begin: _system_pre_init
						   33416 => x"1C",		-- 008288: 1C43             MOV.W   #1,R12
						   33417 => x"63",
						   33418 => x"30",		-- 00828a: 3041             RET     
						   33419 => x"61",
						   -- Begin: _system_post_cinit
						   33420 => x"30",		-- 00828c: 3041             RET     
						   33421 => x"61",
						   -- ISR Trap
						   33422 => x"32",		-- 00828e: 32D0             BIS.W   #0x0010,SR
						   33423 => x"F0",
						   33424 => x"10",		-- 008290: 1000            
						   33425 => x"00",
						   33426 => x"FD",		-- 008292: FD3F             JMP     (__TI_ISR_TRAP)
						   33427 => x"5F",
						   33428 => x"03",		-- 008294: 0343             NOP     
						   33429 => x"63",
						   -- IRQ Vectors (Interrupt Vectors)
						   65486 => x"8e",		-- 00ffce:828e PORT4 __TI_int22 int22
						   65487 => x"82",
						   65488 => x"8e",		-- 00ffd0:828e PORT3 __TI_int23 int23
						   65489 => x"82",
						   65490 => x"8e",		-- 00ffd2:828e PORT2 __TI_int24 int24
						   65491 => x"82",
						   65492 => x"8e",		-- 00ffd4:828e PORT1 __TI_int25 int25
						   65493 => x"82",
						   65494 => x"8e",		-- 00ffd6:828e SAC1_SAC3 __TI_int26 int26
						   65495 => x"82",
						   65496 => x"8e",		-- 00ffd8:828e SAC0_SAC2 __TI_int27 int27
						   65497 => x"82",
						   65498 => x"8e",		-- 00ffda:828e ECOMP0_ECOMP1 __TI_int28 int28
						   65499 => x"82",
						   65500 => x"8e",		-- 00ffdc:828e ADC __TI_int29 int29
						   65501 => x"82",
						   65502 => x"8e",		-- 00ffde:828e EUSCI_B1 __TI_int30 int30
						   65503 => x"82",
						   65504 => x"8e",		-- 00ffe0:828e EUSCI_B0 __TI_int31 int31
						   65505 => x"82",
						   65506 => x"8c",		-- 00ffe2:808c EUSCI_A1 __TI_int32 int32
						   65507 => x"80",
						   65508 => x"8e",		-- 00ffe4:828e EUSCI_A0 __TI_int33 int33
						   65509 => x"82",
						   65510 => x"8e",		-- 00ffe6:828e WDT __TI_int34 int34
						   65511 => x"82",
						   65512 => x"8e",		-- 00ffe8:828e RTC __TI_int35 int35
						   65513 => x"82",
						   65514 => x"8e",		-- 00ffea:828e TIMER3_B1 __TI_int36 int36
						   65515 => x"82",
						   65516 => x"8e",		-- 00ffec:828e TIMER3_B0 __TI_int37 int37
						   65517 => x"82",
						   65518 => x"8e",		-- 00ffee:828e TIMER2_B1 __TI_int38 int38
						   65519 => x"82",
						   65520 => x"8e",		-- 00fff0:828e TIMER2_B0 __TI_int39 int39
						   65521 => x"82",
						   65522 => x"8e",		-- 00fff2:828e TIMER1_B1 __TI_int40 int40
						   65523 => x"82",
						   65524 => x"8e",		-- 00fff4:828e TIMER1_B0 __TI_int41 int41
						   65525 => x"82",
						   65526 => x"58",		-- 00fff6:8258 TIMER0_B1 __TI_int42 int42
						   65527 => x"82",
						   65528 => x"78",		-- 00fff8:8278 TIMER0_B0 __TI_int43 int43
						   65529 => x"82",
						   65530 => x"8e",		-- 00fffa:828e UNMI __TI_int44 int44
						   65531 => x"82",
						   65532 => x"8e",		-- 00fffc:828e SYSNMI __TI_int45 int45
						   65533 => x"82",
						   65534 => x"18",		-- 00fffe:8218 .reset _reset_vector reset
						   65535 => x"82",
						   others => x"00");

    signal EN : std_logic;
    
    begin
    -- Note 1:  The bus system uses a 16-bit Address (MAB)
    --          This address size can access locations from x0000 to xFFFF
    --          But our array is only defined from x8000 to xFFFF and
    --          if we try to access it with any other address, it will crash.
    --          So the first thing we need to do is create a local enable that
    --          will only assert when MAB is within x8000 to xFFFF.

     LOCAL_EN : process (MAB) 
     begin
         if ( (to_integer(unsigned(MAB)) >= 32768) and (to_integer(unsigned(MAB)) <= 65535)) then
           EN <= '1';
         else 
           EN <= '0';
         end if;
     end process;

    
    -- Note 2:  The bus system uses a 16-bit Address (MAB)
    --          The MDB_out is also provided as a 16-bit word
    --          However, the memory array is actually built as 8-bit bytes.
    --          So for a given 16-bit MAB, we give MDB_out = HB : LB
    --                                                 or  = ROM(MAB);1) : ROM(MAB)

    MEMORY_ROM : process (clk) 
    begin
        if (rising_edge(clk)) then
            if (EN='1' and write='0') then
                if(Byte = '0') then                      
                    MDB_in <= ROM(to_integer(unsigned(MAB)) + 1 ) & ROM(to_integer(unsigned(MAB)));
                else
                    MDB_in <= x"00" & ROM(to_integer(unsigned(MAB)));
                end if;
            end if;
        end if;
    end process;


end architecture;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;


entity highroller_memory is
    port ( clk	: in	std_logic;
         MAB		: in	std_logic_vector(15 downto 0);
         MDB_in  	: out	std_logic_vector(15 downto 0);
         MDB_out  	: in	std_logic_vector(15 downto 0);
         write	    : in	std_logic);
end entity;

architecture highroller_memory_arch of highroller_memory is

type rom_type is array (32768 to 65535) of std_logic_vector(7 downto 0);  -- this is MAB: x8000 to xFFFF
    
constant ROM : rom_type :=(						   33028 => x"B2",		-- 008104: B240             MOV.W   #0x5a80,&WDTCTL_L
						   33029 => x"60",
						   33030 => x"80",		-- 008106: 805A            
						   33031 => x"5A",
						   33032 => x"CC",		-- 008108: CC01            
						   33033 => x"01",
						   33034 => x"92",		-- 00810a: 92C3             BIC.W   #1,&PM5CTL0_L
						   33035 => x"E3",
						   33036 => x"30",		-- 00810c: 3001            
						   33037 => x"01",
						   33038 => x"5F",		-- 00810e: 5F42             MOV.B   &P1DIR,R15
						   33039 => x"62",
						   33040 => x"04",		-- 008110: 0402            
						   33041 => x"02",
						   33042 => x"C2",		-- 008112: C243             CLR.B   &P1DIR
						   33043 => x"63",
						   33044 => x"04",		-- 008114: 0402            
						   33045 => x"02",
						   33046 => x"F2",		-- 008116: F2D0             BIS.B   #0x0003,&P2DIR
						   33047 => x"F0",
						   33048 => x"03",		-- 008118: 0300            
						   33049 => x"00",
						   33050 => x"05",		-- 00811a: 0502            
						   33051 => x"02",
						   33052 => x"B2",		-- 00811c: B2D0             BIS.W   #0x0220,&TB0CTL_L
						   33053 => x"F0",
						   33054 => x"20",		-- 00811e: 2002            
						   33055 => x"02",
						   33056 => x"80",		-- 008120: 8003            
						   33057 => x"03",
						   33058 => x"B2",		-- 008122: B2D0             BIS.W   #0x0010,&TB0CCTL0_L
						   33059 => x"F0",
						   33060 => x"10",		-- 008124: 1000            
						   33061 => x"00",
						   33062 => x"82",		-- 008126: 8203            
						   33063 => x"03",
						   33064 => x"92",		-- 008128: 9242             MOV.W   &frequency,&TB0CCR0_L
						   33065 => x"62",
						   33066 => x"00",		-- 00812a: 0021            
						   33067 => x"21",
						   33068 => x"92",		-- 00812c: 9203            
						   33069 => x"03",
						   33070 => x"E2",		-- 00812e: E2D2             BIS.B   #4,&P2DIR
						   33071 => x"F2",
						   33072 => x"05",		-- 008130: 0502            
						   33073 => x"02",
						   33074 => x"32",		-- 008132: 32D2             EINT    
						   33075 => x"F2",
						   33076 => x"5F",		-- 008134: 5F42             MOV.B   &P1IN,R15
						   33077 => x"62",
						   33078 => x"00",		-- 008136: 0002            
						   33079 => x"02",
						   33080 => x"D1",		-- 008138: D14F             MOV.B   0x2000(R15),0x0000(SP)
						   33081 => x"6F",
						   33082 => x"00",		-- 00813a: 0020            
						   33083 => x"20",
						   33084 => x"00",		-- 00813c: 0000            
						   33085 => x"00",
						   33086 => x"F1",		-- 00813e: F190             CMP.B   #0x003f,0x0000(SP)
						   33087 => x"B0",
						   33088 => x"3F",		-- 008140: 3F00            
						   33089 => x"00",
						   33090 => x"00",		-- 008142: 0000            
						   33091 => x"00",
						   33092 => x"0A",		-- 008144: 0A2C             JHS     ($C$L2)
						   33093 => x"4C",
						   33094 => x"E2",		-- 008146: E2C2             BIC.B   #4,&P2OUT
						   33095 => x"E2",
						   33096 => x"03",		-- 008148: 0302            
						   33097 => x"02",
						   33098 => x"E2",		-- 00814a: E2D3             BIS.B   #2,&P2OUT
						   33099 => x"F3",
						   33100 => x"03",		-- 00814c: 0302            
						   33101 => x"02",
						   33102 => x"3F",		-- 00814e: 3F40             MOV.W   #0x003f,R15
						   33103 => x"60",
						   33104 => x"3F",		-- 008150: 3F00            
						   33105 => x"00",
						   33106 => x"6F",		-- 008152: 6F81             SUB.B   @SP,R15
						   33107 => x"A1",
						   33108 => x"C1",		-- 008154: C14F             MOV.B   R15,0x0000(SP)
						   33109 => x"6F",
						   33110 => x"00",		-- 008156: 0000            
						   33111 => x"00",
						   33112 => x"0E",		-- 008158: 0E3C             JMP     ($C$L4)
						   33113 => x"5C",
						   33114 => x"F1",		-- 00815a: F190             CMP.B   #0x0040,0x0000(SP)
						   33115 => x"B0",
						   33116 => x"40",		-- 00815c: 4000            
						   33117 => x"00",
						   33118 => x"00",		-- 00815e: 0000            
						   33119 => x"00",
						   33120 => x"08",		-- 008160: 0828             JLO     ($C$L3)
						   33121 => x"48",
						   33122 => x"E2",		-- 008162: E2C2             BIC.B   #4,&P2OUT
						   33123 => x"E2",
						   33124 => x"03",		-- 008164: 0302            
						   33125 => x"02",
						   33126 => x"E2",		-- 008166: E2C3             BIC.B   #2,&P2OUT
						   33127 => x"E3",
						   33128 => x"03",		-- 008168: 0302            
						   33129 => x"02",
						   33130 => x"F1",		-- 00816a: F180             SUB.B   #0x003f,0x0000(SP)
						   33131 => x"A0",
						   33132 => x"3F",		-- 00816c: 3F00            
						   33133 => x"00",
						   33134 => x"00",		-- 00816e: 0000            
						   33135 => x"00",
						   33136 => x"02",		-- 008170: 023C             JMP     ($C$L4)
						   33137 => x"5C",
						   33138 => x"E2",		-- 008172: E2D2             BIS.B   #4,&P2OUT
						   33139 => x"F2",
						   33140 => x"03",		-- 008174: 0302            
						   33141 => x"02",
						   33142 => x"6C",		-- 008176: 6C41             MOV.B   @SP,R12
						   33143 => x"61",
						   33144 => x"3D",		-- 008178: 3D40             MOV.W   #0x002e,R13
						   33145 => x"60",
						   33146 => x"2E",		-- 00817a: 2E00            
						   33147 => x"00",
						   33148 => x"B0",		-- 00817c: B012             CALL    #__mspabi_mpyi
						   33149 => x"32",
						   33150 => x"F2",		-- 00817e: F282            
						   33151 => x"82",
						   33152 => x"3F",		-- 008180: 3F40             MOV.W   #0x0fa0,R15
						   33153 => x"60",
						   33154 => x"A0",		-- 008182: A00F            
						   33155 => x"0F",
						   33156 => x"0F",		-- 008184: 0F8C             SUB.W   R12,R15
						   33157 => x"AC",
						   33158 => x"82",		-- 008186: 824F             MOV.W   R15,&frequency
						   33159 => x"6F",
						   33160 => x"00",		-- 008188: 0021            
						   33161 => x"21",
						   33162 => x"D4",		-- 00818a: D43F             JMP     ($C$L1)
						   33163 => x"5F",
						   -- Begin: __TI_decompress_lzss
						   33164 => x"0A",		-- 00818c: 0A12             PUSH    R10
						   33165 => x"32",
						   33166 => x"09",		-- 00818e: 0912             PUSH    R9
						   33167 => x"32",
						   33168 => x"08",		-- 008190: 0812             PUSH    R8
						   33169 => x"32",
						   33170 => x"0A",		-- 008192: 0A4C             MOV.W   R12,R10
						   33171 => x"6C",
						   33172 => x"78",		-- 008194: 784A             MOV.B   @R10+,R8
						   33173 => x"6A",
						   33174 => x"09",		-- 008196: 0943             CLR.W   R9
						   33175 => x"63",
						   33176 => x"11",		-- 008198: 113C             JMP     ($C$L6)
						   33177 => x"5C",
						   33178 => x"0E",		-- 00819a: 0E4D             MOV.W   R13,R14
						   33179 => x"6D",
						   33180 => x"0E",		-- 00819c: 0E8B             SUB.W   R11,R14
						   33181 => x"AB",
						   33182 => x"1E",		-- 00819e: 1E83             DEC.W   R14
						   33183 => x"A3",
						   33184 => x"1D",		-- 0081a0: 1D53             INC.W   R13
						   33185 => x"73",
						   33186 => x"FD",		-- 0081a2: FD4E             MOV.B   @R14+,0xffff(R13)
						   33187 => x"6E",
						   33188 => x"FF",		-- 0081a4: FFFF            
						   33189 => x"FF",
						   33190 => x"1F",		-- 0081a6: 1F83             DEC.W   R15
						   33191 => x"A3",
						   33192 => x"FB",		-- 0081a8: FB23             JNE     ($C$L3)
						   33193 => x"43",
						   33194 => x"03",		-- 0081aa: 033C             JMP     ($C$L5)
						   33195 => x"5C",
						   33196 => x"1D",		-- 0081ac: 1D53             INC.W   R13
						   33197 => x"73",
						   33198 => x"FD",		-- 0081ae: FD4A             MOV.B   @R10+,0xffff(R13)
						   33199 => x"6A",
						   33200 => x"FF",		-- 0081b0: FFFF            
						   33201 => x"FF",
						   33202 => x"12",		-- 0081b2: 12C3             CLRC    
						   33203 => x"E3",
						   33204 => x"08",		-- 0081b4: 0810             RRC     R8
						   33205 => x"30",
						   33206 => x"19",		-- 0081b6: 1953             INC.W   R9
						   33207 => x"73",
						   33208 => x"39",		-- 0081b8: 3992             CMP.W   #8,R9
						   33209 => x"B2",
						   33210 => x"EC",		-- 0081ba: EC37             JGE     ($C$L1)
						   33211 => x"57",
						   33212 => x"18",		-- 0081bc: 18B3             BIT.W   #1,R8
						   33213 => x"D3",
						   33214 => x"F6",		-- 0081be: F623             JNE     ($C$L4)
						   33215 => x"43",
						   33216 => x"7B",		-- 0081c0: 7B4A             MOV.B   @R10+,R11
						   33217 => x"6A",
						   33218 => x"7F",		-- 0081c2: 7F4A             MOV.B   @R10+,R15
						   33219 => x"6A",
						   33220 => x"0C",		-- 0081c4: 0C4B             MOV.W   R11,R12
						   33221 => x"6B",
						   33222 => x"B0",		-- 0081c6: B012             CALL    #__mspabi_slli_4
						   33223 => x"32",
						   33224 => x"B8",		-- 0081c8: B882            
						   33225 => x"82",
						   33226 => x"0B",		-- 0081ca: 0B4C             MOV.W   R12,R11
						   33227 => x"6C",
						   33228 => x"0C",		-- 0081cc: 0C4F             MOV.W   R15,R12
						   33229 => x"6F",
						   33230 => x"B0",		-- 0081ce: B012             CALL    #__mspabi_srli_4
						   33231 => x"32",
						   33232 => x"42",		-- 0081d0: 4282            
						   33233 => x"82",
						   33234 => x"3C",		-- 0081d2: 3CF0             AND.W   #0x000f,R12
						   33235 => x"10",
						   33236 => x"0F",		-- 0081d4: 0F00            
						   33237 => x"00",
						   33238 => x"0B",		-- 0081d6: 0BDC             BIS.W   R12,R11
						   33239 => x"FC",
						   33240 => x"3F",		-- 0081d8: 3FF0             AND.W   #0x000f,R15
						   33241 => x"10",
						   33242 => x"0F",		-- 0081da: 0F00            
						   33243 => x"00",
						   33244 => x"3F",		-- 0081dc: 3F50             ADD.W   #0x0003,R15
						   33245 => x"70",
						   33246 => x"03",		-- 0081de: 0300            
						   33247 => x"00",
						   33248 => x"3F",		-- 0081e0: 3F90             CMP.W   #0x0012,R15
						   33249 => x"B0",
						   33250 => x"12",		-- 0081e2: 1200            
						   33251 => x"00",
						   33252 => x"0C",		-- 0081e4: 0C20             JNE     ($C$L8)
						   33253 => x"40",
						   33254 => x"7E",		-- 0081e6: 7E4A             MOV.B   @R10+,R14
						   33255 => x"6A",
						   33256 => x"3E",		-- 0081e8: 3EB0             BIT.W   #0x0080,R14
						   33257 => x"D0",
						   33258 => x"80",		-- 0081ea: 8000            
						   33259 => x"00",
						   33260 => x"07",		-- 0081ec: 0724             JEQ     ($C$L7)
						   33261 => x"44",
						   33262 => x"7C",		-- 0081ee: 7C4A             MOV.B   @R10+,R12
						   33263 => x"6A",
						   33264 => x"4C",		-- 0081f0: 4C4C             MOV.B   R12,R12
						   33265 => x"6C",
						   33266 => x"B0",		-- 0081f2: B012             CALL    #__mspabi_slli_7
						   33267 => x"32",
						   33268 => x"B2",		-- 0081f4: B282            
						   33269 => x"82",
						   33270 => x"3E",		-- 0081f6: 3EF0             AND.W   #0x007f,R14
						   33271 => x"10",
						   33272 => x"7F",		-- 0081f8: 7F00            
						   33273 => x"00",
						   33274 => x"0E",		-- 0081fa: 0EDC             BIS.W   R12,R14
						   33275 => x"FC",
						   33276 => x"0F",		-- 0081fc: 0F5E             ADD.W   R14,R15
						   33277 => x"7E",
						   33278 => x"3B",		-- 0081fe: 3B90             CMP.W   #0x0fff,R11
						   33279 => x"B0",
						   33280 => x"FF",		-- 008200: FF0F            
						   33281 => x"0F",
						   33282 => x"CB",		-- 008202: CB23             JNE     ($C$L2)
						   33283 => x"43",
						   33284 => x"30",		-- 008204: 3040             BR      #__mspabi_func_epilog_3
						   33285 => x"60",
						   33286 => x"32",		-- 008206: 3283            
						   33287 => x"83",
						   -- Begin: __mspabi_srli
						   33288 => x"3D",		-- 008208: 3DF0             AND.W   #0x000f,R13
						   33289 => x"10",
						   33290 => x"0F",		-- 00820a: 0F00            
						   33291 => x"00",
						   33292 => x"3D",		-- 00820c: 3DE0             XOR.W   #0x000f,R13
						   33293 => x"00",
						   33294 => x"0F",		-- 00820e: 0F00            
						   33295 => x"00",
						   33296 => x"0D",		-- 008210: 0D5D             RLA.W   R13
						   33297 => x"7D",
						   33298 => x"0D",		-- 008212: 0D5D             RLA.W   R13
						   33299 => x"7D",
						   33300 => x"00",		-- 008214: 005D             ADD.W   R13,PC
						   33301 => x"7D",
						   -- Begin: __mspabi_srli_15
						   33302 => x"12",		-- 008216: 12C3             CLRC    
						   33303 => x"E3",
						   33304 => x"0C",		-- 008218: 0C10             RRC     R12
						   33305 => x"30",
						   -- Begin: __mspabi_srli_14
						   33306 => x"12",		-- 00821a: 12C3             CLRC    
						   33307 => x"E3",
						   33308 => x"0C",		-- 00821c: 0C10             RRC     R12
						   33309 => x"30",
						   -- Begin: __mspabi_srli_13
						   33310 => x"12",		-- 00821e: 12C3             CLRC    
						   33311 => x"E3",
						   33312 => x"0C",		-- 008220: 0C10             RRC     R12
						   33313 => x"30",
						   -- Begin: __mspabi_srli_12
						   33314 => x"12",		-- 008222: 12C3             CLRC    
						   33315 => x"E3",
						   33316 => x"0C",		-- 008224: 0C10             RRC     R12
						   33317 => x"30",
						   -- Begin: __mspabi_srli_11
						   33318 => x"12",		-- 008226: 12C3             CLRC    
						   33319 => x"E3",
						   33320 => x"0C",		-- 008228: 0C10             RRC     R12
						   33321 => x"30",
						   -- Begin: __mspabi_srli_10
						   33322 => x"12",		-- 00822a: 12C3             CLRC    
						   33323 => x"E3",
						   33324 => x"0C",		-- 00822c: 0C10             RRC     R12
						   33325 => x"30",
						   -- Begin: __mspabi_srli_9
						   33326 => x"12",		-- 00822e: 12C3             CLRC    
						   33327 => x"E3",
						   33328 => x"0C",		-- 008230: 0C10             RRC     R12
						   33329 => x"30",
						   -- Begin: __mspabi_srli_8
						   33330 => x"12",		-- 008232: 12C3             CLRC    
						   33331 => x"E3",
						   33332 => x"0C",		-- 008234: 0C10             RRC     R12
						   33333 => x"30",
						   -- Begin: __mspabi_srli_7
						   33334 => x"12",		-- 008236: 12C3             CLRC    
						   33335 => x"E3",
						   33336 => x"0C",		-- 008238: 0C10             RRC     R12
						   33337 => x"30",
						   -- Begin: __mspabi_srli_6
						   33338 => x"12",		-- 00823a: 12C3             CLRC    
						   33339 => x"E3",
						   33340 => x"0C",		-- 00823c: 0C10             RRC     R12
						   33341 => x"30",
						   -- Begin: __mspabi_srli_5
						   33342 => x"12",		-- 00823e: 12C3             CLRC    
						   33343 => x"E3",
						   33344 => x"0C",		-- 008240: 0C10             RRC     R12
						   33345 => x"30",
						   -- Begin: __mspabi_srli_4
						   33346 => x"12",		-- 008242: 12C3             CLRC    
						   33347 => x"E3",
						   33348 => x"0C",		-- 008244: 0C10             RRC     R12
						   33349 => x"30",
						   -- Begin: __mspabi_srli_3
						   33350 => x"12",		-- 008246: 12C3             CLRC    
						   33351 => x"E3",
						   33352 => x"0C",		-- 008248: 0C10             RRC     R12
						   33353 => x"30",
						   -- Begin: __mspabi_srli_2
						   33354 => x"12",		-- 00824a: 12C3             CLRC    
						   33355 => x"E3",
						   33356 => x"0C",		-- 00824c: 0C10             RRC     R12
						   33357 => x"30",
						   -- Begin: __mspabi_srli_1
						   33358 => x"12",		-- 00824e: 12C3             CLRC    
						   33359 => x"E3",
						   33360 => x"0C",		-- 008250: 0C10             RRC     R12
						   33361 => x"30",
						   33362 => x"30",		-- 008252: 3041             RET     
						   33363 => x"61",
						   -- Begin: __TI_auto_init_nobinit_nopinit
						   33364 => x"0A",		-- 008254: 0A12             PUSH    R10
						   33365 => x"32",
						   33366 => x"09",		-- 008256: 0912             PUSH    R9
						   33367 => x"32",
						   33368 => x"3F",		-- 008258: 3F40             MOV.W   #0x80fa,R15
						   33369 => x"60",
						   33370 => x"FA",		-- 00825a: FA80            
						   33371 => x"80",
						   33372 => x"3F",		-- 00825c: 3F90             CMP.W   #0x80fe,R15
						   33373 => x"B0",
						   33374 => x"FE",		-- 00825e: FE80            
						   33375 => x"80",
						   33376 => x"16",		-- 008260: 1624             JEQ     ($C$L22)
						   33377 => x"44",
						   33378 => x"3F",		-- 008262: 3F40             MOV.W   #0x80fe,R15
						   33379 => x"60",
						   33380 => x"FE",		-- 008264: FE80            
						   33381 => x"80",
						   33382 => x"3F",		-- 008266: 3F90             CMP.W   #0x8102,R15
						   33383 => x"B0",
						   33384 => x"02",		-- 008268: 0281            
						   33385 => x"81",
						   33386 => x"11",		-- 00826a: 1124             JEQ     ($C$L22)
						   33387 => x"44",
						   33388 => x"3A",		-- 00826c: 3A40             MOV.W   #0x8102,R10
						   33389 => x"60",
						   33390 => x"02",		-- 00826e: 0281            
						   33391 => x"81",
						   33392 => x"3A",		-- 008270: 3A80             SUB.W   #0x80fe,R10
						   33393 => x"A0",
						   33394 => x"FE",		-- 008272: FE80            
						   33395 => x"80",
						   33396 => x"0A",		-- 008274: 0A11             RRA     R10
						   33397 => x"31",
						   33398 => x"0A",		-- 008276: 0A11             RRA     R10
						   33399 => x"31",
						   33400 => x"39",		-- 008278: 3940             MOV.W   #0x80fe,R9
						   33401 => x"60",
						   33402 => x"FE",		-- 00827a: FE80            
						   33403 => x"80",
						   33404 => x"3C",		-- 00827c: 3C49             MOV.W   @R9+,R12
						   33405 => x"69",
						   33406 => x"7F",		-- 00827e: 7F4C             MOV.B   @R12+,R15
						   33407 => x"6C",
						   33408 => x"0F",		-- 008280: 0F5F             RLA.W   R15
						   33409 => x"7F",
						   33410 => x"1F",		-- 008282: 1F4F             MOV.W   0x80fa(R15),R15
						   33411 => x"6F",
						   33412 => x"FA",		-- 008284: FA80            
						   33413 => x"80",
						   33414 => x"3D",		-- 008286: 3D49             MOV.W   @R9+,R13
						   33415 => x"69",
						   33416 => x"8F",		-- 008288: 8F12             CALL    R15
						   33417 => x"32",
						   33418 => x"1A",		-- 00828a: 1A83             DEC.W   R10
						   33419 => x"A3",
						   33420 => x"F7",		-- 00828c: F723             JNE     ($C$L21)
						   33421 => x"43",
						   33422 => x"B0",		-- 00828e: B012             CALL    #_system_post_cinit
						   33423 => x"32",
						   33424 => x"44",		-- 008290: 4483            
						   33425 => x"83",
						   33426 => x"30",		-- 008292: 3040             BR      #__mspabi_func_epilog_2
						   33427 => x"60",
						   33428 => x"34",		-- 008294: 3483            
						   33429 => x"83",
						   -- Begin: __mspabi_slli
						   33430 => x"3D",		-- 008296: 3DF0             AND.W   #0x000f,R13
						   33431 => x"10",
						   33432 => x"0F",		-- 008298: 0F00            
						   33433 => x"00",
						   33434 => x"3D",		-- 00829a: 3DE0             XOR.W   #0x000f,R13
						   33435 => x"00",
						   33436 => x"0F",		-- 00829c: 0F00            
						   33437 => x"00",
						   33438 => x"0D",		-- 00829e: 0D5D             RLA.W   R13
						   33439 => x"7D",
						   33440 => x"00",		-- 0082a0: 005D             ADD.W   R13,PC
						   33441 => x"7D",
						   -- Begin: __mspabi_slli_15
						   33442 => x"0C",		-- 0082a2: 0C5C             RLA.W   R12
						   33443 => x"7C",
						   -- Begin: __mspabi_slli_14
						   33444 => x"0C",		-- 0082a4: 0C5C             RLA.W   R12
						   33445 => x"7C",
						   -- Begin: __mspabi_slli_13
						   33446 => x"0C",		-- 0082a6: 0C5C             RLA.W   R12
						   33447 => x"7C",
						   -- Begin: __mspabi_slli_12
						   33448 => x"0C",		-- 0082a8: 0C5C             RLA.W   R12
						   33449 => x"7C",
						   -- Begin: __mspabi_slli_11
						   33450 => x"0C",		-- 0082aa: 0C5C             RLA.W   R12
						   33451 => x"7C",
						   -- Begin: __mspabi_slli_10
						   33452 => x"0C",		-- 0082ac: 0C5C             RLA.W   R12
						   33453 => x"7C",
						   -- Begin: __mspabi_slli_9
						   33454 => x"0C",		-- 0082ae: 0C5C             RLA.W   R12
						   33455 => x"7C",
						   -- Begin: __mspabi_slli_8
						   33456 => x"0C",		-- 0082b0: 0C5C             RLA.W   R12
						   33457 => x"7C",
						   -- Begin: __mspabi_slli_7
						   33458 => x"0C",		-- 0082b2: 0C5C             RLA.W   R12
						   33459 => x"7C",
						   -- Begin: __mspabi_slli_6
						   33460 => x"0C",		-- 0082b4: 0C5C             RLA.W   R12
						   33461 => x"7C",
						   -- Begin: __mspabi_slli_5
						   33462 => x"0C",		-- 0082b6: 0C5C             RLA.W   R12
						   33463 => x"7C",
						   -- Begin: __mspabi_slli_4
						   33464 => x"0C",		-- 0082b8: 0C5C             RLA.W   R12
						   33465 => x"7C",
						   -- Begin: __mspabi_slli_3
						   33466 => x"0C",		-- 0082ba: 0C5C             RLA.W   R12
						   33467 => x"7C",
						   -- Begin: __mspabi_slli_2
						   33468 => x"0C",		-- 0082bc: 0C5C             RLA.W   R12
						   33469 => x"7C",
						   -- Begin: __mspabi_slli_1
						   33470 => x"0C",		-- 0082be: 0C5C             RLA.W   R12
						   33471 => x"7C",
						   33472 => x"30",		-- 0082c0: 3041             RET     
						   33473 => x"61",
						   -- Begin: _c_int00_noargs
						   33474 => x"31",		-- 0082c2: 3140             MOV.W   #0x3000,SP
						   33475 => x"60",
						   33476 => x"00",		-- 0082c4: 0030            
						   33477 => x"30",
						   33478 => x"B0",		-- 0082c6: B012             CALL    #_system_pre_init
						   33479 => x"32",
						   33480 => x"40",		-- 0082c8: 4083            
						   33481 => x"83",
						   33482 => x"0C",		-- 0082ca: 0C93             TST.W   R12
						   33483 => x"B3",
						   33484 => x"02",		-- 0082cc: 0224             JEQ     ($C$L2)
						   33485 => x"44",
						   33486 => x"B0",		-- 0082ce: B012             CALL    #__TI_auto_init_nobinit_nopinit
						   33487 => x"32",
						   33488 => x"54",		-- 0082d0: 5482            
						   33489 => x"82",
						   33490 => x"0C",		-- 0082d2: 0C43             CLR.W   R12
						   33491 => x"63",
						   33492 => x"B0",		-- 0082d4: B012             CALL    #main
						   33493 => x"32",
						   33494 => x"02",		-- 0082d6: 0281            
						   33495 => x"81",
						   33496 => x"1C",		-- 0082d8: 1C43             MOV.W   #1,R12
						   33497 => x"63",
						   33498 => x"B0",		-- 0082da: B012             CALL    #abort
						   33499 => x"32",
						   33500 => x"3A",		-- 0082dc: 3A83            
						   33501 => x"83",
						   -- Begin: Timer_ISR
						   33502 => x"92",		-- 0082de: 9252             ADD.W   &frequency,&TB0CCR0_L
						   33503 => x"72",
						   33504 => x"00",		-- 0082e0: 0021            
						   33505 => x"21",
						   33506 => x"92",		-- 0082e2: 9203            
						   33507 => x"03",
						   33508 => x"D2",		-- 0082e4: D2E3             XOR.B   #1,&P2OUT
						   33509 => x"03",
						   33510 => x"03",		-- 0082e6: 0302            
						   33511 => x"02",
						   33512 => x"92",		-- 0082e8: 9253             INC.W   &frequency
						   33513 => x"73",
						   33514 => x"00",		-- 0082ea: 0021            
						   33515 => x"21",
						   33516 => x"92",		-- 0082ec: 92C3             BIC.W   #1,&TB0CCTL0_L
						   33517 => x"E3",
						   33518 => x"82",		-- 0082ee: 8203            
						   33519 => x"03",
						   33520 => x"00",		-- 0082f0: 0013             RETI    
						   33521 => x"33",
						   -- Begin: __mspabi_mpyi
						   -- Begin: __mspabi_mpyi_sw
						   33522 => x"0E",		-- 0082f2: 0E43             CLR.W   R14
						   33523 => x"63",
						   -- Begin: mpyi_add_loop
						   33524 => x"12",		-- 0082f4: 12C3             CLRC    
						   33525 => x"E3",
						   33526 => x"0C",		-- 0082f6: 0C10             RRC     R12
						   33527 => x"30",
						   33528 => x"01",		-- 0082f8: 0128             JLO     (shift_test_mpyi)
						   33529 => x"48",
						   33530 => x"0E",		-- 0082fa: 0E5D             ADD.W   R13,R14
						   33531 => x"7D",
						   -- Begin: shift_test_mpyi
						   33532 => x"0D",		-- 0082fc: 0D5D             RLA.W   R13
						   33533 => x"7D",
						   33534 => x"0C",		-- 0082fe: 0C93             TST.W   R12
						   33535 => x"B3",
						   33536 => x"F9",		-- 008300: F923             JNE     (mpyi_add_loop)
						   33537 => x"43",
						   33538 => x"0C",		-- 008302: 0C4E             MOV.W   R14,R12
						   33539 => x"6E",
						   33540 => x"30",		-- 008304: 3041             RET     
						   33541 => x"61",
						   -- Begin: __TI_decompress_none
						   33542 => x"0F",		-- 008306: 0F4C             MOV.W   R12,R15
						   33543 => x"6C",
						   33544 => x"0C",		-- 008308: 0C4D             MOV.W   R13,R12
						   33545 => x"6D",
						   33546 => x"3D",		-- 00830a: 3D40             MOV.W   #0x0003,R13
						   33547 => x"60",
						   33548 => x"03",		-- 00830c: 0300            
						   33549 => x"00",
						   33550 => x"0D",		-- 00830e: 0D5F             ADD.W   R15,R13
						   33551 => x"7F",
						   33552 => x"1E",		-- 008310: 1E4F             MOV.W   0x0001(R15),R14
						   33553 => x"6F",
						   33554 => x"01",		-- 008312: 0100            
						   33555 => x"00",
						   33556 => x"30",		-- 008314: 3040             BR      #memcpy
						   33557 => x"60",
						   33558 => x"18",		-- 008316: 1883            
						   33559 => x"83",
						   -- Begin: memcpy
						   33560 => x"0E",		-- 008318: 0E93             TST.W   R14
						   33561 => x"B3",
						   33562 => x"06",		-- 00831a: 0624             JEQ     ($C$L2)
						   33563 => x"44",
						   33564 => x"0F",		-- 00831c: 0F4C             MOV.W   R12,R15
						   33565 => x"6C",
						   33566 => x"1F",		-- 00831e: 1F53             INC.W   R15
						   33567 => x"73",
						   33568 => x"FF",		-- 008320: FF4D             MOV.B   @R13+,0xffff(R15)
						   33569 => x"6D",
						   33570 => x"FF",		-- 008322: FFFF            
						   33571 => x"FF",
						   33572 => x"1E",		-- 008324: 1E83             DEC.W   R14
						   33573 => x"A3",
						   33574 => x"FB",		-- 008326: FB23             JNE     ($C$L1)
						   33575 => x"43",
						   33576 => x"30",		-- 008328: 3041             RET     
						   33577 => x"61",
						   -- Begin: __mspabi_func_epilog_7
						   -- Begin: __mspabi_func_epilog
						   33578 => x"34",		-- 00832a: 3441             POP.W   R4
						   33579 => x"61",
						   -- Begin: __mspabi_func_epilog_6
						   33580 => x"35",		-- 00832c: 3541             POP.W   R5
						   33581 => x"61",
						   -- Begin: __mspabi_func_epilog_5
						   33582 => x"36",		-- 00832e: 3641             POP.W   R6
						   33583 => x"61",
						   -- Begin: __mspabi_func_epilog_4
						   33584 => x"37",		-- 008330: 3741             POP.W   R7
						   33585 => x"61",
						   -- Begin: __mspabi_func_epilog_3
						   33586 => x"38",		-- 008332: 3841             POP.W   R8
						   33587 => x"61",
						   -- Begin: __mspabi_func_epilog_2
						   33588 => x"39",		-- 008334: 3941             POP.W   R9
						   33589 => x"61",
						   -- Begin: __mspabi_func_epilog_1
						   33590 => x"3A",		-- 008336: 3A41             POP.W   R10
						   33591 => x"61",
						   33592 => x"30",		-- 008338: 3041             RET     
						   33593 => x"61",
						   -- Begin: abort
						   33594 => x"03",		-- 00833a: 0343             NOP     
						   33595 => x"63",
						   33596 => x"FF",		-- 00833c: FF3F             JMP     ($C$L1)
						   33597 => x"5F",
						   33598 => x"03",		-- 00833e: 0343             NOP     
						   33599 => x"63",
						   -- Begin: _system_pre_init
						   33600 => x"1C",		-- 008340: 1C43             MOV.W   #1,R12
						   33601 => x"63",
						   33602 => x"30",		-- 008342: 3041             RET     
						   33603 => x"61",
						   -- Begin: _system_post_cinit
						   33604 => x"30",		-- 008344: 3041             RET     
						   33605 => x"61",
						   -- ISR Trap
						   33606 => x"32",		-- 008346: 32D0             BIS.W   #0x0010,SR
						   33607 => x"F0",
						   33608 => x"10",		-- 008348: 1000            
						   33609 => x"00",
						   33610 => x"FD",		-- 00834a: FD3F             JMP     (__TI_ISR_TRAP)
						   33611 => x"5F",
						   33612 => x"03",		-- 00834c: 0343             NOP     
						   33613 => x"63",
						   -- IRQ Vectors (Interrupt Vectors)
						   65486 => x"46",		-- 00ffce:8346 PORT4 __TI_int22 int22
						   65487 => x"83",
						   65488 => x"46",		-- 00ffd0:8346 PORT3 __TI_int23 int23
						   65489 => x"83",
						   65490 => x"46",		-- 00ffd2:8346 PORT2 __TI_int24 int24
						   65491 => x"83",
						   65492 => x"46",		-- 00ffd4:8346 PORT1 __TI_int25 int25
						   65493 => x"83",
						   65494 => x"46",		-- 00ffd6:8346 SAC1_SAC3 __TI_int26 int26
						   65495 => x"83",
						   65496 => x"46",		-- 00ffd8:8346 SAC0_SAC2 __TI_int27 int27
						   65497 => x"83",
						   65498 => x"46",		-- 00ffda:8346 ECOMP0_ECOMP1 __TI_int28 int28
						   65499 => x"83",
						   65500 => x"46",		-- 00ffdc:8346 ADC __TI_int29 int29
						   65501 => x"83",
						   65502 => x"46",		-- 00ffde:8346 EUSCI_B1 __TI_int30 int30
						   65503 => x"83",
						   65504 => x"46",		-- 00ffe0:8346 EUSCI_B0 __TI_int31 int31
						   65505 => x"83",
						   65506 => x"46",		-- 00ffe2:8346 EUSCI_A1 __TI_int32 int32
						   65507 => x"83",
						   65508 => x"46",		-- 00ffe4:8346 EUSCI_A0 __TI_int33 int33
						   65509 => x"83",
						   65510 => x"46",		-- 00ffe6:8346 WDT __TI_int34 int34
						   65511 => x"83",
						   65512 => x"46",		-- 00ffe8:8346 RTC __TI_int35 int35
						   65513 => x"83",
						   65514 => x"46",		-- 00ffea:8346 TIMER3_B1 __TI_int36 int36
						   65515 => x"83",
						   65516 => x"46",		-- 00ffec:8346 TIMER3_B0 __TI_int37 int37
						   65517 => x"83",
						   65518 => x"46",		-- 00ffee:8346 TIMER2_B1 __TI_int38 int38
						   65519 => x"83",
						   65520 => x"46",		-- 00fff0:8346 TIMER2_B0 __TI_int39 int39
						   65521 => x"83",
						   65522 => x"46",		-- 00fff2:8346 TIMER1_B1 __TI_int40 int40
						   65523 => x"83",
						   65524 => x"46",		-- 00fff4:8346 TIMER1_B0 __TI_int41 int41
						   65525 => x"83",
						   65526 => x"46",		-- 00fff6:8346 TIMER0_B1 __TI_int42 int42
						   65527 => x"83",
						   65528 => x"de",		-- 00fff8:82de TIMER0_B0 __TI_int43 int43
						   65529 => x"82",
						   65530 => x"46",		-- 00fffa:8346 UNMI __TI_int44 int44
						   65531 => x"83",
						   65532 => x"46",		-- 00fffc:8346 SYSNMI __TI_int45 int45
						   65533 => x"83",
						   65534 => x"c2",		-- 00fffe:82c2 .reset _reset_vector reset
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
              MDB_in <= ROM(to_integer(unsigned(MAB)) + 1 ) & ROM(to_integer(unsigned(MAB))); 
            end if;
        end if;
    end process;


end architecture;
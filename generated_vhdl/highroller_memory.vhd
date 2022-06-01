library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;


entity highroller_memory is
    port ( clk	: in	std_logic;
         MAB		: in	std_logic_vector(15 downto 0);
         MDB_out  	: out	std_logic_vector(15 downto 0));
end entity;

architecture highroller_memory_arch of highroller_memory is

type rom_type is array (0 to 32767) of std_logic_vector(7 downto 0);  -- this is MAB: x8000 to xFFFF
    
shared variable ROM : rom_type :=(						   0 => x"00",
						   1 => x"ff",
						   2 => x"00",
						   3 => x"38",
						   4 => x"28",
						   5 => x"37",
						   6 => x"18",
						   7 => x"00",
						   8 => x"27",
						   9 => x"34",
						   10 => x"ff",
						   11 => x"08",
						   12 => x"39",
						   13 => x"00",
						   14 => x"00",
						   15 => x"17",
						   16 => x"00",
						   17 => x"24",
						   18 => x"0d",
						   19 => x"ff",
						   20 => x"78",
						   21 => x"00",
						   22 => x"29",
						   23 => x"36",
						   26 => x"00",
						   27 => x"35",
						   28 => x"fd",
						   29 => x"07",
						   30 => x"00",
						   31 => x"40",
						   32 => x"14",
						   33 => x"13",
						   34 => x"7d",
						   35 => x"12",
						   36 => x"68",
						   37 => x"69",
						   38 => x"ff",
						   39 => x"00",
						   40 => x"00",
						   41 => x"19",
						   42 => x"6a",
						   43 => x"26",
						   46 => x"3a",
						   47 => x"be",
						   48 => x"01",
						   49 => x"50",
						   50 => x"00",
						   51 => x"25",
						   52 => x"0e",
						   53 => x"77",
						   54 => x"76",
						   55 => x"01",
						   56 => x"d0",
						   57 => x"6b",
						   58 => x"ff",
						   59 => x"00",
						   60 => x"00",
						   61 => x"04",
						   62 => x"00",
						   63 => x"03",
						   64 => x"00",
						   65 => x"6d",
						   66 => x"6c",
						   67 => x"df",
						   68 => x"02",
						   69 => x"01",
						   70 => x"58",
						   71 => x"00",
						   72 => x"59",
						   73 => x"01",
						   74 => x"81",
						   75 => x"33",
						   76 => x"09",
						   77 => x"ff",
						   78 => x"0a",
						   79 => x"5a",
						   80 => x"00",
						   81 => x"16",
						   82 => x"0b",
						   83 => x"00",
						   84 => x"0c",
						   85 => x"00",
						   86 => x"e7",
						   87 => x"00",
						   88 => x"2a",
						   89 => x"2b",
						   90 => x"02",
						   91 => x"91",
						   92 => x"02",
						   93 => x"d1",
						   94 => x"15",
						   95 => x"00",
						   96 => x"7e",
						   97 => x"af",
						   98 => x"7f",
						   99 => x"67",
						   100 => x"00",
						   101 => x"66",
						   102 => x"00",
						   103 => x"e4",
						   104 => x"5b",
						   105 => x"01",
						   106 => x"62",
						   107 => x"74",
						   108 => x"ef",
						   109 => x"75",
						   112 => x"73",
						   113 => x"06",
						   114 => x"00",
						   115 => x"5d",
						   116 => x"5e",
						   117 => x"5c",
						   118 => x"ff",
						   119 => x"00",
						   120 => x"72",
						   121 => x"5f",
						   122 => x"71",
						   123 => x"00",
						   124 => x"48",
						   125 => x"47",
						   126 => x"00",
						   127 => x"ff",
						   128 => x"44",
						   129 => x"49",
						   132 => x"1d",
						   133 => x"00",
						   134 => x"46",
						   135 => x"00",
						   136 => x"ff",
						   137 => x"45",
						   140 => x"23",
						   141 => x"22",
						   142 => x"79",
						   143 => x"00",
						   144 => x"7a",
						   145 => x"ff",
						   146 => x"00",
						   147 => x"4a",
						   150 => x"1e",
						   151 => x"06",
						   152 => x"00",
						   153 => x"7b",
						   154 => x"f6",
						   155 => x"08",
						   156 => x"60",
						   157 => x"7c",
						   158 => x"11",
						   159 => x"08",
						   160 => x"b0",
						   161 => x"43",
						   162 => x"1a",
						   163 => x"00",
						   164 => x"1b",
						   165 => x"57",
						   166 => x"1c",
						   167 => x"00",
						   168 => x"3b",
						   169 => x"05",
						   170 => x"52",
						   171 => x"0f",
						   172 => x"05",
						   173 => x"b5",
						   174 => x"05",
						   175 => x"0a",
						   176 => x"40",
						   177 => x"ff",
						   178 => x"6e",
						   179 => x"00",
						   180 => x"6f",
						   181 => x"10",
						   182 => x"57",
						   183 => x"54",
						   184 => x"00",
						   185 => x"2d",
						   186 => x"af",
						   187 => x"56",
						   188 => x"55",
						   189 => x"00",
						   190 => x"32",
						   191 => x"0b",
						   192 => x"30",
						   193 => x"2e",
						   194 => x"0b",
						   195 => x"70",
						   196 => x"21",
						   197 => x"ff",
						   198 => x"00",
						   199 => x"53",
						   200 => x"00",
						   201 => x"2c",
						   202 => x"4b",
						   203 => x"00",
						   204 => x"00",
						   205 => x"1f",
						   206 => x"fe",
						   207 => x"08",
						   208 => x"34",
						   209 => x"20",
						   210 => x"64",
						   211 => x"3d",
						   212 => x"65",
						   213 => x"42",
						   214 => x"00",
						   215 => x"3e",
						   216 => x"bf",
						   217 => x"00",
						   218 => x"31",
						   219 => x"63",
						   220 => x"3c",
						   221 => x"00",
						   222 => x"2f",
						   223 => x"0d",
						   224 => x"70",
						   225 => x"30",
						   226 => x"ff",
						   227 => x"4d",
						   228 => x"52",
						   229 => x"4e",
						   230 => x"41",
						   231 => x"4c",
						   232 => x"3f",
						   233 => x"00",
						   234 => x"40",
						   235 => x"ff",
						   236 => x"62",
						   237 => x"51",
						   238 => x"4f",
						   239 => x"50",
						   240 => x"61",
						   241 => x"60",
						   242 => x"70",
						   243 => x"00",
						   244 => x"03",
						   245 => x"e8",
						   246 => x"03",
						   247 => x"ff",
						   248 => x"f0",
						   249 => x"00",
						   250 => x"80",
						   251 => x"81",
						   252 => x"fa",
						   253 => x"82",
						   254 => x"00",
						   255 => x"80",
						   256 => x"00",
						   257 => x"20",
						   -- Begin: program memory TEXT Section
						   258 => x"B2",		-- 008102: B240             MOV.W   #0x5a80,&WDTCTL_L
						   259 => x"60",
						   260 => x"80",		-- 008104: 805A            
						   261 => x"5A",
						   262 => x"CC",		-- 008106: CC01            
						   263 => x"01",
						   264 => x"92",		-- 008108: 92C3             BIC.W   #1,&PM5CTL0_L
						   265 => x"E3",
						   266 => x"30",		-- 00810a: 3001            
						   267 => x"01",
						   268 => x"5F",		-- 00810c: 5F42             MOV.B   &P1DIR,R15
						   269 => x"62",
						   270 => x"04",		-- 00810e: 0402            
						   271 => x"02",
						   272 => x"C2",		-- 008110: C243             CLR.B   &P1DIR
						   273 => x"63",
						   274 => x"04",		-- 008112: 0402            
						   275 => x"02",
						   276 => x"F2",		-- 008114: F2D0             BIS.B   #0x0003,&P2DIR
						   277 => x"F0",
						   278 => x"03",		-- 008116: 0300            
						   279 => x"00",
						   280 => x"05",		-- 008118: 0502            
						   281 => x"02",
						   282 => x"B2",		-- 00811a: B2D0             BIS.W   #0x0220,&TB0CTL_L
						   283 => x"F0",
						   284 => x"20",		-- 00811c: 2002            
						   285 => x"02",
						   286 => x"80",		-- 00811e: 8003            
						   287 => x"03",
						   288 => x"B2",		-- 008120: B2D0             BIS.W   #0x0010,&TB0CCTL0_L
						   289 => x"F0",
						   290 => x"10",		-- 008122: 1000            
						   291 => x"00",
						   292 => x"82",		-- 008124: 8203            
						   293 => x"03",
						   294 => x"92",		-- 008126: 9242             MOV.W   &frequency,&TB0CCR0_L
						   295 => x"62",
						   296 => x"00",		-- 008128: 0021            
						   297 => x"21",
						   298 => x"92",		-- 00812a: 9203            
						   299 => x"03",
						   300 => x"E2",		-- 00812c: E2D2             BIS.B   #4,&P2DIR
						   301 => x"F2",
						   302 => x"05",		-- 00812e: 0502            
						   303 => x"02",
						   304 => x"32",		-- 008130: 32D2             EINT    
						   305 => x"F2",
						   306 => x"5F",		-- 008132: 5F42             MOV.B   &P1IN,R15
						   307 => x"62",
						   308 => x"00",		-- 008134: 0002            
						   309 => x"02",
						   310 => x"5C",		-- 008136: 5C4F             MOV.B   0x2000(R15),R12
						   311 => x"6F",
						   312 => x"00",		-- 008138: 0020            
						   313 => x"20",
						   314 => x"7C",		-- 00813a: 7C90             CMP.B   #0x003f,R12
						   315 => x"B0",
						   316 => x"3F",		-- 00813c: 3F00            
						   317 => x"00",
						   318 => x"0D",		-- 00813e: 0D28             JLO     ($C$L3)
						   319 => x"48",
						   320 => x"7C",		-- 008140: 7C90             CMP.B   #0x0040,R12
						   321 => x"B0",
						   322 => x"40",		-- 008142: 4000            
						   323 => x"00",
						   324 => x"03",		-- 008144: 032C             JHS     ($C$L2)
						   325 => x"4C",
						   326 => x"E2",		-- 008146: E2D2             BIS.B   #4,&P2OUT
						   327 => x"F2",
						   328 => x"03",		-- 008148: 0302            
						   329 => x"02",
						   330 => x"0F",		-- 00814a: 0F3C             JMP     ($C$L4)
						   331 => x"5C",
						   332 => x"E2",		-- 00814c: E2C2             BIC.B   #4,&P2OUT
						   333 => x"E2",
						   334 => x"03",		-- 00814e: 0302            
						   335 => x"02",
						   336 => x"E2",		-- 008150: E2D3             BIS.B   #2,&P2OUT
						   337 => x"F3",
						   338 => x"03",		-- 008152: 0302            
						   339 => x"02",
						   340 => x"7C",		-- 008154: 7C80             SUB.B   #0x003f,R12
						   341 => x"A0",
						   342 => x"3F",		-- 008156: 3F00            
						   343 => x"00",
						   344 => x"08",		-- 008158: 083C             JMP     ($C$L4)
						   345 => x"5C",
						   346 => x"E2",		-- 00815a: E2C2             BIC.B   #4,&P2OUT
						   347 => x"E2",
						   348 => x"03",		-- 00815c: 0302            
						   349 => x"02",
						   350 => x"E2",		-- 00815e: E2C3             BIC.B   #2,&P2OUT
						   351 => x"E3",
						   352 => x"03",		-- 008160: 0302            
						   353 => x"02",
						   354 => x"3F",		-- 008162: 3F40             MOV.W   #0x003f,R15
						   355 => x"60",
						   356 => x"3F",		-- 008164: 3F00            
						   357 => x"00",
						   358 => x"4F",		-- 008166: 4F8C             SUB.B   R12,R15
						   359 => x"AC",
						   360 => x"0C",		-- 008168: 0C4F             MOV.W   R15,R12
						   361 => x"6F",
						   362 => x"4C",		-- 00816a: 4C4C             MOV.B   R12,R12
						   363 => x"6C",
						   364 => x"3D",		-- 00816c: 3D40             MOV.W   #0x002e,R13
						   365 => x"60",
						   366 => x"2E",		-- 00816e: 2E00            
						   367 => x"00",
						   368 => x"B0",		-- 008170: B012             CALL    #__mspabi_mpyi
						   369 => x"32",
						   370 => x"E6",		-- 008172: E682            
						   371 => x"82",
						   372 => x"3F",		-- 008174: 3F40             MOV.W   #0x0fa0,R15
						   373 => x"60",
						   374 => x"A0",		-- 008176: A00F            
						   375 => x"0F",
						   376 => x"0F",		-- 008178: 0F8C             SUB.W   R12,R15
						   377 => x"AC",
						   378 => x"82",		-- 00817a: 824F             MOV.W   R15,&frequency
						   379 => x"6F",
						   380 => x"00",		-- 00817c: 0021            
						   381 => x"21",
						   382 => x"D9",		-- 00817e: D93F             JMP     ($C$L1)
						   383 => x"5F",
						   -- Begin: __TI_decompress_lzss
						   384 => x"0A",		-- 008180: 0A12             PUSH    R10
						   385 => x"32",
						   386 => x"09",		-- 008182: 0912             PUSH    R9
						   387 => x"32",
						   388 => x"08",		-- 008184: 0812             PUSH    R8
						   389 => x"32",
						   390 => x"0A",		-- 008186: 0A4C             MOV.W   R12,R10
						   391 => x"6C",
						   392 => x"78",		-- 008188: 784A             MOV.B   @R10+,R8
						   393 => x"6A",
						   394 => x"09",		-- 00818a: 0943             CLR.W   R9
						   395 => x"63",
						   396 => x"11",		-- 00818c: 113C             JMP     ($C$L6)
						   397 => x"5C",
						   398 => x"0E",		-- 00818e: 0E4D             MOV.W   R13,R14
						   399 => x"6D",
						   400 => x"0E",		-- 008190: 0E8B             SUB.W   R11,R14
						   401 => x"AB",
						   402 => x"1E",		-- 008192: 1E83             DEC.W   R14
						   403 => x"A3",
						   404 => x"1D",		-- 008194: 1D53             INC.W   R13
						   405 => x"73",
						   406 => x"FD",		-- 008196: FD4E             MOV.B   @R14+,0xffff(R13)
						   407 => x"6E",
						   408 => x"FF",		-- 008198: FFFF            
						   409 => x"FF",
						   410 => x"1F",		-- 00819a: 1F83             DEC.W   R15
						   411 => x"A3",
						   412 => x"FB",		-- 00819c: FB23             JNE     ($C$L3)
						   413 => x"43",
						   414 => x"03",		-- 00819e: 033C             JMP     ($C$L5)
						   415 => x"5C",
						   416 => x"1D",		-- 0081a0: 1D53             INC.W   R13
						   417 => x"73",
						   418 => x"FD",		-- 0081a2: FD4A             MOV.B   @R10+,0xffff(R13)
						   419 => x"6A",
						   420 => x"FF",		-- 0081a4: FFFF            
						   421 => x"FF",
						   422 => x"12",		-- 0081a6: 12C3             CLRC    
						   423 => x"E3",
						   424 => x"08",		-- 0081a8: 0810             RRC     R8
						   425 => x"30",
						   426 => x"19",		-- 0081aa: 1953             INC.W   R9
						   427 => x"73",
						   428 => x"39",		-- 0081ac: 3992             CMP.W   #8,R9
						   429 => x"B2",
						   430 => x"EC",		-- 0081ae: EC37             JGE     ($C$L1)
						   431 => x"57",
						   432 => x"18",		-- 0081b0: 18B3             BIT.W   #1,R8
						   433 => x"D3",
						   434 => x"F6",		-- 0081b2: F623             JNE     ($C$L4)
						   435 => x"43",
						   436 => x"7B",		-- 0081b4: 7B4A             MOV.B   @R10+,R11
						   437 => x"6A",
						   438 => x"7F",		-- 0081b6: 7F4A             MOV.B   @R10+,R15
						   439 => x"6A",
						   440 => x"0C",		-- 0081b8: 0C4B             MOV.W   R11,R12
						   441 => x"6B",
						   442 => x"B0",		-- 0081ba: B012             CALL    #__mspabi_slli_4
						   443 => x"32",
						   444 => x"AC",		-- 0081bc: AC82            
						   445 => x"82",
						   446 => x"0B",		-- 0081be: 0B4C             MOV.W   R12,R11
						   447 => x"6C",
						   448 => x"0C",		-- 0081c0: 0C4F             MOV.W   R15,R12
						   449 => x"6F",
						   450 => x"B0",		-- 0081c2: B012             CALL    #__mspabi_srli_4
						   451 => x"32",
						   452 => x"36",		-- 0081c4: 3682            
						   453 => x"82",
						   454 => x"3C",		-- 0081c6: 3CF0             AND.W   #0x000f,R12
						   455 => x"10",
						   456 => x"0F",		-- 0081c8: 0F00            
						   457 => x"00",
						   458 => x"0B",		-- 0081ca: 0BDC             BIS.W   R12,R11
						   459 => x"FC",
						   460 => x"3F",		-- 0081cc: 3FF0             AND.W   #0x000f,R15
						   461 => x"10",
						   462 => x"0F",		-- 0081ce: 0F00            
						   463 => x"00",
						   464 => x"3F",		-- 0081d0: 3F50             ADD.W   #0x0003,R15
						   465 => x"70",
						   466 => x"03",		-- 0081d2: 0300            
						   467 => x"00",
						   468 => x"3F",		-- 0081d4: 3F90             CMP.W   #0x0012,R15
						   469 => x"B0",
						   470 => x"12",		-- 0081d6: 1200            
						   471 => x"00",
						   472 => x"0C",		-- 0081d8: 0C20             JNE     ($C$L8)
						   473 => x"40",
						   474 => x"7E",		-- 0081da: 7E4A             MOV.B   @R10+,R14
						   475 => x"6A",
						   476 => x"3E",		-- 0081dc: 3EB0             BIT.W   #0x0080,R14
						   477 => x"D0",
						   478 => x"80",		-- 0081de: 8000            
						   479 => x"00",
						   480 => x"07",		-- 0081e0: 0724             JEQ     ($C$L7)
						   481 => x"44",
						   482 => x"7C",		-- 0081e2: 7C4A             MOV.B   @R10+,R12
						   483 => x"6A",
						   484 => x"4C",		-- 0081e4: 4C4C             MOV.B   R12,R12
						   485 => x"6C",
						   486 => x"B0",		-- 0081e6: B012             CALL    #__mspabi_slli_7
						   487 => x"32",
						   488 => x"A6",		-- 0081e8: A682            
						   489 => x"82",
						   490 => x"3E",		-- 0081ea: 3EF0             AND.W   #0x007f,R14
						   491 => x"10",
						   492 => x"7F",		-- 0081ec: 7F00            
						   493 => x"00",
						   494 => x"0E",		-- 0081ee: 0EDC             BIS.W   R12,R14
						   495 => x"FC",
						   496 => x"0F",		-- 0081f0: 0F5E             ADD.W   R14,R15
						   497 => x"7E",
						   498 => x"3B",		-- 0081f2: 3B90             CMP.W   #0x0fff,R11
						   499 => x"B0",
						   500 => x"FF",		-- 0081f4: FF0F            
						   501 => x"0F",
						   502 => x"CB",		-- 0081f6: CB23             JNE     ($C$L2)
						   503 => x"43",
						   504 => x"30",		-- 0081f8: 3040             BR      #__mspabi_func_epilog_3
						   505 => x"60",
						   506 => x"26",		-- 0081fa: 2683            
						   507 => x"83",
						   -- Begin: __mspabi_srli
						   508 => x"3D",		-- 0081fc: 3DF0             AND.W   #0x000f,R13
						   509 => x"10",
						   510 => x"0F",		-- 0081fe: 0F00            
						   511 => x"00",
						   512 => x"3D",		-- 008200: 3DE0             XOR.W   #0x000f,R13
						   513 => x"00",
						   514 => x"0F",		-- 008202: 0F00            
						   515 => x"00",
						   516 => x"0D",		-- 008204: 0D5D             RLA.W   R13
						   517 => x"7D",
						   518 => x"0D",		-- 008206: 0D5D             RLA.W   R13
						   519 => x"7D",
						   520 => x"00",		-- 008208: 005D             ADD.W   R13,PC
						   521 => x"7D",
						   -- Begin: __mspabi_srli_15
						   522 => x"12",		-- 00820a: 12C3             CLRC    
						   523 => x"E3",
						   524 => x"0C",		-- 00820c: 0C10             RRC     R12
						   525 => x"30",
						   -- Begin: __mspabi_srli_14
						   526 => x"12",		-- 00820e: 12C3             CLRC    
						   527 => x"E3",
						   528 => x"0C",		-- 008210: 0C10             RRC     R12
						   529 => x"30",
						   -- Begin: __mspabi_srli_13
						   530 => x"12",		-- 008212: 12C3             CLRC    
						   531 => x"E3",
						   532 => x"0C",		-- 008214: 0C10             RRC     R12
						   533 => x"30",
						   -- Begin: __mspabi_srli_12
						   534 => x"12",		-- 008216: 12C3             CLRC    
						   535 => x"E3",
						   536 => x"0C",		-- 008218: 0C10             RRC     R12
						   537 => x"30",
						   -- Begin: __mspabi_srli_11
						   538 => x"12",		-- 00821a: 12C3             CLRC    
						   539 => x"E3",
						   540 => x"0C",		-- 00821c: 0C10             RRC     R12
						   541 => x"30",
						   -- Begin: __mspabi_srli_10
						   542 => x"12",		-- 00821e: 12C3             CLRC    
						   543 => x"E3",
						   544 => x"0C",		-- 008220: 0C10             RRC     R12
						   545 => x"30",
						   -- Begin: __mspabi_srli_9
						   546 => x"12",		-- 008222: 12C3             CLRC    
						   547 => x"E3",
						   548 => x"0C",		-- 008224: 0C10             RRC     R12
						   549 => x"30",
						   -- Begin: __mspabi_srli_8
						   550 => x"12",		-- 008226: 12C3             CLRC    
						   551 => x"E3",
						   552 => x"0C",		-- 008228: 0C10             RRC     R12
						   553 => x"30",
						   -- Begin: __mspabi_srli_7
						   554 => x"12",		-- 00822a: 12C3             CLRC    
						   555 => x"E3",
						   556 => x"0C",		-- 00822c: 0C10             RRC     R12
						   557 => x"30",
						   -- Begin: __mspabi_srli_6
						   558 => x"12",		-- 00822e: 12C3             CLRC    
						   559 => x"E3",
						   560 => x"0C",		-- 008230: 0C10             RRC     R12
						   561 => x"30",
						   -- Begin: __mspabi_srli_5
						   562 => x"12",		-- 008232: 12C3             CLRC    
						   563 => x"E3",
						   564 => x"0C",		-- 008234: 0C10             RRC     R12
						   565 => x"30",
						   -- Begin: __mspabi_srli_4
						   566 => x"12",		-- 008236: 12C3             CLRC    
						   567 => x"E3",
						   568 => x"0C",		-- 008238: 0C10             RRC     R12
						   569 => x"30",
						   -- Begin: __mspabi_srli_3
						   570 => x"12",		-- 00823a: 12C3             CLRC    
						   571 => x"E3",
						   572 => x"0C",		-- 00823c: 0C10             RRC     R12
						   573 => x"30",
						   -- Begin: __mspabi_srli_2
						   574 => x"12",		-- 00823e: 12C3             CLRC    
						   575 => x"E3",
						   576 => x"0C",		-- 008240: 0C10             RRC     R12
						   577 => x"30",
						   -- Begin: __mspabi_srli_1
						   578 => x"12",		-- 008242: 12C3             CLRC    
						   579 => x"E3",
						   580 => x"0C",		-- 008244: 0C10             RRC     R12
						   581 => x"30",
						   582 => x"30",		-- 008246: 3041             RET     
						   583 => x"61",
						   -- Begin: __TI_auto_init_nobinit_nopinit
						   584 => x"0A",		-- 008248: 0A12             PUSH    R10
						   585 => x"32",
						   586 => x"09",		-- 00824a: 0912             PUSH    R9
						   587 => x"32",
						   588 => x"3F",		-- 00824c: 3F40             MOV.W   #0x80fa,R15
						   589 => x"60",
						   590 => x"FA",		-- 00824e: FA80            
						   591 => x"80",
						   592 => x"3F",		-- 008250: 3F90             CMP.W   #0x80fe,R15
						   593 => x"B0",
						   594 => x"FE",		-- 008252: FE80            
						   595 => x"80",
						   596 => x"16",		-- 008254: 1624             JEQ     ($C$L22)
						   597 => x"44",
						   598 => x"3F",		-- 008256: 3F40             MOV.W   #0x80fe,R15
						   599 => x"60",
						   600 => x"FE",		-- 008258: FE80            
						   601 => x"80",
						   602 => x"3F",		-- 00825a: 3F90             CMP.W   #0x8102,R15
						   603 => x"B0",
						   604 => x"02",		-- 00825c: 0281            
						   605 => x"81",
						   606 => x"11",		-- 00825e: 1124             JEQ     ($C$L22)
						   607 => x"44",
						   608 => x"3A",		-- 008260: 3A40             MOV.W   #0x8102,R10
						   609 => x"60",
						   610 => x"02",		-- 008262: 0281            
						   611 => x"81",
						   612 => x"3A",		-- 008264: 3A80             SUB.W   #0x80fe,R10
						   613 => x"A0",
						   614 => x"FE",		-- 008266: FE80            
						   615 => x"80",
						   616 => x"0A",		-- 008268: 0A11             RRA     R10
						   617 => x"31",
						   618 => x"0A",		-- 00826a: 0A11             RRA     R10
						   619 => x"31",
						   620 => x"39",		-- 00826c: 3940             MOV.W   #0x80fe,R9
						   621 => x"60",
						   622 => x"FE",		-- 00826e: FE80            
						   623 => x"80",
						   624 => x"3C",		-- 008270: 3C49             MOV.W   @R9+,R12
						   625 => x"69",
						   626 => x"7F",		-- 008272: 7F4C             MOV.B   @R12+,R15
						   627 => x"6C",
						   628 => x"0F",		-- 008274: 0F5F             RLA.W   R15
						   629 => x"7F",
						   630 => x"1F",		-- 008276: 1F4F             MOV.W   0x80fa(R15),R15
						   631 => x"6F",
						   632 => x"FA",		-- 008278: FA80            
						   633 => x"80",
						   634 => x"3D",		-- 00827a: 3D49             MOV.W   @R9+,R13
						   635 => x"69",
						   636 => x"8F",		-- 00827c: 8F12             CALL    R15
						   637 => x"32",
						   638 => x"1A",		-- 00827e: 1A83             DEC.W   R10
						   639 => x"A3",
						   640 => x"F7",		-- 008280: F723             JNE     ($C$L21)
						   641 => x"43",
						   642 => x"B0",		-- 008282: B012             CALL    #_system_post_cinit
						   643 => x"32",
						   644 => x"38",		-- 008284: 3883            
						   645 => x"83",
						   646 => x"30",		-- 008286: 3040             BR      #__mspabi_func_epilog_2
						   647 => x"60",
						   648 => x"28",		-- 008288: 2883            
						   649 => x"83",
						   -- Begin: __mspabi_slli
						   650 => x"3D",		-- 00828a: 3DF0             AND.W   #0x000f,R13
						   651 => x"10",
						   652 => x"0F",		-- 00828c: 0F00            
						   653 => x"00",
						   654 => x"3D",		-- 00828e: 3DE0             XOR.W   #0x000f,R13
						   655 => x"00",
						   656 => x"0F",		-- 008290: 0F00            
						   657 => x"00",
						   658 => x"0D",		-- 008292: 0D5D             RLA.W   R13
						   659 => x"7D",
						   660 => x"00",		-- 008294: 005D             ADD.W   R13,PC
						   661 => x"7D",
						   -- Begin: __mspabi_slli_15
						   662 => x"0C",		-- 008296: 0C5C             RLA.W   R12
						   663 => x"7C",
						   -- Begin: __mspabi_slli_14
						   664 => x"0C",		-- 008298: 0C5C             RLA.W   R12
						   665 => x"7C",
						   -- Begin: __mspabi_slli_13
						   666 => x"0C",		-- 00829a: 0C5C             RLA.W   R12
						   667 => x"7C",
						   -- Begin: __mspabi_slli_12
						   668 => x"0C",		-- 00829c: 0C5C             RLA.W   R12
						   669 => x"7C",
						   -- Begin: __mspabi_slli_11
						   670 => x"0C",		-- 00829e: 0C5C             RLA.W   R12
						   671 => x"7C",
						   -- Begin: __mspabi_slli_10
						   672 => x"0C",		-- 0082a0: 0C5C             RLA.W   R12
						   673 => x"7C",
						   -- Begin: __mspabi_slli_9
						   674 => x"0C",		-- 0082a2: 0C5C             RLA.W   R12
						   675 => x"7C",
						   -- Begin: __mspabi_slli_8
						   676 => x"0C",		-- 0082a4: 0C5C             RLA.W   R12
						   677 => x"7C",
						   -- Begin: __mspabi_slli_7
						   678 => x"0C",		-- 0082a6: 0C5C             RLA.W   R12
						   679 => x"7C",
						   -- Begin: __mspabi_slli_6
						   680 => x"0C",		-- 0082a8: 0C5C             RLA.W   R12
						   681 => x"7C",
						   -- Begin: __mspabi_slli_5
						   682 => x"0C",		-- 0082aa: 0C5C             RLA.W   R12
						   683 => x"7C",
						   -- Begin: __mspabi_slli_4
						   684 => x"0C",		-- 0082ac: 0C5C             RLA.W   R12
						   685 => x"7C",
						   -- Begin: __mspabi_slli_3
						   686 => x"0C",		-- 0082ae: 0C5C             RLA.W   R12
						   687 => x"7C",
						   -- Begin: __mspabi_slli_2
						   688 => x"0C",		-- 0082b0: 0C5C             RLA.W   R12
						   689 => x"7C",
						   -- Begin: __mspabi_slli_1
						   690 => x"0C",		-- 0082b2: 0C5C             RLA.W   R12
						   691 => x"7C",
						   692 => x"30",		-- 0082b4: 3041             RET     
						   693 => x"61",
						   -- Begin: _c_int00_noargs
						   694 => x"31",		-- 0082b6: 3140             MOV.W   #0x3000,SP
						   695 => x"60",
						   696 => x"00",		-- 0082b8: 0030            
						   697 => x"30",
						   698 => x"B0",		-- 0082ba: B012             CALL    #_system_pre_init
						   699 => x"32",
						   700 => x"34",		-- 0082bc: 3483            
						   701 => x"83",
						   702 => x"0C",		-- 0082be: 0C93             TST.W   R12
						   703 => x"B3",
						   704 => x"02",		-- 0082c0: 0224             JEQ     ($C$L2)
						   705 => x"44",
						   706 => x"B0",		-- 0082c2: B012             CALL    #__TI_auto_init_nobinit_nopinit
						   707 => x"32",
						   708 => x"48",		-- 0082c4: 4882            
						   709 => x"82",
						   710 => x"0C",		-- 0082c6: 0C43             CLR.W   R12
						   711 => x"63",
						   712 => x"B0",		-- 0082c8: B012             CALL    #main
						   713 => x"32",
						   714 => x"02",		-- 0082ca: 0281            
						   715 => x"81",
						   716 => x"1C",		-- 0082cc: 1C43             MOV.W   #1,R12
						   717 => x"63",
						   718 => x"B0",		-- 0082ce: B012             CALL    #abort
						   719 => x"32",
						   720 => x"2E",		-- 0082d0: 2E83            
						   721 => x"83",
						   -- Begin: Timer_ISR
						   722 => x"92",		-- 0082d2: 9252             ADD.W   &frequency,&TB0CCR0_L
						   723 => x"72",
						   724 => x"00",		-- 0082d4: 0021            
						   725 => x"21",
						   726 => x"92",		-- 0082d6: 9203            
						   727 => x"03",
						   728 => x"D2",		-- 0082d8: D2E3             XOR.B   #1,&P2OUT
						   729 => x"03",
						   730 => x"03",		-- 0082da: 0302            
						   731 => x"02",
						   732 => x"92",		-- 0082dc: 9253             INC.W   &frequency
						   733 => x"73",
						   734 => x"00",		-- 0082de: 0021            
						   735 => x"21",
						   736 => x"92",		-- 0082e0: 92C3             BIC.W   #1,&TB0CCTL0_L
						   737 => x"E3",
						   738 => x"82",		-- 0082e2: 8203            
						   739 => x"03",
						   740 => x"00",		-- 0082e4: 0013             RETI    
						   741 => x"33",
						   -- Begin: __mspabi_mpyi
						   -- Begin: __mspabi_mpyi_sw
						   742 => x"0E",		-- 0082e6: 0E43             CLR.W   R14
						   743 => x"63",
						   -- Begin: mpyi_add_loop
						   744 => x"12",		-- 0082e8: 12C3             CLRC    
						   745 => x"E3",
						   746 => x"0C",		-- 0082ea: 0C10             RRC     R12
						   747 => x"30",
						   748 => x"01",		-- 0082ec: 0128             JLO     (shift_test_mpyi)
						   749 => x"48",
						   750 => x"0E",		-- 0082ee: 0E5D             ADD.W   R13,R14
						   751 => x"7D",
						   -- Begin: shift_test_mpyi
						   752 => x"0D",		-- 0082f0: 0D5D             RLA.W   R13
						   753 => x"7D",
						   754 => x"0C",		-- 0082f2: 0C93             TST.W   R12
						   755 => x"B3",
						   756 => x"F9",		-- 0082f4: F923             JNE     (mpyi_add_loop)
						   757 => x"43",
						   758 => x"0C",		-- 0082f6: 0C4E             MOV.W   R14,R12
						   759 => x"6E",
						   760 => x"30",		-- 0082f8: 3041             RET     
						   761 => x"61",
						   -- Begin: __TI_decompress_none
						   762 => x"0F",		-- 0082fa: 0F4C             MOV.W   R12,R15
						   763 => x"6C",
						   764 => x"0C",		-- 0082fc: 0C4D             MOV.W   R13,R12
						   765 => x"6D",
						   766 => x"3D",		-- 0082fe: 3D40             MOV.W   #0x0003,R13
						   767 => x"60",
						   768 => x"03",		-- 008300: 0300            
						   769 => x"00",
						   770 => x"0D",		-- 008302: 0D5F             ADD.W   R15,R13
						   771 => x"7F",
						   772 => x"1E",		-- 008304: 1E4F             MOV.W   0x0001(R15),R14
						   773 => x"6F",
						   774 => x"01",		-- 008306: 0100            
						   775 => x"00",
						   776 => x"30",		-- 008308: 3040             BR      #memcpy
						   777 => x"60",
						   778 => x"0C",		-- 00830a: 0C83            
						   779 => x"83",
						   -- Begin: memcpy
						   780 => x"0E",		-- 00830c: 0E93             TST.W   R14
						   781 => x"B3",
						   782 => x"06",		-- 00830e: 0624             JEQ     ($C$L2)
						   783 => x"44",
						   784 => x"0F",		-- 008310: 0F4C             MOV.W   R12,R15
						   785 => x"6C",
						   786 => x"1F",		-- 008312: 1F53             INC.W   R15
						   787 => x"73",
						   788 => x"FF",		-- 008314: FF4D             MOV.B   @R13+,0xffff(R15)
						   789 => x"6D",
						   790 => x"FF",		-- 008316: FFFF            
						   791 => x"FF",
						   792 => x"1E",		-- 008318: 1E83             DEC.W   R14
						   793 => x"A3",
						   794 => x"FB",		-- 00831a: FB23             JNE     ($C$L1)
						   795 => x"43",
						   796 => x"30",		-- 00831c: 3041             RET     
						   797 => x"61",
						   -- Begin: __mspabi_func_epilog_7
						   -- Begin: __mspabi_func_epilog
						   798 => x"34",		-- 00831e: 3441             POP.W   R4
						   799 => x"61",
						   -- Begin: __mspabi_func_epilog_6
						   800 => x"35",		-- 008320: 3541             POP.W   R5
						   801 => x"61",
						   -- Begin: __mspabi_func_epilog_5
						   802 => x"36",		-- 008322: 3641             POP.W   R6
						   803 => x"61",
						   -- Begin: __mspabi_func_epilog_4
						   804 => x"37",		-- 008324: 3741             POP.W   R7
						   805 => x"61",
						   -- Begin: __mspabi_func_epilog_3
						   806 => x"38",		-- 008326: 3841             POP.W   R8
						   807 => x"61",
						   -- Begin: __mspabi_func_epilog_2
						   808 => x"39",		-- 008328: 3941             POP.W   R9
						   809 => x"61",
						   -- Begin: __mspabi_func_epilog_1
						   810 => x"3A",		-- 00832a: 3A41             POP.W   R10
						   811 => x"61",
						   812 => x"30",		-- 00832c: 3041             RET     
						   813 => x"61",
						   -- Begin: abort
						   814 => x"03",		-- 00832e: 0343             NOP     
						   815 => x"63",
						   816 => x"FF",		-- 008330: FF3F             JMP     ($C$L1)
						   817 => x"5F",
						   818 => x"03",		-- 008332: 0343             NOP     
						   819 => x"63",
						   -- Begin: _system_pre_init
						   820 => x"1C",		-- 008334: 1C43             MOV.W   #1,R12
						   821 => x"63",
						   822 => x"30",		-- 008336: 3041             RET     
						   823 => x"61",
						   -- Begin: _system_post_cinit
						   824 => x"30",		-- 008338: 3041             RET     
						   825 => x"61",
						   -- ISR Trap
						   826 => x"32",		-- 00833a: 32D0             BIS.W   #0x0010,SR
						   827 => x"F0",
						   828 => x"10",		-- 00833c: 1000            
						   829 => x"00",
						   830 => x"FD",		-- 00833e: FD3F             JMP     (__TI_ISR_TRAP)
						   831 => x"5F",
						   832 => x"03",		-- 008340: 0343             NOP     
						   833 => x"63",
						   -- IRQ Vectors (Interrupt Vectors)
						   32718 => x"3a",		-- 00ffce:833a PORT4 __TI_int22 int22
						   32719 => x"83",
						   32720 => x"3a",		-- 00ffd0:833a PORT3 __TI_int23 int23
						   32721 => x"83",
						   32722 => x"3a",		-- 00ffd2:833a PORT2 __TI_int24 int24
						   32723 => x"83",
						   32724 => x"3a",		-- 00ffd4:833a PORT1 __TI_int25 int25
						   32725 => x"83",
						   32726 => x"3a",		-- 00ffd6:833a SAC1_SAC3 __TI_int26 int26
						   32727 => x"83",
						   32728 => x"3a",		-- 00ffd8:833a SAC0_SAC2 __TI_int27 int27
						   32729 => x"83",
						   32730 => x"3a",		-- 00ffda:833a ECOMP0_ECOMP1 __TI_int28 int28
						   32731 => x"83",
						   32732 => x"3a",		-- 00ffdc:833a ADC __TI_int29 int29
						   32733 => x"83",
						   32734 => x"3a",		-- 00ffde:833a EUSCI_B1 __TI_int30 int30
						   32735 => x"83",
						   32736 => x"3a",		-- 00ffe0:833a EUSCI_B0 __TI_int31 int31
						   32737 => x"83",
						   32738 => x"3a",		-- 00ffe2:833a EUSCI_A1 __TI_int32 int32
						   32739 => x"83",
						   32740 => x"3a",		-- 00ffe4:833a EUSCI_A0 __TI_int33 int33
						   32741 => x"83",
						   32742 => x"3a",		-- 00ffe6:833a WDT __TI_int34 int34
						   32743 => x"83",
						   32744 => x"3a",		-- 00ffe8:833a RTC __TI_int35 int35
						   32745 => x"83",
						   32746 => x"3a",		-- 00ffea:833a TIMER3_B1 __TI_int36 int36
						   32747 => x"83",
						   32748 => x"3a",		-- 00ffec:833a TIMER3_B0 __TI_int37 int37
						   32749 => x"83",
						   32750 => x"3a",		-- 00ffee:833a TIMER2_B1 __TI_int38 int38
						   32751 => x"83",
						   32752 => x"3a",		-- 00fff0:833a TIMER2_B0 __TI_int39 int39
						   32753 => x"83",
						   32754 => x"3a",		-- 00fff2:833a TIMER1_B1 __TI_int40 int40
						   32755 => x"83",
						   32756 => x"3a",		-- 00fff4:833a TIMER1_B0 __TI_int41 int41
						   32757 => x"83",
						   32758 => x"3a",		-- 00fff6:833a TIMER0_B1 __TI_int42 int42
						   32759 => x"83",
						   32760 => x"d2",		-- 00fff8:82d2 TIMER0_B0 __TI_int43 int43
						   32761 => x"82",
						   32762 => x"3a",		-- 00fffa:833a UNMI __TI_int44 int44
						   32763 => x"83",
						   32764 => x"3a",		-- 00fffc:833a SYSNMI __TI_int45 int45
						   32765 => x"83",
						   32766 => x"b6",		-- 00fffe:82b6 .reset _reset_vector reset
						   32767 => x"82",
						   others => x"00");

    
    signal high_addr, low_addr : integer;
    signal read_value : std_logic_vector(15 downto 0);
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
    --                                                 or  = RW(MAB+1) : RW(MAB)
    ADDR_HANDLE : process( MAB )
    begin
        if ( (to_integer(unsigned(MAB)) >= 32768) and (to_integer(unsigned(MAB)) <= 65535)) then
            high_addr<= to_integer(unsigned(MAB))+1-32768;
            low_addr<= to_integer(unsigned(MAB))-32768;
        else
            high_addr<= 1;
            low_addr <= 0;   
        end if;
    end process ; -- ADDR_HANDLE
    LOW_BYTE : process(clk) 
    begin
        if (rising_edge(clk)) then
            read_value(7 downto 0) <= ROM(low_addr);
        end if;
    end process ; -- LOW_BYTE
    WRITE_HIGH_BYTE : process( clk )
    begin
        if (rising_edge(clk)) then
            read_value(15 downto 8)<=ROM(high_addr);
        end if ;
    end process ; -- WRITE_HIGH_BYTE
    MDB_out <= read_value;
    --------------------------------------------------------------------------------------------

end architecture;
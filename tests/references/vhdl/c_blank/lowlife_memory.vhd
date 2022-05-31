library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;


entity lowlife_memory is
    port ( clk	: in	std_logic;
         MAB		: in	std_logic_vector(15 downto 0);
         MDB_in  	: out	std_logic_vector(15 downto 0);
         MDB_out  	: in	std_logic_vector(15 downto 0);
         write	    : in	std_logic;
         Byte       : in    std_logic);
end entity;

architecture lowlife_memory_arch of lowlife_memory is

type rom_type is array (32768 to 65535) of std_logic_vector(7 downto 0);  -- this is MAB: x8000 to xFFFF
    
constant ROM : rom_type :=(						   -- Begin: program memory TEXT Section
						   32788 => x"B2",		-- 008014: B240             MOV.W   #0x5a80,&WDTCTL_L
						   32789 => x"20",
						   32790 => x"80",		-- 008016: 805A            
						   32791 => x"5A",
						   32792 => x"CC",		-- 008018: CC01            
						   32793 => x"01",
						   32794 => x"0C",		-- 00801a: 0C43             CLR.W   R12
						   32795 => x"23",
						   32796 => x"30",		-- 00801c: 3041             RET     
						   32797 => x"21",
						   -- Begin: abort
						   32798 => x"03",		-- 00801e: 0343             NOP     
						   32799 => x"23",
						   32800 => x"FF",		-- 008020: FF3F             JMP     ($C$L1)
						   32801 => x"1F",
						   32802 => x"03",		-- 008022: 0343             NOP     
						   32803 => x"23",
						   -- Begin: _system_pre_init
						   32804 => x"1C",		-- 008024: 1C43             MOV.W   #1,R12
						   32805 => x"23",
						   32806 => x"30",		-- 008026: 3041             RET     
						   32807 => x"21",
						   -- ISR Trap
						   32808 => x"32",		-- 008028: 32D0             BIS.W   #0x0010,SR
						   32809 => x"B0",
						   32810 => x"10",		-- 00802a: 1000            
						   32811 => x"00",
						   32812 => x"FD",		-- 00802c: FD3F             JMP     (__TI_ISR_TRAP)
						   32813 => x"1F",
						   32814 => x"03",		-- 00802e: 0343             NOP     
						   32815 => x"23",
						   -- IRQ Vectors (Interrupt Vectors)
						   65486 => x"28",		-- 00ffce:8028 PORT4 __TI_int22 int22
						   65487 => x"80",
						   65488 => x"28",		-- 00ffd0:8028 PORT3 __TI_int23 int23
						   65489 => x"80",
						   65490 => x"28",		-- 00ffd2:8028 PORT2 __TI_int24 int24
						   65491 => x"80",
						   65492 => x"28",		-- 00ffd4:8028 PORT1 __TI_int25 int25
						   65493 => x"80",
						   65494 => x"28",		-- 00ffd6:8028 SAC1_SAC3 __TI_int26 int26
						   65495 => x"80",
						   65496 => x"28",		-- 00ffd8:8028 SAC0_SAC2 __TI_int27 int27
						   65497 => x"80",
						   65498 => x"28",		-- 00ffda:8028 ECOMP0_ECOMP1 __TI_int28 int28
						   65499 => x"80",
						   65500 => x"28",		-- 00ffdc:8028 ADC __TI_int29 int29
						   65501 => x"80",
						   65502 => x"28",		-- 00ffde:8028 EUSCI_B1 __TI_int30 int30
						   65503 => x"80",
						   65504 => x"28",		-- 00ffe0:8028 EUSCI_B0 __TI_int31 int31
						   65505 => x"80",
						   65506 => x"28",		-- 00ffe2:8028 EUSCI_A1 __TI_int32 int32
						   65507 => x"80",
						   65508 => x"28",		-- 00ffe4:8028 EUSCI_A0 __TI_int33 int33
						   65509 => x"80",
						   65510 => x"28",		-- 00ffe6:8028 WDT __TI_int34 int34
						   65511 => x"80",
						   65512 => x"28",		-- 00ffe8:8028 RTC __TI_int35 int35
						   65513 => x"80",
						   65514 => x"28",		-- 00ffea:8028 TIMER3_B1 __TI_int36 int36
						   65515 => x"80",
						   65516 => x"28",		-- 00ffec:8028 TIMER3_B0 __TI_int37 int37
						   65517 => x"80",
						   65518 => x"28",		-- 00ffee:8028 TIMER2_B1 __TI_int38 int38
						   65519 => x"80",
						   65520 => x"28",		-- 00fff0:8028 TIMER2_B0 __TI_int39 int39
						   65521 => x"80",
						   65522 => x"28",		-- 00fff2:8028 TIMER1_B1 __TI_int40 int40
						   65523 => x"80",
						   65524 => x"28",		-- 00fff4:8028 TIMER1_B0 __TI_int41 int41
						   65525 => x"80",
						   65526 => x"28",		-- 00fff6:8028 TIMER0_B1 __TI_int42 int42
						   65527 => x"80",
						   65528 => x"28",		-- 00fff8:8028 TIMER0_B0 __TI_int43 int43
						   65529 => x"80",
						   65530 => x"28",		-- 00fffa:8028 UNMI __TI_int44 int44
						   65531 => x"80",
						   65532 => x"28",		-- 00fffc:8028 SYSNMI __TI_int45 int45
						   65533 => x"80",
						   65534 => x"00",		-- 00fffe:8000 .reset _reset_vector reset
						   65535 => x"80",
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
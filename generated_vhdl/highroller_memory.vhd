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
    
constant ROM : rom_type :=(32768 => x"B2",		-- 008000: B240             MOV.W   #0x5a80,&WDTCTL_L
						   32769 => x"60",
						   32770 => x"80",		-- 008002: 805A            
						   32771 => x"5A",
						   32772 => x"CC",		-- 008004: CC01            
						   32773 => x"01",
						   32774 => x"92",		-- 008006: 92C3             BIC.W   #1,&PM5CTL0_L
						   32775 => x"E3",
						   32776 => x"30",		-- 008008: 3001            
						   32777 => x"01",
						   32778 => x"B2",		-- 00800a: B2F0             AND.W   #0xf7ff,&P1DIR
						   32779 => x"10",
						   32780 => x"FF",		-- 00800c: FFF7            
						   32781 => x"F7",
						   32782 => x"04",		-- 00800e: 0402            
						   32783 => x"02",
						   32784 => x"B2",		-- 008010: B2D0             BIS.W   #0x0800,&P1REN
						   32785 => x"F0",
						   32786 => x"00",		-- 008012: 0008            
						   32787 => x"08",
						   32788 => x"06",		-- 008014: 0602            
						   32789 => x"02",
						   32790 => x"B2",		-- 008016: B2D0             BIS.W   #0x0800,&P1OUT
						   32791 => x"F0",
						   32792 => x"00",		-- 008018: 0008            
						   32793 => x"08",
						   32794 => x"02",		-- 00801a: 0202            
						   32795 => x"02",
						   32796 => x"B2",		-- 00801c: B2D0             BIS.W   #0x0800,&P1IES
						   32797 => x"F0",
						   32798 => x"00",		-- 00801e: 0008            
						   32799 => x"08",
						   32800 => x"18",		-- 008020: 1802            
						   32801 => x"02",
						   32802 => x"1F",		-- 008022: 1F42             MOV.W   &P1IFG,R15
						   32803 => x"62",
						   32804 => x"1C",		-- 008024: 1C02            
						   32805 => x"02",
						   32806 => x"82",		-- 008026: 8243             CLR.W   &P1IFG
						   32807 => x"63",
						   32808 => x"1C",		-- 008028: 1C02            
						   32809 => x"02",
						   32810 => x"B2",		-- 00802a: B2D0             BIS.W   #0x0800,&P1IE
						   32811 => x"F0",
						   32812 => x"00",		-- 00802c: 0008            
						   32813 => x"08",
						   32814 => x"1A",		-- 00802e: 1A02            
						   32815 => x"02",
						   32816 => x"B2",		-- 008030: B2D0             BIS.W   #0x4000,&P5DIR
						   32817 => x"F0",
						   32818 => x"00",		-- 008032: 0040            
						   32819 => x"40",
						   32820 => x"44",		-- 008034: 4402            
						   32821 => x"02",
						   32822 => x"B2",		-- 008036: B2F0             AND.W   #0xbfff,&P5OUT
						   32823 => x"10",
						   32824 => x"FF",		-- 008038: FFBF            
						   32825 => x"BF",
						   32826 => x"42",		-- 00803a: 4202            
						   32827 => x"02",
						   32828 => x"B2",		-- 00803c: B2F0             AND.W   #0xfdff,&P3DIR
						   32829 => x"10",
						   32830 => x"FF",		-- 00803e: FFFD            
						   32831 => x"FD",
						   32832 => x"24",		-- 008040: 2402            
						   32833 => x"02",
						   32834 => x"B2",		-- 008042: B2D0             BIS.W   #0x0200,&P3REN
						   32835 => x"F0",
						   32836 => x"00",		-- 008044: 0002            
						   32837 => x"02",
						   32838 => x"26",		-- 008046: 2602            
						   32839 => x"02",
						   32840 => x"B2",		-- 008048: B2D0             BIS.W   #0x0200,&P3OUT
						   32841 => x"F0",
						   32842 => x"00",		-- 00804a: 0002            
						   32843 => x"02",
						   32844 => x"22",		-- 00804c: 2202            
						   32845 => x"02",
						   32846 => x"B2",		-- 00804e: B2D0             BIS.W   #0x0200,&P3IES
						   32847 => x"F0",
						   32848 => x"00",		-- 008050: 0002            
						   32849 => x"02",
						   32850 => x"38",		-- 008052: 3802            
						   32851 => x"02",
						   32852 => x"1F",		-- 008054: 1F42             MOV.W   &P3IFG,R15
						   32853 => x"62",
						   32854 => x"3C",		-- 008056: 3C02            
						   32855 => x"02",
						   32856 => x"82",		-- 008058: 8243             CLR.W   &P3IFG
						   32857 => x"63",
						   32858 => x"3C",		-- 00805a: 3C02            
						   32859 => x"02",
						   32860 => x"B2",		-- 00805c: B2D0             BIS.W   #0x0200,&P3IE
						   32861 => x"F0",
						   32862 => x"00",		-- 00805e: 0002            
						   32863 => x"02",
						   32864 => x"3A",		-- 008060: 3A02            
						   32865 => x"02",
						   32866 => x"92",		-- 008062: 92D3             BIS.W   #1,&P1DIR
						   32867 => x"F3",
						   32868 => x"04",		-- 008064: 0402            
						   32869 => x"02",
						   32870 => x"92",		-- 008066: 92C3             BIC.W   #1,&P1OUT
						   32871 => x"E3",
						   32872 => x"02",		-- 008068: 0202            
						   32873 => x"02",
						   32874 => x"32",		-- 00806a: 32D2             EINT    
						   32875 => x"F2",
						   32876 => x"FF",		-- 00806c: FF3F             JMP     ($C$L1)
						   32877 => x"5F",
						   -- Begin: _c_int00_noinit_noargs
						   32878 => x"31",		-- 00806e: 3140             MOV.W   #0x3000,SP
						   32879 => x"60",
						   32880 => x"00",		-- 008070: 0030            
						   32881 => x"30",
						   32882 => x"B0",		-- 008072: B012             CALL    #_system_pre_init
						   32883 => x"32",
						   32884 => x"A2",		-- 008074: A280            
						   32885 => x"80",
						   32886 => x"0C",		-- 008076: 0C43             CLR.W   R12
						   32887 => x"63",
						   32888 => x"B0",		-- 008078: B012             CALL    #main
						   32889 => x"32",
						   32890 => x"00",		-- 00807a: 0080            
						   32891 => x"80",
						   32892 => x"1C",		-- 00807c: 1C43             MOV.W   #1,R12
						   32893 => x"63",
						   32894 => x"B0",		-- 00807e: B012             CALL    #abort
						   32895 => x"32",
						   32896 => x"9C",		-- 008080: 9C80            
						   32897 => x"80",
						   -- Begin: ISR_Port2_S2
						   32898 => x"B2",		-- 008082: B2E0             XOR.W   #0x4000,&P5OUT
						   32899 => x"00",
						   32900 => x"00",		-- 008084: 0040            
						   32901 => x"40",
						   32902 => x"42",		-- 008086: 4202            
						   32903 => x"02",
						   32904 => x"B2",		-- 008088: B2F0             AND.W   #0xf7ff,&P1IFG
						   32905 => x"10",
						   32906 => x"FF",		-- 00808a: FFF7            
						   32907 => x"F7",
						   32908 => x"1C",		-- 00808c: 1C02            
						   32909 => x"02",
						   32910 => x"00",		-- 00808e: 0013             RETI    
						   32911 => x"33",
						   -- Begin: ISR_Port4_S1
						   32912 => x"92",		-- 008090: 92E3             XOR.W   #1,&P1OUT
						   32913 => x"03",
						   32914 => x"02",		-- 008092: 0202            
						   32915 => x"02",
						   32916 => x"B2",		-- 008094: B2F0             AND.W   #0xfdff,&P3IFG
						   32917 => x"10",
						   32918 => x"FF",		-- 008096: FFFD            
						   32919 => x"FD",
						   32920 => x"3C",		-- 008098: 3C02            
						   32921 => x"02",
						   32922 => x"00",		-- 00809a: 0013             RETI    
						   32923 => x"33",
						   -- Begin: abort
						   32924 => x"03",		-- 00809c: 0343             NOP     
						   32925 => x"63",
						   32926 => x"FF",		-- 00809e: FF3F             JMP     ($C$L1)
						   32927 => x"5F",
						   32928 => x"03",		-- 0080a0: 0343             NOP     
						   32929 => x"63",
						   -- Begin: _system_pre_init
						   32930 => x"1C",		-- 0080a2: 1C43             MOV.W   #1,R12
						   32931 => x"63",
						   32932 => x"30",		-- 0080a4: 3041             RET     
						   32933 => x"61",
						   -- ISR Trap
						   32934 => x"32",		-- 0080a6: 32D0             BIS.W   #0x0010,SR
						   32935 => x"F0",
						   32936 => x"10",		-- 0080a8: 1000            
						   32937 => x"00",
						   32938 => x"FD",		-- 0080aa: FD3F             JMP     (__TI_ISR_TRAP)
						   32939 => x"5F",
						   32940 => x"03",		-- 0080ac: 0343             NOP     
						   32941 => x"63",
						   -- IRQ Vectors (Interrupt Vectors)
						   65486 => x"90",		-- 00ffce:8090 PORT4 __TI_int22 int22
						   65487 => x"80",
						   65488 => x"a6",		-- 00ffd0:80a6 PORT3 __TI_int23 int23
						   65489 => x"80",
						   65490 => x"82",		-- 00ffd2:8082 PORT2 __TI_int24 int24
						   65491 => x"80",
						   65492 => x"a6",		-- 00ffd4:80a6 PORT1 __TI_int25 int25
						   65493 => x"80",
						   65494 => x"a6",		-- 00ffd6:80a6 SAC1_SAC3 __TI_int26 int26
						   65495 => x"80",
						   65496 => x"a6",		-- 00ffd8:80a6 SAC0_SAC2 __TI_int27 int27
						   65497 => x"80",
						   65498 => x"a6",		-- 00ffda:80a6 ECOMP0_ECOMP1 __TI_int28 int28
						   65499 => x"80",
						   65500 => x"a6",		-- 00ffdc:80a6 ADC __TI_int29 int29
						   65501 => x"80",
						   65502 => x"a6",		-- 00ffde:80a6 EUSCI_B1 __TI_int30 int30
						   65503 => x"80",
						   65504 => x"a6",		-- 00ffe0:80a6 EUSCI_B0 __TI_int31 int31
						   65505 => x"80",
						   65506 => x"a6",		-- 00ffe2:80a6 EUSCI_A1 __TI_int32 int32
						   65507 => x"80",
						   65508 => x"a6",		-- 00ffe4:80a6 EUSCI_A0 __TI_int33 int33
						   65509 => x"80",
						   65510 => x"a6",		-- 00ffe6:80a6 WDT __TI_int34 int34
						   65511 => x"80",
						   65512 => x"a6",		-- 00ffe8:80a6 RTC __TI_int35 int35
						   65513 => x"80",
						   65514 => x"a6",		-- 00ffea:80a6 TIMER3_B1 __TI_int36 int36
						   65515 => x"80",
						   65516 => x"a6",		-- 00ffec:80a6 TIMER3_B0 __TI_int37 int37
						   65517 => x"80",
						   65518 => x"a6",		-- 00ffee:80a6 TIMER2_B1 __TI_int38 int38
						   65519 => x"80",
						   65520 => x"a6",		-- 00fff0:80a6 TIMER2_B0 __TI_int39 int39
						   65521 => x"80",
						   65522 => x"a6",		-- 00fff2:80a6 TIMER1_B1 __TI_int40 int40
						   65523 => x"80",
						   65524 => x"a6",		-- 00fff4:80a6 TIMER1_B0 __TI_int41 int41
						   65525 => x"80",
						   65526 => x"a6",		-- 00fff6:80a6 TIMER0_B1 __TI_int42 int42
						   65527 => x"80",
						   65528 => x"a6",		-- 00fff8:80a6 TIMER0_B0 __TI_int43 int43
						   65529 => x"80",
						   65530 => x"a6",		-- 00fffa:80a6 UNMI __TI_int44 int44
						   65531 => x"80",
						   65532 => x"a6",		-- 00fffc:80a6 SYSNMI __TI_int45 int45
						   65533 => x"80",

                           65534 =>  x"00",		-- Reset Vector = xFFFE:xFFFF
                           65535 =>  x"80",		--  Startup Value = x8000

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
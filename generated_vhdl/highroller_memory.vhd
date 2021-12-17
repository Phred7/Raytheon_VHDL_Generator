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
    
constant ROM : rom_type :=(32768 => x"31",		-- 008000: 3182             SUB.W   #8,SP
						   32769 => x"A2",
						   32770 => x"B2",		-- 008002: B240             MOV.W   #0x5a80,&WDTCTL_L
						   32771 => x"60",
						   32772 => x"80",		-- 008004: 805A            
						   32773 => x"5A",
						   32774 => x"CC",		-- 008006: CC01            
						   32775 => x"01",
						   32776 => x"F2",		-- 008008: F2F0             AND.B   #0x00ef,&P1DIR
						   32777 => x"10",
						   32778 => x"EF",		-- 00800a: EF00            
						   32779 => x"00",
						   32780 => x"04",		-- 00800c: 0402            
						   32781 => x"02",
						   32782 => x"F2",		-- 00800e: F2D0             BIS.B   #0x0010,&P1REN
						   32783 => x"F0",
						   32784 => x"10",		-- 008010: 1000            
						   32785 => x"00",
						   32786 => x"06",		-- 008012: 0602            
						   32787 => x"02",
						   32788 => x"F2",		-- 008014: F2D0             BIS.B   #0x0010,&P1OUT
						   32789 => x"F0",
						   32790 => x"10",		-- 008016: 1000            
						   32791 => x"00",
						   32792 => x"02",		-- 008018: 0202            
						   32793 => x"02",
						   32794 => x"92",		-- 00801a: 92C3             BIC.W   #1,&PM5CTL0_L
						   32795 => x"E3",
						   32796 => x"30",		-- 00801c: 3001            
						   32797 => x"01",
						   32798 => x"F2",		-- 00801e: F2D0             BIS.B   #0x0020,&P1DIR
						   32799 => x"F0",
						   32800 => x"20",		-- 008020: 2000            
						   32801 => x"00",
						   32802 => x"04",		-- 008022: 0402            
						   32803 => x"02",
						   32804 => x"81",		-- 008024: 8143             CLR.W   0x0000(SP)
						   32805 => x"63",
						   32806 => x"00",		-- 008026: 0000            
						   32807 => x"00",
						   32808 => x"F2",		-- 008028: F2D0             BIS.B   #0x0020,&P1OUT
						   32809 => x"F0",
						   32810 => x"20",		-- 00802a: 2000            
						   32811 => x"00",
						   32812 => x"02",		-- 00802c: 0202            
						   32813 => x"02",
						   32814 => x"B1",		-- 00802e: B140             MOV.W   #0x0fff,0x0004(SP)
						   32815 => x"60",
						   32816 => x"FF",		-- 008030: FF0F            
						   32817 => x"0F",
						   32818 => x"04",		-- 008032: 0400            
						   32819 => x"00",
						   32820 => x"81",		-- 008034: 8193             TST.W   0x0004(SP)
						   32821 => x"B3",
						   32822 => x"04",		-- 008036: 0400            
						   32823 => x"00",
						   32824 => x"10",		-- 008038: 1034             JGE     ($C$L5)
						   32825 => x"54",
						   32826 => x"B1",		-- 00803a: B140             MOV.W   #0x0fff,0x0006(SP)
						   32827 => x"60",
						   32828 => x"FF",		-- 00803c: FF0F            
						   32829 => x"0F",
						   32830 => x"06",		-- 00803e: 0600            
						   32831 => x"00",
						   32832 => x"81",		-- 008040: 8193             TST.W   0x0006(SP)
						   32833 => x"B3",
						   32834 => x"06",		-- 008042: 0600            
						   32835 => x"00",
						   32836 => x"05",		-- 008044: 0534             JGE     ($C$L4)
						   32837 => x"54",
						   32838 => x"91",		-- 008046: 9183             DEC.W   0x0006(SP)
						   32839 => x"A3",
						   32840 => x"06",		-- 008048: 0600            
						   32841 => x"00",
						   32842 => x"81",		-- 00804a: 8193             TST.W   0x0006(SP)
						   32843 => x"B3",
						   32844 => x"06",		-- 00804c: 0600            
						   32845 => x"00",
						   32846 => x"FB",		-- 00804e: FB3B             JL      ($C$L3)
						   32847 => x"5B",
						   32848 => x"91",		-- 008050: 9183             DEC.W   0x0004(SP)
						   32849 => x"A3",
						   32850 => x"04",		-- 008052: 0400            
						   32851 => x"00",
						   32852 => x"81",		-- 008054: 8193             TST.W   0x0004(SP)
						   32853 => x"B3",
						   32854 => x"04",		-- 008056: 0400            
						   32855 => x"00",
						   32856 => x"F0",		-- 008058: F03B             JL      ($C$L2)
						   32857 => x"5B",
						   32858 => x"F2",		-- 00805a: F2F0             AND.B   #0x00df,&P1OUT
						   32859 => x"10",
						   32860 => x"DF",		-- 00805c: DF00            
						   32861 => x"00",
						   32862 => x"02",		-- 00805e: 0202            
						   32863 => x"02",
						   32864 => x"B1",		-- 008060: B140             MOV.W   #0x0fff,0x0004(SP)
						   32865 => x"60",
						   32866 => x"FF",		-- 008062: FF0F            
						   32867 => x"0F",
						   32868 => x"04",		-- 008064: 0400            
						   32869 => x"00",
						   32870 => x"81",		-- 008066: 8193             TST.W   0x0004(SP)
						   32871 => x"B3",
						   32872 => x"04",		-- 008068: 0400            
						   32873 => x"00",
						   32874 => x"10",		-- 00806a: 1034             JGE     ($C$L9)
						   32875 => x"54",
						   32876 => x"B1",		-- 00806c: B140             MOV.W   #0x0fff,0x0006(SP)
						   32877 => x"60",
						   32878 => x"FF",		-- 00806e: FF0F            
						   32879 => x"0F",
						   32880 => x"06",		-- 008070: 0600            
						   32881 => x"00",
						   32882 => x"81",		-- 008072: 8193             TST.W   0x0006(SP)
						   32883 => x"B3",
						   32884 => x"06",		-- 008074: 0600            
						   32885 => x"00",
						   32886 => x"05",		-- 008076: 0534             JGE     ($C$L8)
						   32887 => x"54",
						   32888 => x"91",		-- 008078: 9183             DEC.W   0x0006(SP)
						   32889 => x"A3",
						   32890 => x"06",		-- 00807a: 0600            
						   32891 => x"00",
						   32892 => x"81",		-- 00807c: 8193             TST.W   0x0006(SP)
						   32893 => x"B3",
						   32894 => x"06",		-- 00807e: 0600            
						   32895 => x"00",
						   32896 => x"FB",		-- 008080: FB3B             JL      ($C$L7)
						   32897 => x"5B",
						   32898 => x"91",		-- 008082: 9183             DEC.W   0x0004(SP)
						   32899 => x"A3",
						   32900 => x"04",		-- 008084: 0400            
						   32901 => x"00",
						   32902 => x"81",		-- 008086: 8193             TST.W   0x0004(SP)
						   32903 => x"B3",
						   32904 => x"04",		-- 008088: 0400            
						   32905 => x"00",
						   32906 => x"F0",		-- 00808a: F03B             JL      ($C$L6)
						   32907 => x"5B",
						   32908 => x"5F",		-- 00808c: 5F42             MOV.B   &P1IN,R15
						   32909 => x"62",
						   32910 => x"00",		-- 00808e: 0002            
						   32911 => x"02",
						   32912 => x"81",		-- 008090: 814F             MOV.W   R15,0x0002(SP)
						   32913 => x"6F",
						   32914 => x"02",		-- 008092: 0200            
						   32915 => x"00",
						   32916 => x"B1",		-- 008094: B1F0             AND.W   #0x0010,0x0002(SP)
						   32917 => x"10",
						   32918 => x"10",		-- 008096: 1000            
						   32919 => x"00",
						   32920 => x"02",		-- 008098: 0200            
						   32921 => x"00",
						   32922 => x"81",		-- 00809a: 8193             TST.W   0x0002(SP)
						   32923 => x"B3",
						   32924 => x"02",		-- 00809c: 0200            
						   32925 => x"00",
						   32926 => x"C4",		-- 00809e: C423             JNE     ($C$L1)
						   32927 => x"43",
						   32928 => x"91",		-- 0080a0: 9153             INC.W   0x0000(SP)
						   32929 => x"73",
						   32930 => x"00",		-- 0080a2: 0000            
						   32931 => x"00",
						   32932 => x"C1",		-- 0080a4: C13F             JMP     ($C$L1)
						   32933 => x"5F",
						   32934 => x"31",		-- 0080a6: 3140             MOV.W   #0x3000,SP
						   32935 => x"60",
						   32936 => x"00",		-- 0080a8: 0030            
						   32937 => x"30",
						   32938 => x"B0",		-- 0080aa: B012             CALL    #_system_pre_init
						   32939 => x"32",
						   32940 => x"C0",		-- 0080ac: C080            
						   32941 => x"80",
						   32942 => x"0C",		-- 0080ae: 0C43             CLR.W   R12
						   32943 => x"63",
						   32944 => x"B0",		-- 0080b0: B012             CALL    #main
						   32945 => x"32",
						   32946 => x"00",		-- 0080b2: 0080            
						   32947 => x"80",
						   32948 => x"1C",		-- 0080b4: 1C43             MOV.W   #1,R12
						   32949 => x"63",
						   32950 => x"B0",		-- 0080b6: B012             CALL    #abort
						   32951 => x"32",
						   32952 => x"BA",		-- 0080b8: BA80            
						   32953 => x"80",
						   32954 => x"03",		-- 0080ba: 0343             NOP     
						   32955 => x"63",
						   32956 => x"FF",		-- 0080bc: FF3F             JMP     ($C$L1)
						   32957 => x"5F",
						   32958 => x"03",		-- 0080be: 0343             NOP     
						   32959 => x"63",
						   32960 => x"1C",		-- 0080c0: 1C43             MOV.W   #1,R12
						   32961 => x"63",
						   32962 => x"30",		-- 0080c2: 3041             RET     
						   32963 => x"61",
						   32964 => x"32",		-- 0080c4: 32D0             BIS.W   #0x0010,SR
						   32965 => x"F0",
        -- IRQ Vectors (Interrupts)
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
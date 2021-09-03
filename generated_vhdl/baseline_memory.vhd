library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;


entity baseline_memory is
    port ( clk	: in	std_logic;
         MAB		: in	std_logic_vector(15 downto 0);
         MDB_in  	: out	std_logic_vector(15 downto 0);
         MDB_out  	: in	std_logic_vector(15 downto 0);
         write	    : in	std_logic);
end entity;

architecture baseline_memory_arch of baseline_memory is

type rom_type is array (32768 to 65535) of std_logic_vector(7 downto 0);  -- this is MAB: x8000 to xFFFF
    
constant ROM : rom_type :=(32768 => x"21",		-- 008000: 2182             SUB.W   #4,SP
						   32769 => x"82",
						   32770 => x"B2",		-- 008002: B240             MOV.W   #0x5a80,&WDTCTL_L
						   32771 => x"40",
						   32772 => x"80",		-- 008004: 805A            
						   32773 => x"5A",
						   32774 => x"CC",		-- 008006: CC01            
						   32775 => x"01",
						   32776 => x"92",		-- 008008: 92C3             BIC.W   #1,&PM5CTL0_L
						   32777 => x"C3",
						   32778 => x"30",		-- 00800a: 3001            
						   32779 => x"01",
						   32780 => x"F2",		-- 00800c: F2D0             BIS.B   #0x0010,&P1DIR
						   32781 => x"D0",
						   32782 => x"10",		-- 00800e: 1000            
						   32783 => x"00",
						   32784 => x"04",		-- 008010: 0402            
						   32785 => x"02",
						   32786 => x"F2",		-- 008012: F2D0             BIS.B   #0x0010,&P1OUT
						   32787 => x"D0",
						   32788 => x"10",		-- 008014: 1000            
						   32789 => x"00",
						   32790 => x"02",		-- 008016: 0202            
						   32791 => x"02",
						   32792 => x"B1",		-- 008018: B140             MOV.W   #0x0fff,0x0000(SP)
						   32793 => x"40",
						   32794 => x"FF",		-- 00801a: FF0F            
						   32795 => x"0F",
						   32796 => x"00",		-- 00801c: 0000            
						   32797 => x"00",
						   32798 => x"81",		-- 00801e: 8193             TST.W   0x0000(SP)
						   32799 => x"93",
						   32800 => x"00",		-- 008020: 0000            
						   32801 => x"00",
						   32802 => x"10",		-- 008022: 1034             JGE     ($C$L5)
						   32803 => x"34",
						   32804 => x"B1",		-- 008024: B140             MOV.W   #0x0fff,0x0002(SP)
						   32805 => x"40",
						   32806 => x"FF",		-- 008026: FF0F            
						   32807 => x"0F",
						   32808 => x"02",		-- 008028: 0200            
						   32809 => x"00",
						   32810 => x"81",		-- 00802a: 8193             TST.W   0x0002(SP)
						   32811 => x"93",
						   32812 => x"02",		-- 00802c: 0200            
						   32813 => x"00",
						   32814 => x"05",		-- 00802e: 0534             JGE     ($C$L4)
						   32815 => x"34",
						   32816 => x"91",		-- 008030: 9183             DEC.W   0x0002(SP)
						   32817 => x"83",
						   32818 => x"02",		-- 008032: 0200            
						   32819 => x"00",
						   32820 => x"81",		-- 008034: 8193             TST.W   0x0002(SP)
						   32821 => x"93",
						   32822 => x"02",		-- 008036: 0200            
						   32823 => x"00",
						   32824 => x"FB",		-- 008038: FB3B             JL      ($C$L3)
						   32825 => x"3B",
						   32826 => x"91",		-- 00803a: 9183             DEC.W   0x0000(SP)
						   32827 => x"83",
						   32828 => x"00",		-- 00803c: 0000            
						   32829 => x"00",
						   32830 => x"81",		-- 00803e: 8193             TST.W   0x0000(SP)
						   32831 => x"93",
						   32832 => x"00",		-- 008040: 0000            
						   32833 => x"00",
						   32834 => x"F0",		-- 008042: F03B             JL      ($C$L2)
						   32835 => x"3B",
						   32836 => x"F2",		-- 008044: F2F0             AND.B   #0x00ef,&P1OUT
						   32837 => x"F0",
						   32838 => x"EF",		-- 008046: EF00            
						   32839 => x"00",
						   32840 => x"02",		-- 008048: 0202            
						   32841 => x"02",
						   32842 => x"B1",		-- 00804a: B140             MOV.W   #0x0fff,0x0000(SP)
						   32843 => x"40",
						   32844 => x"FF",		-- 00804c: FF0F            
						   32845 => x"0F",
						   32846 => x"00",		-- 00804e: 0000            
						   32847 => x"00",
						   32848 => x"81",		-- 008050: 8193             TST.W   0x0000(SP)
						   32849 => x"93",
						   32850 => x"00",		-- 008052: 0000            
						   32851 => x"00",
						   32852 => x"DE",		-- 008054: DE37             JGE     ($C$L1)
						   32853 => x"37",
						   32854 => x"B1",		-- 008056: B140             MOV.W   #0x0fff,0x0002(SP)
						   32855 => x"40",
						   32856 => x"FF",		-- 008058: FF0F            
						   32857 => x"0F",
						   32858 => x"02",		-- 00805a: 0200            
						   32859 => x"00",
						   32860 => x"81",		-- 00805c: 8193             TST.W   0x0002(SP)
						   32861 => x"93",
						   32862 => x"02",		-- 00805e: 0200            
						   32863 => x"00",
						   32864 => x"05",		-- 008060: 0534             JGE     ($C$L8)
						   32865 => x"34",
						   32866 => x"91",		-- 008062: 9183             DEC.W   0x0002(SP)
						   32867 => x"83",
						   32868 => x"02",		-- 008064: 0200            
						   32869 => x"00",
						   32870 => x"81",		-- 008066: 8193             TST.W   0x0002(SP)
						   32871 => x"93",
						   32872 => x"02",		-- 008068: 0200            
						   32873 => x"00",
						   32874 => x"FB",		-- 00806a: FB3B             JL      ($C$L7)
						   32875 => x"3B",
						   32876 => x"91",		-- 00806c: 9183             DEC.W   0x0000(SP)
						   32877 => x"83",
						   32878 => x"00",		-- 00806e: 0000            
						   32879 => x"00",
						   32880 => x"81",		-- 008070: 8193             TST.W   0x0000(SP)
						   32881 => x"93",
						   32882 => x"00",		-- 008072: 0000            
						   32883 => x"00",
						   32884 => x"F0",		-- 008074: F03B             JL      ($C$L6)
						   32885 => x"3B",
						   32886 => x"CD",		-- 008076: CD3F             JMP     ($C$L1)
						   32887 => x"3F",
						   32888 => x"03",		-- 008078: 0343             NOP     
						   32889 => x"43",
						   32890 => x"31",		-- 00807a: 3180             SUB.W   #0x0006,SP
						   32891 => x"80",
						   32892 => x"06",		-- 00807c: 0600            
						   32893 => x"00",
						   32894 => x"3E",		-- 00807e: 3E40             MOV.W   #0x0000,R14
						   32895 => x"40",
						   32896 => x"00",		-- 008080: 0000            
						   32897 => x"00",
						   32898 => x"3E",		-- 008082: 3EF0             AND.W   #0x003f,R14
						   32899 => x"F0",
						   32900 => x"3F",		-- 008084: 3F00            
						   32901 => x"00",
						   32902 => x"81",		-- 008086: 814E             MOV.W   R14,0x0000(SP)
						   32903 => x"4E",
						   32904 => x"00",		-- 008088: 0000            
						   32905 => x"00",
						   32906 => x"3F",		-- 00808a: 3F40             MOV.W   #0x0001,R15
						   32907 => x"40",
						   32908 => x"01",		-- 00808c: 0100            
						   32909 => x"00",
						   32910 => x"1F",		-- 00808e: 1FF3             AND.W   #1,R15
						   32911 => x"F3",
						   32912 => x"81",		-- 008090: 814F             MOV.W   R15,0x0002(SP)
						   32913 => x"4F",
						   32914 => x"02",		-- 008092: 0200            
						   32915 => x"00",
						   32916 => x"3D",		-- 008094: 3D40             MOV.W   #0x0001,R13
						   32917 => x"40",
						   32918 => x"01",		-- 008096: 0100            
						   32919 => x"00",
						   32920 => x"1D",		-- 008098: 1DF3             AND.W   #1,R13
						   32921 => x"F3",
						   32922 => x"81",		-- 00809a: 814D             MOV.W   R13,0x0004(SP)
						   32923 => x"4D",
						   32924 => x"04",		-- 00809c: 0400            
						   32925 => x"00",
						   32926 => x"0F",		-- 0080a2: 0FDE             BIS.W   R14,R15
						   32927 => x"DE",
						   32928 => x"1F",		-- 0080a4: 1FD1             BIS.W   0x0004(SP),R15
						   32929 => x"D1",
						   32930 => x"04",		-- 0080a6: 0400            
						   32931 => x"00",
						   32932 => x"3F",		-- 0080a8: 3FD0             BIS.W   #0xa500,R15
						   32933 => x"D0",
						   32934 => x"00",		-- 0080aa: 00A5            
						   32935 => x"A5",
						   32936 => x"82",		-- 0080ac: 824F             MOV.W   R15,&SYSCFG0_L
						   32937 => x"4F",
						   32938 => x"60",		-- 0080ae: 6001            
						   32939 => x"01",
						   32940 => x"31",		-- 0080b0: 3150             ADD.W   #0x0006,SP
						   32941 => x"50",
						   32942 => x"06",		-- 0080b2: 0600            
						   32943 => x"00",
						   32944 => x"03",		-- 0080b6: 0343             NOP     
						   32945 => x"43",
						   32946 => x"FF",		-- 0080b8: FF3F             JMP     ($C$L1)
						   32947 => x"3F",
						   32948 => x"03",		-- 0080ba: 0343             NOP     
						   32949 => x"43",
						   32950 => x"1C",		-- 0080bc: 1C43             MOV.W   #1,R12
						   32951 => x"43",
						   32952 => x"31",		-- 0080c0: 3140             MOV.W   #0x3000,SP
						   32953 => x"40",
						   32954 => x"00",		-- 0080c2: 0030            
						   32955 => x"30",
						   32956 => x"7A",		-- 0080c6: 7A80            
						   32957 => x"80",
						   32958 => x"BC",		-- 0080ca: BC80            
						   32959 => x"80",
						   32960 => x"0C",		-- 0080cc: 0C43             CLR.W   R12
						   32961 => x"43",
						   32962 => x"00",		-- 0080d0: 0080            
						   32963 => x"80",
						   32964 => x"1C",		-- 0080d2: 1C43             MOV.W   #1,R12
						   32965 => x"43",
						   32966 => x"B6",		-- 0080d6: B680            
						   32967 => x"80",
						   32968 => x"32",		-- 0080d8: 32D0             BIS.W   #0x0010,SR
						   32969 => x"D0",
        -- IRQ Vectors
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
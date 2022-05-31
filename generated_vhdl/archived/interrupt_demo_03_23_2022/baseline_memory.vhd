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
    
constant ROM : rom_type :=(32768 => x"B2",		-- 008000: B240             MOV.W   #0x5a80,&WDTCTL_L
						   32769 => x"40",
						   32770 => x"80",		-- 008002: 805A            
						   32771 => x"5A",
						   32772 => x"CC",		-- 008004: CC01            
						   32773 => x"01",
						   32774 => x"92",		-- 008006: 92C3             BIC.W   #1,&PM5CTL0_L
						   32775 => x"C3",
						   32776 => x"30",		-- 008008: 3001            
						   32777 => x"01",
						   32778 => x"B2",		-- 00800a: B2F0             AND.W   #0xf7ff,&P1DIR
						   32779 => x"F0",
						   32780 => x"FF",		-- 00800c: FFF7            
						   32781 => x"F7",
						   32782 => x"04",		-- 00800e: 0402            
						   32783 => x"02",
						   32784 => x"B2",		-- 008010: B2D0             BIS.W   #0x0800,&P1REN
						   32785 => x"D0",
						   32786 => x"00",		-- 008012: 0008            
						   32787 => x"08",
						   32788 => x"06",		-- 008014: 0602            
						   32789 => x"02",
						   32790 => x"B2",		-- 008016: B2D0             BIS.W   #0x0800,&P1OUT
						   32791 => x"D0",
						   32792 => x"00",		-- 008018: 0008            
						   32793 => x"08",
						   32794 => x"02",		-- 00801a: 0202            
						   32795 => x"02",
						   32796 => x"B2",		-- 00801c: B2D0             BIS.W   #0x0800,&P1IES
						   32797 => x"D0",
						   32798 => x"00",		-- 00801e: 0008            
						   32799 => x"08",
						   32800 => x"18",		-- 008020: 1802            
						   32801 => x"02",
						   32802 => x"1F",		-- 008022: 1F42             MOV.W   &P1IFG,R15
						   32803 => x"42",
						   32804 => x"1C",		-- 008024: 1C02            
						   32805 => x"02",
						   32806 => x"82",		-- 008026: 8243             CLR.W   &P1IFG
						   32807 => x"43",
						   32808 => x"1C",		-- 008028: 1C02            
						   32809 => x"02",
						   32810 => x"B2",		-- 00802a: B2D0             BIS.W   #0x0800,&P1IE
						   32811 => x"D0",
						   32812 => x"00",		-- 00802c: 0008            
						   32813 => x"08",
						   32814 => x"1A",		-- 00802e: 1A02            
						   32815 => x"02",
						   32816 => x"B2",		-- 008030: B2D0             BIS.W   #0x4000,&P5DIR
						   32817 => x"D0",
						   32818 => x"00",		-- 008032: 0040            
						   32819 => x"40",
						   32820 => x"44",		-- 008034: 4402            
						   32821 => x"02",
						   32822 => x"B2",		-- 008036: B2F0             AND.W   #0xbfff,&P5OUT
						   32823 => x"F0",
						   32824 => x"FF",		-- 008038: FFBF            
						   32825 => x"BF",
						   32826 => x"42",		-- 00803a: 4202            
						   32827 => x"02",
						   32828 => x"B2",		-- 00803c: B2F0             AND.W   #0xfdff,&P3DIR
						   32829 => x"F0",
						   32830 => x"FF",		-- 00803e: FFFD            
						   32831 => x"FD",
						   32832 => x"24",		-- 008040: 2402            
						   32833 => x"02",
						   32834 => x"B2",		-- 008042: B2D0             BIS.W   #0x0200,&P3REN
						   32835 => x"D0",
						   32836 => x"00",		-- 008044: 0002            
						   32837 => x"02",
						   32838 => x"26",		-- 008046: 2602            
						   32839 => x"02",
						   32840 => x"B2",		-- 008048: B2D0             BIS.W   #0x0200,&P3OUT
						   32841 => x"D0",
						   32842 => x"00",		-- 00804a: 0002            
						   32843 => x"02",
						   32844 => x"22",		-- 00804c: 2202            
						   32845 => x"02",
						   32846 => x"B2",		-- 00804e: B2D0             BIS.W   #0x0200,&P3IES
						   32847 => x"D0",
						   32848 => x"00",		-- 008050: 0002            
						   32849 => x"02",
						   32850 => x"38",		-- 008052: 3802            
						   32851 => x"02",
						   32852 => x"1F",		-- 008054: 1F42             MOV.W   &P3IFG,R15
						   32853 => x"42",
						   32854 => x"3C",		-- 008056: 3C02            
						   32855 => x"02",
						   32856 => x"82",		-- 008058: 8243             CLR.W   &P3IFG
						   32857 => x"43",
						   32858 => x"3C",		-- 00805a: 3C02            
						   32859 => x"02",
						   32860 => x"B2",		-- 00805c: B2D0             BIS.W   #0x0200,&P3IE
						   32861 => x"D0",
						   32862 => x"00",		-- 00805e: 0002            
						   32863 => x"02",
						   32864 => x"3A",		-- 008060: 3A02            
						   32865 => x"02",
						   32866 => x"92",		-- 008062: 92D3             BIS.W   #1,&P1DIR
						   32867 => x"D3",
						   32868 => x"04",		-- 008064: 0402            
						   32869 => x"02",
						   32870 => x"92",		-- 008066: 92C3             BIC.W   #1,&P1OUT
						   32871 => x"C3",
						   32872 => x"02",		-- 008068: 0202            
						   32873 => x"02",
						   32874 => x"32",		-- 00806a: 32D2             EINT    
						   32875 => x"D2",
						   32876 => x"0C",		-- 00806c: 0C43             CLR.W   R12
						   32877 => x"43",
						   32878 => x"00",		-- 00806e: 003C             JMP     ($C$L1)
						   32879 => x"3C",
						   32880 => x"30",		-- 008070: 3041             RET     
						   32881 => x"41",
						   32882 => x"31",		-- 008072: 3140             MOV.W   #0x3000,SP
						   32883 => x"40",
						   32884 => x"00",		-- 008074: 0030            
						   32885 => x"30",
						   32886 => x"B0",		-- 008076: B012             CALL    #_system_pre_init
						   32887 => x"12",
						   32888 => x"A6",		-- 008078: A680            
						   32889 => x"80",
						   32890 => x"0C",		-- 00807a: 0C43             CLR.W   R12
						   32891 => x"43",
						   32892 => x"B0",		-- 00807c: B012             CALL    #main
						   32893 => x"12",
						   32894 => x"00",		-- 00807e: 0080            
						   32895 => x"80",
						   32896 => x"1C",		-- 008080: 1C43             MOV.W   #1,R12
						   32897 => x"43",
						   32898 => x"B0",		-- 008082: B012             CALL    #abort
						   32899 => x"12",
						   32900 => x"A0",		-- 008084: A080            
						   32901 => x"80",
						   32902 => x"B2",		-- 008086: B2E0             XOR.W   #0x4000,&P5OUT
						   32903 => x"E0",
						   32904 => x"00",		-- 008088: 0040            
						   32905 => x"40",
						   32906 => x"42",		-- 00808a: 4202            
						   32907 => x"02",
						   32908 => x"B2",		-- 00808c: B2F0             AND.W   #0xf7ff,&P1IFG
						   32909 => x"F0",
						   32910 => x"FF",		-- 00808e: FFF7            
						   32911 => x"F7",
						   32912 => x"1C",		-- 008090: 1C02            
						   32913 => x"02",
						   32914 => x"00",		-- 008092: 0013             RETI    
						   32915 => x"13",
						   32916 => x"92",		-- 008094: 92E3             XOR.W   #1,&P1OUT
						   32917 => x"E3",
						   32918 => x"02",		-- 008096: 0202            
						   32919 => x"02",
						   32920 => x"B2",		-- 008098: B2F0             AND.W   #0xfdff,&P3IFG
						   32921 => x"F0",
						   32922 => x"FF",		-- 00809a: FFFD            
						   32923 => x"FD",
						   32924 => x"3C",		-- 00809c: 3C02            
						   32925 => x"02",
						   32926 => x"00",		-- 00809e: 0013             RETI    
						   32927 => x"13",
						   32928 => x"03",		-- 0080a0: 0343             NOP     
						   32929 => x"43",
						   32930 => x"FF",		-- 0080a2: FF3F             JMP     ($C$L1)
						   32931 => x"3F",
						   32932 => x"03",		-- 0080a4: 0343             NOP     
						   32933 => x"43",
						   32934 => x"1C",		-- 0080a6: 1C43             MOV.W   #1,R12
						   32935 => x"43",
						   32936 => x"30",		-- 0080a8: 3041             RET     
						   32937 => x"41",
						   32938 => x"32",		-- 0080aa: 32D0             BIS.W   #0x0010,SR
						   32939 => x"D0",
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
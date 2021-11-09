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
						   32778 => x"B0",		-- 00800a: B012             CALL    #init_GPIO
						   32779 => x"32",
						   32780 => x"1C",		-- 00800c: 1C80            
						   32781 => x"80",
						   32782 => x"B0",		-- 00800e: B012             CALL    #high_GPIO
						   32783 => x"32",
						   32784 => x"5C",		-- 008010: 5C80            
						   32785 => x"80",
						   32786 => x"B0",		-- 008012: B012             CALL    #low_GPIO
						   32787 => x"32",
						   32788 => x"4A",		-- 008014: 4A80            
						   32789 => x"80",
						   32790 => x"B0",		-- 008016: B012             CALL    #high_GPIO
						   32791 => x"32",
						   32792 => x"5C",		-- 008018: 5C80            
						   32793 => x"80",
						   32794 => x"F9",		-- 00801a: F93F             JMP     ($C$L1)
						   32795 => x"5F",
						   32796 => x"B2",		-- 00801c: B2D3             BIS.W   #-1,&P1DIR
						   32797 => x"F3",
						   32798 => x"04",		-- 00801e: 0402            
						   32799 => x"02",
						   32800 => x"B2",		-- 008020: B2D3             BIS.W   #-1,&P3DIR
						   32801 => x"F3",
						   32802 => x"24",		-- 008022: 2402            
						   32803 => x"02",
						   32804 => x"1F",		-- 008024: 1F42             MOV.W   &P1OUT,R15
						   32805 => x"62",
						   32806 => x"02",		-- 008026: 0202            
						   32807 => x"02",
						   32808 => x"82",		-- 008028: 8243             CLR.W   &P1OUT
						   32809 => x"63",
						   32810 => x"02",		-- 00802a: 0202            
						   32811 => x"02",
						   32812 => x"1F",		-- 00802c: 1F42             MOV.W   &P3OUT,R15
						   32813 => x"62",
						   32814 => x"22",		-- 00802e: 2202            
						   32815 => x"02",
						   32816 => x"82",		-- 008030: 8243             CLR.W   &P3OUT
						   32817 => x"63",
						   32818 => x"22",		-- 008032: 2202            
						   32819 => x"02",
						   32820 => x"30",		-- 008034: 3041             RET     
						   32821 => x"61",
						   32822 => x"31",		-- 008036: 3140             MOV.W   #0x3000,SP
						   32823 => x"60",
						   32824 => x"00",		-- 008038: 0030            
						   32825 => x"30",
						   32826 => x"B0",		-- 00803a: B012             CALL    #_system_pre_init
						   32827 => x"32",
						   32828 => x"6C",		-- 00803c: 6C80            
						   32829 => x"80",
						   32830 => x"0C",		-- 00803e: 0C43             CLR.W   R12
						   32831 => x"63",
						   32832 => x"B0",		-- 008040: B012             CALL    #main
						   32833 => x"32",
						   32834 => x"00",		-- 008042: 0080            
						   32835 => x"80",
						   32836 => x"1C",		-- 008044: 1C43             MOV.W   #1,R12
						   32837 => x"63",
						   32838 => x"B0",		-- 008046: B012             CALL    #abort
						   32839 => x"32",
						   32840 => x"66",		-- 008048: 6680            
						   32841 => x"80",
						   32842 => x"1F",		-- 00804a: 1F42             MOV.W   &P1OUT,R15
						   32843 => x"62",
						   32844 => x"02",		-- 00804c: 0202            
						   32845 => x"02",
						   32846 => x"82",		-- 00804e: 8243             CLR.W   &P1OUT
						   32847 => x"63",
						   32848 => x"02",		-- 008050: 0202            
						   32849 => x"02",
						   32850 => x"1F",		-- 008052: 1F42             MOV.W   &P3OUT,R15
						   32851 => x"62",
						   32852 => x"22",		-- 008054: 2202            
						   32853 => x"02",
						   32854 => x"82",		-- 008056: 8243             CLR.W   &P3OUT
						   32855 => x"63",
						   32856 => x"22",		-- 008058: 2202            
						   32857 => x"02",
						   32858 => x"30",		-- 00805a: 3041             RET     
						   32859 => x"61",
						   32860 => x"B2",		-- 00805c: B2D3             BIS.W   #-1,&P1OUT
						   32861 => x"F3",
						   32862 => x"02",		-- 00805e: 0202            
						   32863 => x"02",
						   32864 => x"B2",		-- 008060: B2D3             BIS.W   #-1,&P3OUT
						   32865 => x"F3",
						   32866 => x"22",		-- 008062: 2202            
						   32867 => x"02",
						   32868 => x"30",		-- 008064: 3041             RET     
						   32869 => x"61",
						   32870 => x"03",		-- 008066: 0343             NOP     
						   32871 => x"63",
						   32872 => x"FF",		-- 008068: FF3F             JMP     ($C$L1)
						   32873 => x"5F",
						   32874 => x"03",		-- 00806a: 0343             NOP     
						   32875 => x"63",
						   32876 => x"1C",		-- 00806c: 1C43             MOV.W   #1,R12
						   32877 => x"63",
						   32878 => x"30",		-- 00806e: 3041             RET     
						   32879 => x"61",
						   32880 => x"32",		-- 008070: 32D0             BIS.W   #0x0010,SR
						   32881 => x"F0",
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
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
						   32778 => x"B2",		-- 00800a: B2D0             BIS.W   #0xaaaa,&P1DIR
						   32779 => x"F0",
						   32780 => x"AA",		-- 00800c: AAAA            
						   32781 => x"AA",
						   32782 => x"04",		-- 00800e: 0402            
						   32783 => x"02",
						   32784 => x"B2",		-- 008010: B2F0             AND.W   #0xaaaa,&P1DIR
						   32785 => x"10",
						   32786 => x"AA",		-- 008012: AAAA            
						   32787 => x"AA",
						   32788 => x"04",		-- 008014: 0402            
						   32789 => x"02",
						   32790 => x"B2",		-- 008016: B2D0             BIS.W   #0x5555,&P1REN
						   32791 => x"F0",
						   32792 => x"55",		-- 008018: 5555            
						   32793 => x"55",
						   32794 => x"06",		-- 00801a: 0602            
						   32795 => x"02",
						   32796 => x"B2",		-- 00801c: B2D0             BIS.W   #0x5555,&P1OUT
						   32797 => x"F0",
						   32798 => x"55",		-- 00801e: 5555            
						   32799 => x"55",
						   32800 => x"02",		-- 008020: 0202            
						   32801 => x"02",
						   32802 => x"B2",		-- 008022: B2F0             AND.W   #0x5555,&P3DIR
						   32803 => x"10",
						   32804 => x"55",		-- 008024: 5555            
						   32805 => x"55",
						   32806 => x"24",		-- 008026: 2402            
						   32807 => x"02",
						   32808 => x"B2",		-- 008028: B2D0             BIS.W   #0x5555,&P3DIR
						   32809 => x"F0",
						   32810 => x"55",		-- 00802a: 5555            
						   32811 => x"55",
						   32812 => x"24",		-- 00802c: 2402            
						   32813 => x"02",
						   32814 => x"B2",		-- 00802e: B2D0             BIS.W   #0x5555,&P3REN
						   32815 => x"F0",
						   32816 => x"55",		-- 008030: 5555            
						   32817 => x"55",
						   32818 => x"26",		-- 008032: 2602            
						   32819 => x"02",
						   32820 => x"B2",		-- 008034: B2D0             BIS.W   #0x5555,&P3OUT
						   32821 => x"F0",
						   32822 => x"55",		-- 008036: 5555            
						   32823 => x"55",
						   32824 => x"22",		-- 008038: 2202            
						   32825 => x"02",
						   32826 => x"3F",		-- 00803a: 3F40             MOV.W   #0xaaaa,R15
						   32827 => x"60",
						   32828 => x"AA",		-- 00803c: AAAA            
						   32829 => x"AA",
						   32830 => x"1F",		-- 00803e: 1FF2             AND.W   &P3IN,R15
						   32831 => x"12",
						   32832 => x"20",		-- 008040: 2002            
						   32833 => x"02",
						   32834 => x"82",		-- 008042: 824F             MOV.W   R15,&P1OUT
						   32835 => x"6F",
						   32836 => x"02",		-- 008044: 0202            
						   32837 => x"02",
						   32838 => x"F9",		-- 008046: F93F             JMP     ($C$L1)
						   32839 => x"5F",
						   32840 => x"31",		-- 008048: 3140             MOV.W   #0x3000,SP
						   32841 => x"60",
						   32842 => x"00",		-- 00804a: 0030            
						   32843 => x"30",
						   32844 => x"B0",		-- 00804c: B012             CALL    #_system_pre_init
						   32845 => x"32",
						   32846 => x"62",		-- 00804e: 6280            
						   32847 => x"80",
						   32848 => x"0C",		-- 008050: 0C43             CLR.W   R12
						   32849 => x"63",
						   32850 => x"B0",		-- 008052: B012             CALL    #main
						   32851 => x"32",
						   32852 => x"00",		-- 008054: 0080            
						   32853 => x"80",
						   32854 => x"1C",		-- 008056: 1C43             MOV.W   #1,R12
						   32855 => x"63",
						   32856 => x"B0",		-- 008058: B012             CALL    #abort
						   32857 => x"32",
						   32858 => x"5C",		-- 00805a: 5C80            
						   32859 => x"80",
						   32860 => x"03",		-- 00805c: 0343             NOP     
						   32861 => x"63",
						   32862 => x"FF",		-- 00805e: FF3F             JMP     ($C$L1)
						   32863 => x"5F",
						   32864 => x"03",		-- 008060: 0343             NOP     
						   32865 => x"63",
						   32866 => x"1C",		-- 008062: 1C43             MOV.W   #1,R12
						   32867 => x"63",
						   32868 => x"30",		-- 008064: 3041             RET     
						   32869 => x"61",
						   32870 => x"32",		-- 008066: 32D0             BIS.W   #0x0010,SR
						   32871 => x"F0",
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
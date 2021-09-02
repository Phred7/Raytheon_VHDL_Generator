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
    
constant ROM : rom_type :=(32768 => x"21",	-- 008000: 2182             SUB.W   #4,SP
						   32769 => x"82",
						   32770 => x"B2",	-- 008002: B240             MOV.W   #0x5a80,&WDTCTL_L
						   32771 => x"40",
						   32772 => x"92",	-- 008008: 92C3             BIC.W   #1,&PM5CTL0_L
						   32773 => x"C3",
						   32774 => x"F2",	-- 00800c: F2D0             BIS.B   #0x0010,&P1DIR
						   32775 => x"D0",
						   32776 => x"F2",	-- 008012: F2D0             BIS.B   #0x0010,&P1OUT
						   32777 => x"D0",
						   32778 => x"B1",	-- 008018: B140             MOV.W   #0x0fff,0x0000(SP)
						   32779 => x"40",
						   32780 => x"81",	-- 00801e: 8193             TST.W   0x0000(SP)
						   32781 => x"93",
						   32782 => x"10",	-- 008022: 1034             JGE     ($C$L5)
						   32783 => x"34",
						   32784 => x"B1",	-- 008024: B140             MOV.W   #0x0fff,0x0002(SP)
						   32785 => x"40",
						   32786 => x"81",	-- 00802a: 8193             TST.W   0x0002(SP)
						   32787 => x"93",
						   32788 => x"05",	-- 00802e: 0534             JGE     ($C$L4)
						   32789 => x"34",
						   32790 => x"91",	-- 008030: 9183             DEC.W   0x0002(SP)
						   32791 => x"83",
						   32792 => x"81",	-- 008034: 8193             TST.W   0x0002(SP)
						   32793 => x"93",
						   32794 => x"FB",	-- 008038: FB3B             JL      ($C$L3)
						   32795 => x"3B",
						   32796 => x"91",	-- 00803a: 9183             DEC.W   0x0000(SP)
						   32797 => x"83",
						   32798 => x"81",	-- 00803e: 8193             TST.W   0x0000(SP)
						   32799 => x"93",
						   32800 => x"F0",	-- 008042: F03B             JL      ($C$L2)
						   32801 => x"3B",
						   32802 => x"F2",	-- 008044: F2F0             AND.B   #0x00ef,&P1OUT
						   32803 => x"F0",
						   32804 => x"B1",	-- 00804a: B140             MOV.W   #0x0fff,0x0000(SP)
						   32805 => x"40",
						   32806 => x"81",	-- 008050: 8193             TST.W   0x0000(SP)
						   32807 => x"93",
						   32808 => x"DE",	-- 008054: DE37             JGE     ($C$L1)
						   32809 => x"37",
						   32810 => x"B1",	-- 008056: B140             MOV.W   #0x0fff,0x0002(SP)
						   32811 => x"40",
						   32812 => x"81",	-- 00805c: 8193             TST.W   0x0002(SP)
						   32813 => x"93",
						   32814 => x"05",	-- 008060: 0534             JGE     ($C$L8)
						   32815 => x"34",
						   32816 => x"91",	-- 008062: 9183             DEC.W   0x0002(SP)
						   32817 => x"83",
						   32818 => x"81",	-- 008066: 8193             TST.W   0x0002(SP)
						   32819 => x"93",
						   32820 => x"FB",	-- 00806a: FB3B             JL      ($C$L7)
						   32821 => x"3B",
						   32822 => x"91",	-- 00806c: 9183             DEC.W   0x0000(SP)
						   32823 => x"83",
						   32824 => x"81",	-- 008070: 8193             TST.W   0x0000(SP)
						   32825 => x"93",
						   32826 => x"F0",	-- 008074: F03B             JL      ($C$L6)
						   32827 => x"3B",
						   32828 => x"CD",	-- 008076: CD3F             JMP     ($C$L1)
						   32829 => x"3F",
						   32830 => x"03",	-- 008078: 0343             NOP     
						   32831 => x"43",
						   32832 => x"31",	-- 00807a: 3180             SUB.W   #0x0006,SP
						   32833 => x"80",
						   32834 => x"3E",	-- 00807e: 3E40             MOV.W   #0x0000,R14
						   32835 => x"40",
						   32836 => x"3E",	-- 008082: 3EF0             AND.W   #0x003f,R14
						   32837 => x"F0",
						   32838 => x"81",	-- 008086: 814E             MOV.W   R14,0x0000(SP)
						   32839 => x"4E",
						   32840 => x"3F",	-- 00808a: 3F40             MOV.W   #0x0001,R15
						   32841 => x"40",
						   32842 => x"1F",	-- 00808e: 1FF3             AND.W   #1,R15
						   32843 => x"F3",
						   32844 => x"81",	-- 008090: 814F             MOV.W   R15,0x0002(SP)
						   32845 => x"4F",
						   32846 => x"3D",	-- 008094: 3D40             MOV.W   #0x0001,R13
						   32847 => x"40",
						   32848 => x"1D",	-- 008098: 1DF3             AND.W   #1,R13
						   32849 => x"F3",
						   32850 => x"81",	-- 00809a: 814D             MOV.W   R13,0x0004(SP)
						   32851 => x"4D",
						   32852 => x"0F",	-- 0080a2: 0FDE             BIS.W   R14,R15
						   32853 => x"DE",
						   32854 => x"1F",	-- 0080a4: 1FD1             BIS.W   0x0004(SP),R15
						   32855 => x"D1",
						   32856 => x"3F",	-- 0080a8: 3FD0             BIS.W   #0xa500,R15
						   32857 => x"D0",
						   32858 => x"82",	-- 0080ac: 824F             MOV.W   R15,&SYSCFG0_L
						   32859 => x"4F",
						   32860 => x"31",	-- 0080b0: 3150             ADD.W   #0x0006,SP
						   32861 => x"50",
						   32862 => x"03",	-- 0080b6: 0343             NOP     
						   32863 => x"43",
						   32864 => x"FF",	-- 0080b8: FF3F             JMP     ($C$L1)
						   32865 => x"3F",
						   32866 => x"03",	-- 0080ba: 0343             NOP     
						   32867 => x"43",
						   32868 => x"1C",	-- 0080bc: 1C43             MOV.W   #1,R12
						   32869 => x"43",
						   32870 => x"31",	-- 0080c0: 3140             MOV.W   #0x3000,SP
						   32871 => x"40",
						   32872 => x"0C",	-- 0080cc: 0C43             CLR.W   R12
						   32873 => x"43",
						   32874 => x"1C",	-- 0080d2: 1C43             MOV.W   #1,R12
						   32875 => x"43",
						   32876 => x"32",	-- 0080d8: 32D0             BIS.W   #0x0010,SR
						   32877 => x"D0",

        -- IRQ Vectors
                           65534 =>  x"00", -- Reset Vector = xFFFE:xFFFF
                           65535 =>  x"80", --  Startup Value = x8000

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
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;


entity high_roller_memory is
    port ( clk	: in	std_logic;
         MAB		: in	std_logic_vector(15 downto 0);
         MDB_in  	: out	std_logic_vector(15 downto 0);
         MDB_out  	: in	std_logic_vector(15 downto 0);
         write	    : in	std_logic);
end entity;

architecture high_roller_memory_arch of high_roller_memory is

type rom_type is array (32768 to 65535) of std_logic_vector(7 downto 0);  -- this is MAB: x8000 to xFFFF
    
constant ROM : rom_type :=(32768 => x"1A",	-- 008000: 2182             SUB.W   #4,SP
						   32769 => x"2S",
						   32770 => x"26",	-- 008002: B240             MOV.W   #0x5a80,&WDTCTL_L
						   32771 => x"0M",
						   32772 => x"2E",	-- 008008: 92C3             BIC.W   #1,&PM5CTL0_L
						   32773 => x"3B",
						   32774 => x"2F",	-- 00800c: F2D0             BIS.B   #0x0010,&P1DIR
						   32775 => x"0B",
						   32776 => x"2F",	-- 008012: F2D0             BIS.B   #0x0010,&P1OUT
						   32777 => x"0B",
						   32778 => x"16",	-- 008018: B140             MOV.W   #0x0fff,0x0000(SP)
						   32779 => x"0M",
						   32780 => x"1B",	-- 00801e: 8193             TST.W   0x0000(SP)
						   32781 => x"3T",
						   32782 => x"05",	-- 008022: 1034             JGE     ($C$L5)
						   32783 => x"4J",
						   32784 => x"16",	-- 008024: B140             MOV.W   #0x0fff,0x0002(SP)
						   32785 => x"0M",
						   32786 => x"1B",	-- 00802a: 8193             TST.W   0x0002(SP)
						   32787 => x"3T",
						   32788 => x"55",	-- 00802e: 0534             JGE     ($C$L4)
						   32789 => x"4J",
						   32790 => x"1A",	-- 008030: 9183             DEC.W   0x0002(SP)
						   32791 => x"3D",
						   32792 => x"1B",	-- 008034: 8193             TST.W   0x0002(SP)
						   32793 => x"3T",
						   32794 => x"B5",	-- 008038: FB3B             JL      ($C$L3)
						   32795 => x"BJ",
						   32796 => x"1A",	-- 00803a: 9183             DEC.W   0x0000(SP)
						   32797 => x"3D",
						   32798 => x"1B",	-- 00803e: 8193             TST.W   0x0000(SP)
						   32799 => x"3T",
						   32800 => x"05",	-- 008042: F03B             JL      ($C$L2)
						   32801 => x"BJ",
						   32802 => x"21",	-- 008044: F2F0             AND.B   #0x00ef,&P1OUT
						   32803 => x"0A",
						   32804 => x"16",	-- 00804a: B140             MOV.W   #0x0fff,0x0000(SP)
						   32805 => x"0M",
						   32806 => x"1B",	-- 008050: 8193             TST.W   0x0000(SP)
						   32807 => x"3T",
						   32808 => x"E5",	-- 008054: DE37             JGE     ($C$L1)
						   32809 => x"7J",
						   32810 => x"16",	-- 008056: B140             MOV.W   #0x0fff,0x0002(SP)
						   32811 => x"0M",
						   32812 => x"1B",	-- 00805c: 8193             TST.W   0x0002(SP)
						   32813 => x"3T",
						   32814 => x"55",	-- 008060: 0534             JGE     ($C$L8)
						   32815 => x"4J",
						   32816 => x"1A",	-- 008062: 9183             DEC.W   0x0002(SP)
						   32817 => x"3D",
						   32818 => x"1B",	-- 008066: 8193             TST.W   0x0002(SP)
						   32819 => x"3T",
						   32820 => x"B5",	-- 00806a: FB3B             JL      ($C$L7)
						   32821 => x"BJ",
						   32822 => x"1A",	-- 00806c: 9183             DEC.W   0x0000(SP)
						   32823 => x"3D",
						   32824 => x"1B",	-- 008070: 8193             TST.W   0x0000(SP)
						   32825 => x"3T",
						   32826 => x"05",	-- 008074: F03B             JL      ($C$L6)
						   32827 => x"BJ",
						   32828 => x"D5",	-- 008076: CD3F             JMP     ($C$L1)
						   32829 => x"FJ",
						   32830 => x"36",	-- 008078: 0343             NOP     
						   32831 => x"3N",
						   32832 => x"1A",	-- 00807a: 3180             SUB.W   #0x0006,SP
						   32833 => x"0S",
						   32834 => x"E6",	-- 00807e: 3E40             MOV.W   #0x0000,R14
						   32835 => x"0M",
						   32836 => x"E1",	-- 008082: 3EF0             AND.W   #0x003f,R14
						   32837 => x"0A",
						   32838 => x"16",	-- 008086: 814E             MOV.W   R14,0x0000(SP)
						   32839 => x"EM",
						   32840 => x"F6",	-- 00808a: 3F40             MOV.W   #0x0001,R15
						   32841 => x"0M",
						   32842 => x"F1",	-- 00808e: 1FF3             AND.W   #1,R15
						   32843 => x"3A",
						   32844 => x"16",	-- 008090: 814F             MOV.W   R15,0x0002(SP)
						   32845 => x"FM",
						   32846 => x"D6",	-- 008094: 3D40             MOV.W   #0x0001,R13
						   32847 => x"0M",
						   32848 => x"D1",	-- 008098: 1DF3             AND.W   #1,R13
						   32849 => x"3A",
						   32850 => x"16",	-- 00809a: 814D             MOV.W   R13,0x0004(SP)
						   32851 => x"DM",
						   32852 => x"FF",	-- 0080a2: 0FDE             BIS.W   R14,R15
						   32853 => x"EB",
						   32854 => x"FF",	-- 0080a4: 1FD1             BIS.W   0x0004(SP),R15
						   32855 => x"1B",
						   32856 => x"FF",	-- 0080a8: 3FD0             BIS.W   #0xa500,R15
						   32857 => x"0B",
						   32858 => x"26",	-- 0080ac: 824F             MOV.W   R15,&SYSCFG0_L
						   32859 => x"FM",
						   32860 => x"17",	-- 0080b0: 3150             ADD.W   #0x0006,SP
						   32861 => x"0A",
						   32862 => x"36",	-- 0080b6: 0343             NOP     
						   32863 => x"3N",
						   32864 => x"F5",	-- 0080b8: FF3F             JMP     ($C$L1)
						   32865 => x"FJ",
						   32866 => x"36",	-- 0080ba: 0343             NOP     
						   32867 => x"3N",
						   32868 => x"C6",	-- 0080bc: 1C43             MOV.W   #1,R12
						   32869 => x"3M",
						   32870 => x"16",	-- 0080c0: 3140             MOV.W   #0x3000,SP
						   32871 => x"0M",
						   32872 => x"C6",	-- 0080cc: 0C43             CLR.W   R12
						   32873 => x"3C",
						   32874 => x"C6",	-- 0080d2: 1C43             MOV.W   #1,R12
						   32875 => x"3M",
						   32876 => x"2F",	-- 0080d8: 32D0             BIS.W   #0x0010,SR
						   32877 => x"0B",

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
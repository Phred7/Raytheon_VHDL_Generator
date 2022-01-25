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
    
constant ROM : rom_type :=(32768 => x"31",		-- 008000: 3140             MOV.W   #0x3000,SP
						   32769 => x"40",
						   32770 => x"00",		-- 008002: 0030            
						   32771 => x"30",
						   32772 => x"B0",		-- 008004: B012             CALL    #_system_pre_init
						   32773 => x"12",
						   32774 => x"1A",		-- 008006: 1A80            
						   32775 => x"80",
						   32776 => x"0C",		-- 008008: 0C43             CLR.W   R12
						   32777 => x"43",
						   32778 => x"B0",		-- 00800a: B012             CALL    #main
						   32779 => x"12",
						   32780 => x"1E",		-- 00800c: 1E80            
						   32781 => x"80",
						   32782 => x"1C",		-- 00800e: 1C43             MOV.W   #1,R12
						   32783 => x"43",
						   32784 => x"B0",		-- 008010: B012             CALL    #abort
						   32785 => x"12",
						   32786 => x"14",		-- 008012: 1480            
						   32787 => x"80",
						   32788 => x"03",		-- 008014: 0343             NOP     
						   32789 => x"43",
						   32790 => x"FF",		-- 008016: FF3F             JMP     ($C$L1)
						   32791 => x"3F",
						   32792 => x"03",		-- 008018: 0343             NOP     
						   32793 => x"43",
						   32794 => x"1C",		-- 00801a: 1C43             MOV.W   #1,R12
						   32795 => x"43",
						   32796 => x"30",		-- 00801c: 3041             RET     
						   32797 => x"41",
						   32798 => x"0C",		-- 00801e: 0C43             CLR.W   R12
						   32799 => x"43",
						   32800 => x"30",		-- 008020: 3041             RET     
						   32801 => x"41",
						   32802 => x"32",		-- 008022: 32D0             BIS.W   #0x0010,SR
						   32803 => x"D0",
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
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;


entity high_roller is
    port ( clk	: in	std_logic;
         MAB		: in	std_logic_vector(15 downto 0);
         MDB_in  	: out	std_logic_vector(15 downto 0);
         MDB_out  	: in	std_logic_vector(15 downto 0);
         write	    : in	std_logic);
end entity

architecture high_roller_arch of high_roller is

type rom_type is array (32768 to 65535) of std_logic_vector(7 downto 0);  -- this is MAB: x8000 to xFFFF
    
constant ROM : rom_type :=(
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
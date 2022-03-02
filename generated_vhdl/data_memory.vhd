library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;


entity data_memory is
    port ( clk  : in  std_logic;
    MAB    : in  std_logic_vector(15 downto 0);
    MDB_in   : out std_logic_vector(15 downto 0);
    MDB_out    : in  std_logic_vector(15 downto 0);
    write  : in  std_logic);
end entity;

architecture data_memory_arch of data_memory is

    type rw_type is array (8192 to 12287) of std_logic_vector(7 downto 0);  -- this is MAB: x2000 to x2FFF
    signal RW : rw_type:=(8192 => x"ed",
						   8193 => x"ac",
						   8194 => x"ef",
						   8195 => x"be",
						   8224 => x"aa",
						   8225 => x"aa",
						   8226 => x"a1",
						   8227 => x"aa",
						   8228 => x"ab",
						   8229 => x"ab",
						   8230 => x"cb",
						   8231 => x"cb",
						   8232 => x"21",
						   8233 => x"43",
						   8234 => x"cc",
						   8235 => x"cc",
						   8236 => x"ab",
						   8237 => x"ab",
						   8238 => x"cb",
						   8239 => x"cb",
						   8240 => x"34",
						   8241 => x"12",
						   8242 => x"cc",
						   8243 => x"cc",
						   8244 => x"ab",
						   8245 => x"ab",
						   8246 => x"cb",
						   8247 => x"cb",
						   others=>x"00");  -- assigned an initial value to the data memory

    -- COLTER CHANGED TO ALLOW QUARTUS TO IMPLEMENT OUTSIDE ALMs
    -- COMMENT OUT IF COMPILING IN VIVADO
    attribute ramstyle : string;
    attribute ramstyle of RW : signal is "M10K"; 
    -- use the M10K that is on the Cyclone 5 Family and do not worry about matching read during write behavoir

    signal EN : std_logic;

    begin

    -- Note 1:  The bus system uses a 16-bit Address (MAB)
    --          This address size can access locations from x0000 to xFFFF
    --          But our array is only defined from x2000 to x2FFF and
    --          if we try to access it with any other address, it will crash.
    --          So the first thing we need to do is create a local enable that
    --          will only assert when MAB is within x2000 to x2FFF.

    LOCAL_EN : process (MAB)
        begin
            if ( (to_integer(unsigned(MAB)) >= 8192) and (to_integer(unsigned(MAB)) <= 12287)) then
                EN <= '1';
            else
                EN <= '0';
            end if;
        end process;

    -- Note 2:  The bus system uses a 16-bit Address (MAB)
    --          The MDB_out is also provided as a 16-bit word
    --          However, the memory array is actually built as 8-bit bytes.
    --          So for a given 16-bit MAB, we give MDB_out = HB : LB
    --                                                 or  = RW(MAB+1) : RW(MAB)
    MEMORY_READ : process(clk)
        begin
            if (rising_edge(clk)) then
    -- READ
                if (EN='1' and write='0') then
                    MDB_in <= RW(to_integer(unsigned(MAB)) + 1 ) & RW(to_integer(unsigned(MAB)));
                end if;
            end if;
        end process;

    MEMORY_WRITE_LOW_BYTE : process( clk )
    begin
        if (rising_edge(clk)) then
    -- WRITE
        if (EN='1' and write='1') then
            RW(to_integer(unsigned(MAB)))      <= MDB_out(7 downto 0);
        end if;
    end if ;

------------------------------------------------------------------------------------------------
------ Software Implementation
------------------------------------------------------------------------------------------------
    if (rising_edge(clk)) then
        if (EN='1'  and write='1') then
            RW(to_integer(unsigned(MAB))+1)   <= MDB_out(15 downto 8);
        end if ;
    end if ;
------------------------------------------------------------------------------------------------


    end process ; -- MEMORY_WRITE_LOW_BYTE


------------------------------------------------------------------------------------------
-- Hardware Implementation
------------------------------------------------------------------------------------------
    --MEMORY_WRITE_HIGH_BYTE : process( clk )
    --begin
    --  if (rising_edge(clk)) then
    --      if (EN='1'  and write='1') then
    --          RW(to_integer(unsigned(MAB))+1)   <= MDB_out(15 downto 8);
    --      end if ;
    --  end if ;
    --end process ; -- MEMORY_WRITE_HIGH_BYTE
------------------------------------------------------------------------------------------

end architecture;

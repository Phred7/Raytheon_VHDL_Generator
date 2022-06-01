library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity data_memory is
    port ( clk  : in  std_logic;
    MAB         : in  std_logic_vector(15 downto 0);
    MDB_in      : out std_logic_vector(15 downto 0);
    MDB_out     : in  std_logic_vector(15 downto 0);
    write       : in  std_logic;
    Byte        : in    std_logic);
end entity;
architecture data_memory_arch of data_memory is
    type rw_type is array (8192 to 12287) of std_logic_vector(7 downto 0);  -- this is MAB: x2000 to x2FFF
    shared variable RW : rw_type:=(others=>x"00");  -- assigned an initial value to the data memory
    signal high_addr, low_addr : integer;
    signal read_value : std_logic_vector(15 downto 0);
    signal EN, WENH, WENL : std_logic;
    begin
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
    WENH<= write and EN and not Byte;
    WENL<= write and EN;
    ADDR_HANDLE : process( MAB )
    begin
        if ( (to_integer(unsigned(MAB)) >= 8192) and (to_integer(unsigned(MAB)) <= 12287)) then
            high_addr<= to_integer(unsigned(MAB))+1;
            low_addr<= to_integer(unsigned(MAB));
        else
            high_addr<= 8193;
            low_addr <= 8192;   
        end if;
    end process ; -- ADDR_HANDLE
    LOW_BYTE : process(clk) 
    begin
        if (rising_edge(clk)) then
            if (WENL='1') then
                RW(low_addr) := MDB_out(7 downto 0);
            end if ;
            read_value(7 downto 0) <= RW(low_addr);
        end if;
    end process ; -- LOW_BYTE
    WRITE_HIGH_BYTE : process( clk )
    begin
        if (rising_edge(clk)) then
            if (WENH='1') then
                RW(high_addr) := MDB_out(15 downto 8);
            end if ;
            if (Byte='0') then
                read_value(15 downto 8)<=RW(high_addr);
            end if ;
        end if ;
    end process ; -- WRITE_HIGH_BYTE
    MDB_in_HANDL : process( read_value, Byte )
    begin
        if (Byte='0') then
            MDB_in <= read_value;
        else
            MDB_in <= x"00" & read_value(7 downto 0);
        end if ;
    end process ; -- MDB_in_HANDL
    --------------------------------------------------------------------------------------------
	
end architecture;

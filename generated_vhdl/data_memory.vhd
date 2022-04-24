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
    signal RW : rw_type:=(32768 => x"00",
						   32769 => x"ff",
						   32770 => x"00",
						   32771 => x"38",
						   32772 => x"28",
						   32773 => x"37",
						   32774 => x"18",
						   32775 => x"00",
						   32776 => x"27",
						   32777 => x"34",
						   32778 => x"ff",
						   32779 => x"08",
						   32780 => x"39",
						   32781 => x"00",
						   32782 => x"00",
						   32783 => x"17",
						   32784 => x"00",
						   32785 => x"24",
						   32786 => x"0d",
						   32787 => x"ff",
						   32788 => x"78",
						   32789 => x"00",
						   32790 => x"29",
						   32791 => x"36",
						   32794 => x"00",
						   32795 => x"35",
						   32796 => x"fd",
						   32797 => x"07",
						   32798 => x"00",
						   32799 => x"40",
						   32800 => x"14",
						   32801 => x"13",
						   32802 => x"7d",
						   32803 => x"12",
						   32804 => x"68",
						   32805 => x"69",
						   32806 => x"ff",
						   32807 => x"00",
						   32808 => x"00",
						   32809 => x"19",
						   32810 => x"6a",
						   32811 => x"26",
						   32814 => x"3a",
						   32815 => x"be",
						   32816 => x"01",
						   32817 => x"50",
						   32818 => x"00",
						   32819 => x"25",
						   32820 => x"0e",
						   32821 => x"77",
						   32822 => x"76",
						   32823 => x"01",
						   32824 => x"d0",
						   32825 => x"6b",
						   32826 => x"ff",
						   32827 => x"00",
						   32828 => x"00",
						   32829 => x"04",
						   32830 => x"00",
						   32831 => x"03",
						   32832 => x"00",
						   32833 => x"6d",
						   32834 => x"6c",
						   32835 => x"df",
						   32836 => x"02",
						   32837 => x"01",
						   32838 => x"58",
						   32839 => x"00",
						   32840 => x"59",
						   32841 => x"01",
						   32842 => x"81",
						   32843 => x"33",
						   32844 => x"09",
						   32845 => x"ff",
						   32846 => x"0a",
						   32847 => x"5a",
						   32848 => x"00",
						   32849 => x"16",
						   32850 => x"0b",
						   32851 => x"00",
						   32852 => x"0c",
						   32853 => x"00",
						   32854 => x"e7",
						   32855 => x"00",
						   32856 => x"2a",
						   32857 => x"2b",
						   32858 => x"02",
						   32859 => x"91",
						   32860 => x"02",
						   32861 => x"d1",
						   32862 => x"15",
						   32863 => x"00",
						   32864 => x"7e",
						   32865 => x"af",
						   32866 => x"7f",
						   32867 => x"67",
						   32868 => x"00",
						   32869 => x"66",
						   32870 => x"00",
						   32871 => x"e4",
						   32872 => x"5b",
						   32873 => x"01",
						   32874 => x"62",
						   32875 => x"74",
						   32876 => x"ef",
						   32877 => x"75",
						   32880 => x"73",
						   32881 => x"06",
						   32882 => x"00",
						   32883 => x"5d",
						   32884 => x"5e",
						   32885 => x"5c",
						   32886 => x"ff",
						   32887 => x"00",
						   32888 => x"72",
						   32889 => x"5f",
						   32890 => x"71",
						   32891 => x"00",
						   32892 => x"48",
						   32893 => x"47",
						   32894 => x"00",
						   32895 => x"ff",
						   32896 => x"44",
						   32897 => x"49",
						   32900 => x"1d",
						   32901 => x"00",
						   32902 => x"46",
						   32903 => x"00",
						   32904 => x"ff",
						   32905 => x"45",
						   32908 => x"23",
						   32909 => x"22",
						   32910 => x"79",
						   32911 => x"00",
						   32912 => x"7a",
						   32913 => x"ff",
						   32914 => x"00",
						   32915 => x"4a",
						   32918 => x"1e",
						   32919 => x"06",
						   32920 => x"00",
						   32921 => x"7b",
						   32922 => x"f6",
						   32923 => x"08",
						   32924 => x"60",
						   32925 => x"7c",
						   32926 => x"11",
						   32927 => x"08",
						   32928 => x"b0",
						   32929 => x"43",
						   32930 => x"1a",
						   32931 => x"00",
						   32932 => x"1b",
						   32933 => x"57",
						   32934 => x"1c",
						   32935 => x"00",
						   32936 => x"3b",
						   32937 => x"05",
						   32938 => x"52",
						   32939 => x"0f",
						   32940 => x"05",
						   32941 => x"b5",
						   32942 => x"05",
						   32943 => x"0a",
						   32944 => x"40",
						   32945 => x"ff",
						   32946 => x"6e",
						   32947 => x"00",
						   32948 => x"6f",
						   32949 => x"10",
						   32950 => x"57",
						   32951 => x"54",
						   32952 => x"00",
						   32953 => x"2d",
						   32954 => x"af",
						   32955 => x"56",
						   32956 => x"55",
						   32957 => x"00",
						   32958 => x"32",
						   32959 => x"0b",
						   32960 => x"30",
						   32961 => x"2e",
						   32962 => x"0b",
						   32963 => x"70",
						   32964 => x"21",
						   32965 => x"ff",
						   32966 => x"00",
						   32967 => x"53",
						   32968 => x"00",
						   32969 => x"2c",
						   32970 => x"4b",
						   32971 => x"00",
						   32972 => x"00",
						   32973 => x"1f",
						   32974 => x"fe",
						   32975 => x"08",
						   32976 => x"34",
						   32977 => x"20",
						   32978 => x"64",
						   32979 => x"3d",
						   32980 => x"65",
						   32981 => x"42",
						   32982 => x"00",
						   32983 => x"3e",
						   32984 => x"bf",
						   32985 => x"00",
						   32986 => x"31",
						   32987 => x"63",
						   32988 => x"3c",
						   32989 => x"00",
						   32990 => x"2f",
						   32991 => x"0d",
						   32992 => x"70",
						   32993 => x"30",
						   32994 => x"ff",
						   32995 => x"4d",
						   32996 => x"52",
						   32997 => x"4e",
						   32998 => x"41",
						   32999 => x"4c",
						   33000 => x"3f",
						   33001 => x"00",
						   33002 => x"40",
						   33003 => x"ff",
						   33004 => x"62",
						   33005 => x"51",
						   33006 => x"4f",
						   33007 => x"50",
						   33008 => x"61",
						   33009 => x"60",
						   33010 => x"70",
						   33011 => x"00",
						   33012 => x"03",
						   33013 => x"e8",
						   33014 => x"03",
						   33015 => x"ff",
						   33016 => x"f0",
						   33017 => x"00",
						   --__TI_Handler_Table_Base
						   33018 => x"8c",
						   33019 => x"81",
						   33020 => x"06",
						   33021 => x"83",
						   --__TI_Handler_Table_Limit
						   --__TI_CINIT_Base
						   33022 => x"00",
						   33023 => x"80",
						   33024 => x"00",
						   33025 => x"20",
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

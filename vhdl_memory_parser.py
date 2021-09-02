###############################
# VHDL Memory Parser
# For Raytheon Research Project
# Dr. Clem Izurieta
# Dr. Brock LaMeres
# Written by Blake Stanger and Walker Ward
###############################
import logging
import sys
import os
from logging import Logger
from typing import TextIO

import ccs_disassembler

logging.basicConfig(level=logging.DEBUG, format='%(asctime)s - %(levelname)s - %(message)s')
logger: Logger = logging.getLogger(__name__)


def remove_last_generated_files() -> None:
    """
    Removes the files generated in the last run of main.
    - Removes all files with the vhd file extension
    :return: None.
    """
    directory: str = rf'{os.getcwd()}\generated_vhdl'
    for file in os.listdir(directory):
        if file.endswith(".vhd"):
            os.remove(f"{directory}\\{file}")
            logger.info(f'Removed {file}')


def generate_vhd_packages() -> None:
    """
    Generated the vhd package for each computer.
    :return: None.
    """
    for computer_name in get_computer_name_list():
        original_stdout: TextIO = sys.stdout
        with open(f"{os.getcwd()}\\generated_vhdl\\{computer_name}_package.vhd", "a+") as vhd_package_file:
            sys.stdout = vhd_package_file
            vhd_package_constants_str: str
            if "high_roller" in computer_name:
                vhd_package_constants = """constant FORMAT_2 : integer := 3;
    constant JMP1 : integer := 4;
    constant JMP2 : integer := 5;
    constant MOV : integer := 6;
    constant OFFSET : integer := 2;"""
            elif "low_life" in computer_name:
                vhd_package_constants = """constant FORMAT_2 : integer := 15;
    constant JMP1 : integer := 0;
    constant JMP2 : integer := 1;
    constant MOV : integer := 2;
    constant OFFSET : integer := -2;"""
            else:
                vhd_package_constants = """constant FORMAT_2 : integer := 1;
    constant JMP1 : integer := 2;
    constant JMP2 : integer := 3;
    constant MOV : integer := 4;
    constant OFFSET : integer := 0;"""

            print(f"""library IEEE;
    use IEEE.std_logic_1164.all;
    use IEEE.numeric_std.all;
    package {computer_name} is
    {vhd_package_constants}
    end {computer_name};""")

            vhd_package_file.close()
            sys.stdout = original_stdout
            logger.info(f'Generated {computer_name}.vhd')


def generate_vhd_memory() -> None:
    for computer_name in get_computer_name_list():
        original_stdout: TextIO = sys.stdout
        with open(f"{os.getcwd()}\\generated_vhdl\\{computer_name}_memory.vhd", "a+") as vhd_memory_file:
            sys.stdout = vhd_memory_file
            print(get_vhdl_memory_libraries())
            print(get_vhdl_memory_entity(computer_name))
            print(get_vhdl_memory_architecture(computer_name), end="")
            sys.stdout = original_stdout
            logger.info(f'Generated {computer_name}_memory.vhd')


def get_vhdl_memory_libraries() -> str:
    return """library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;\n\n"""


def get_vhdl_memory_entity(computer_name: str) -> str:
    return f"""entity {computer_name} is
    port ( clk	: in	std_logic;
         MAB		: in	std_logic_vector(15 downto 0);
         MDB_in  	: out	std_logic_vector(15 downto 0);
         MDB_out  	: in	std_logic_vector(15 downto 0);
         write	    : in	std_logic);
end entity\n"""


def get_vhdl_memory_architecture(computer_name: str) -> str:
    return f"""architecture {computer_name}_arch of {computer_name} is\n
{get_vhdl_memory_rom_type()}{get_vhdl_memory_rom_asm(computer_name)}
{get_vhdl_irq_vectors()}
{get_vhdl_local_en_process()}\n
{get_vhdl_memory_rom_process()}\n\n
end architecture;"""


def get_vhdl_memory_rom_type() -> str:
    return """type rom_type is array (32768 to 65535) of std_logic_vector(7 downto 0);  -- this is MAB: x8000 to xFFFF
    
constant ROM : rom_type :=("""


def get_vhdl_memory_rom_asm(computer_name: str) -> str:
    memory_start: int = 32768
    computer_mnemonic_dictionary: {str, str} = get_computer_mnemonic_dictionary(computer_name)

    return ""


def get_vhdl_irq_vectors() -> str:
    return """        -- IRQ Vectors
                           65534 =>  x"00", -- Reset Vector = xFFFE:xFFFF
                           65535 =>  x"80", --  Startup Value = x8000

                           others => x"00");"""


def get_vhdl_local_en_process() -> str:
    return """
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
      end process;"""


def get_vhdl_memory_rom_process() -> str:
    return """
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
   end process;"""


def get_computer_mnemonic_dictionary(computer_name: str) -> {str, str}:
    if computer_name == "high_roller":
        return {"RRC.W": "3",#3
               "RRC.B": "3",
               "SWP.B": "3",
               "RRA.W": "3",
               "RRA.B": "3",
               "SXT.W": "3",
               "PUSH.W": "3",
               "PUSH.B": "3",
               "RETI.W": "3",#3
               "JNE": "4",
               "JNZ": "4",
               "JEQ": "4",
               "JZ": "4",
               "JNC": "4",
               "JC": "4",#4
               "JN": "5",
               "JGE": "5",
               "JL": "5",
               "JMP": "5",#5
               "CLR.W": "6",
               "BR.W": "6",
               "MOV.W": "6",
               "MOV.B": "6",
               "NOP": "6",#6
               "INC.W": "7",
               "INC.B": "7",
               "INCD.W": "7",
               "INCD.B": "7",
               "ADD.W": "7",
               "ADD.B": "7",#7
               "ADDC.W": "8",
               "ADDC.B": "8",
               "ADC.W": "8",
               "ADC.B": "8",#8
               "SUBC.W": "9",
               "SUBC.B": "9",#9
               "DEC.W": "A",
               "DEC.B": "A",
               "DECD.W": "A",
               "DECD.B": "A",
               "SUB.W": "A",
               "SUB.B": "A",#A
               "CMP.W": "B",
               "TST.W": "B",
               "CMP.B": "B",#B
               "DADD.W": "C",
               "DADD.B": "C",
               "DADC.W": "C",
               "DADC.B": "C",#C
               "BIT.W": "D",
               "BIT.B": "D",#D
               "CLRC.W": "E",
               "CLRN.W": "E",
               "CLRZ.W": "E",
               "BIC.W": "E",
               "BIC.B": "E",
               "DINT.W": "E",#E
               "EINT.W": "F",
               "BIS.W": "F",
               "BIS.B": "F",#F
               "XOR.W": "0",
               "XOR.B": "0",#0
               "AND.W": "1",#1
               "AND.B": "1"}
    elif computer_name == "low_life":
        return {"RRC.W": "F",
               "RRC.B": "F",
               "SWP.B": "F",
               "RRA.W": "F",
               "RRA.B": "F",
               "SXT.W": "F",
               "PUSH.W": "F",
               "PUSH.B": "F",
               "RETI.W": "F",
               "JNE": "0",
               "JNZ": "0",
               "JEQ": "0",
               "JZ": "0",
               "JNC": "0",
               "JC": "0",
               "JN": "1",
               "JGE": "1",
               "JL": "1 ",
               "JMP": "1", #ones
               "CLR.W": "2",
               "BR.W": "2",
               "MOV.W": "2",
               "MOV.B": "2",
               "NOP": "2",
               "INC.W": "3",
               "INC.B": "3",
               "INCD.W": "3",
               "INCD.B": "3",
               "ADD.W": "3",
               "ADD.B": "3",
               "ADDC.W": "4",
               "ADDC.B": "4",
               "ADC.W": "4",
               "ADC.B": "4",
               "SUBC.W": "5",
               "SUBC.B": "5",
               "DEC.W": "6",
               "DEC.B": "6",
               "DECD.W": "6",
               "DECD.B": "6",
               "SUB.W": "6",
               "SUB.B": "6",
               "CMP.W": "7",
               "TST.W": "7",
               "CMP.B": "7",
               "DADD.W": "8",
               "DADD.B": "8",
               "DADC.W": "8",
               "DADC.B": "8",
               "BIT.W": "9",
               "BIT.B": "9",
               "CLRC.W": "A",
               "CLRN.W": "A",
               "CLRZ.W": "A",
               "BIC.W": "A",
               "BIC.B": "A",
               "DINT.W": "A",
               "EINT.W": "B",
               "BIS.W": "B",
               "BIS.B": "B",
               "XOR.W": "C",
               "XOR.B": "C",
               "AND.W": "D",
               "AND.B": "D"} #D
    else:
        return {"RRC.W": "1",
               "RRC.B": "1",
               "SWP.B": "1",
               "RRA.W": "1",
               "RRA.B": "1",
               "SXT.W": "1",
               "PUSH.W": "1",
               "PUSH.B": "1",
               "RETI.W": "1",
               "JNE": "2",
               "JNZ": "2",
               "JEQ": "2",
               "JZ": "2",
               "JNC": "2",
               "JC": "2",
               "JN": "3",
               "JGE": "3",
               "JL": "3 ",
               "JMP": "3",
               "CLR.W": "4",
               "BR.W": "4",
               "MOV.W": "4",
               "MOV.B": "4",
               "NOP": "4",
               "INC.W": "5",
               "INC.B": "5",
               "INCD.W": "5",
               "INCD.B": "5",
               "ADD.W": "5",
               "ADD.B": "5",
               "ADDC.W": "6",
               "ADDC.B": "6",
               "ADC.W": "6",
               "ADC.B": "6",
               "SUBC.W": "7",
               "SUBC.B": "7",
               "DEC.W": "8",
               "DEC.B": "8",
               "DECD.W": "8",
               "DECD.B": "8",
               "SUB.W": "8",
               "SUB.B": "8",
               "CMP.W": "9",
               "TST.W": "9",
               "CMP.B": "9",
               "DADD.W": "A",
               "DADD.B": "A",
               "DADC.W": "A",
               "DADC.B": "A",
               "BIT.W": "B",
               "BIT.B": "B",
               "CLRC.W": "C",
               "CLRN.W": "C",
               "CLRZ.W": "C",
               "BIC.W": "C",
               "BIC.B": "C",
               "DINT.W": "C",
               "EINT.W": "D",
               "BIS.W": "D",
               "BIS.B": "D",
               "XOR.W": "E",
               "XOR.B": "E",
               "AND.W": "F",
               "AND.B": "F"}


def get_computer_name_list() -> list[str]:
    return ["baseline", "high_roller", "lowlife"]


def main() -> None:
    """
    TODO: add malicious check for MSP430 output binaries to workflow
    generate the baseline, highroller and lowlife package files
        - open the correct file (type_package.vhd)
        - append the imports and constants depending on package type
    generate the baseline, highroller and lowlife memory files
        - (begin preamble)
        - append imports and packages
        - create the entity (specific to each computer)
        - create the architecture (specific to each computer)
            - read in the disassembly text file
            - 'match and modify'
                - select the correct dictionary for this computer
                - split each line into an array of chars
                - modify the generated ROM based on this computer
            - (begin postamble)
            - IRQ Vectors
            - LOCAL_EN proc
            - MEMORY_ROW proc
        - end architecture
    TODO: Remove disassembly text file
    TODO: Comment and document code
    TODO: Make code more readable and reusable
    TODO: Create pydocs for each method
    TODO: Refactor methods
    TODO: link CCS and pycharm workspaces
    TODO: stop using the global mem start
    """
    disassembler.main()
    remove_last_generated_files()
    generate_vhd_packages()
    generate_vhd_memory()

    pass


if __name__ == '__main__':
    main()

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


def remove_last_generated_vhd_files() -> None:
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


def generate_vhdl_packages() -> None:
    """
    Generates the vhdl package for each computer to its respective output file.
    :return: None.
    """
    for computer_name in get_computer_name_list():
        original_stdout: TextIO = sys.stdout
        with open(f"{os.getcwd()}\\generated_vhdl\\{computer_name}_package.vhd", "a+") as vhdl_package_file:
            sys.stdout = vhdl_package_file
            vhd_package_constants_str: str
            if "highroller" in computer_name:
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

            vhdl_package_file.close()
            sys.stdout = original_stdout
            logger.info(f'Generated {computer_name}.vhd')


def generate_vhdl_memory() -> None:
    """
    Generates the vhdl memory for each computer to its respective output file.
     - generates memory libraries
     - generates memory entity
     - generates memory architecture
    :return: None.
    """
    for computer_name in get_computer_name_list():
        original_stdout: TextIO = sys.stdout
        with open(f"{os.getcwd()}\\generated_vhdl\\{computer_name}_memory.vhd", "a+") as vhdl_memory_file:
            sys.stdout = vhdl_memory_file
            print(get_vhdl_memory_libraries())
            print(get_vhdl_memory_entity(computer_name))
            print(get_vhdl_memory_architecture(computer_name), end="")
            vhdl_memory_file.close()
            sys.stdout = original_stdout
            logger.info(f'Generated {computer_name}_memory.vhd')


def get_vhdl_memory_libraries() -> str:
    """
    Generates the vhdl memory library as a str.
    :return: str representation of vhdl memory libraries.
    """
    return """library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;\n\n"""


def get_vhdl_memory_entity(computer_name: str) -> str:
    """
    Generates the vhdl memory entity as a str for the computer with name computer_name.
    :param computer_name: str name of the computer to generate a vhdl memory entity for.
    :return: str representation of vhdl memory entity.
    """
    return f"""entity {computer_name}_memory is
    port ( clk	: in	std_logic;
         MAB		: in	std_logic_vector(15 downto 0);
         MDB_in  	: out	std_logic_vector(15 downto 0);
         MDB_out  	: in	std_logic_vector(15 downto 0);
         write	    : in	std_logic);
end entity;\n"""


def get_vhdl_memory_architecture(computer_name: str) -> str:
    """
    Generates the vhdl memory architecture as a str for the computer with name computer_name.
     - generates memory rom type
     - generates memory rom ASM
     - generates irq vectors
     - generates signals
     - generates local en process
     - generates memory rom process
    :param computer_name: str name of the computer to generate a vhdl memory architecture for.
    :return: str representation of vhdl memory architecture.
    """
    return f"""architecture {computer_name}_memory_arch of {computer_name}_memory is\n
{get_vhdl_memory_rom_type()}{get_vhdl_memory_rom_asm(computer_name)}{get_vhdl_irq_vectors()}\n
    signal EN : std_logic;
{get_vhdl_local_en_process()}\n
{get_vhdl_memory_rom_process()}\n\n
end architecture;"""


def get_vhdl_memory_rom_type() -> str:
    """
    Generates the vhdl memory rom type as a str.
    :return: str representation of vhdl memory rom type.
    """
    return """type rom_type is array (32768 to 65535) of std_logic_vector(7 downto 0);  -- this is MAB: x8000 to xFFFF
    
constant ROM : rom_type :=("""


def translate_opcode_with_mnemonic_dictionary(line_str_list: list[str],
                                              computer_mnemonic_dictionary: {str, str}) -> str:
    """
    Converts the original opcode (hex) to one specified by the dict computer_mnemonic_dictionary based on the original opcodes mnemonic.
    :param line_str_list: A line in the file generated by the disassembler as a list split on spaces.
    :param computer_mnemonic_dictionary: dict containing mnemonics as keys and changes for opcodes as keys.
    :return: str representation of a line with modification specified by computer_mnemonic_dictionary.
    """
    opcode_hex_chars: list[str] = list(line_str_list[1])
    opcode_hex_chars[2] = computer_mnemonic_dictionary.get(line_str_list[14])
    line_str_list[1] = ''.join(opcode_hex_chars)
    return ' '.join(line_str_list)


def get_vhdl_memory_rom_asm(computer_name: str) -> str:
    """
    Generates the vhdl memory rom assembly (asm) as a str for the computer with name computer_name.
     - Reads in from file specified by disassembler_output_file_name at the path disassembler_output_file_directory.
     - Based on computer_name and lines in the specified file, values in opcodes are replaced with values corresponding
        mnemonics (the key) in the dict computer_mnemonic_dictionary.
     - Converts opcodes endian of ASM between BigEndian and LittleEndian.
     - Stops generating str when the current line contains "SR".
     - Each opcode generates two lines of vhdl memory.
    :param computer_name: str name of the computer to generate the vhdl memory rom asm for.
    :return: str representation of vhdl memory rom asm (program memory).
    """
    current_program_memory: int = 32768
    computer_mnemonic_dictionary: {str, str} = get_computer_mnemonic_dictionary(computer_name)
    disassembler_output_file_name: str = "generated_disassembly.txt"
    disassembler_output_file_directory: str = rf"{os.getcwd()}\generated_disassembly"
    generated_rom_asm_str: str = ""
    logger.info(f"Reading in lines from {disassembler_output_file_name} for {computer_name}")
    for line in open(f"{disassembler_output_file_directory}\\{disassembler_output_file_name}", 'r').readlines():
        unmodified_line: str = line
        line_str_list: list[str] = line.split(' ')
        if (len(line_str_list) >= 15 and line_str_list[14] in computer_mnemonic_dictionary.keys()) or len(
                line_str_list) == 14:
            if computer_name != "baseline" and len(line_str_list) != 14:
                line = translate_opcode_with_mnemonic_dictionary(line_str_list, computer_mnemonic_dictionary)
            memory_indent: str = "\t\t\t\t\t\t   "
            generated_rom_asm_str += f"""{"" if current_program_memory == 32768 else memory_indent}{current_program_memory} => x\"{line[8]}{line[9]}\",\t\t-- {unmodified_line}"""  # -- #\t\t--
            current_program_memory += 1
            generated_rom_asm_str += f"""{memory_indent}{current_program_memory} => x\"{line[10]}{line[11]}\",\n"""
            current_program_memory += 1
            if "SR" in unmodified_line:
                logger.debug("Reached SR in generated_disassembly.txt")
                return generated_rom_asm_str


def get_vhdl_irq_vectors() -> str:
    """
    Gets the str representation of the vhdl irq vectors (interrupts).
    :return: str representation of the vhdl irq vectors (interrupts).
    """
    return """        -- IRQ Vectors (Interrupts)
                           65534 =>  x"00",\t\t-- Reset Vector = xFFFE:xFFFF
                           65535 =>  x"80",\t\t--  Startup Value = x8000

                           others => x"00");"""


def get_vhdl_local_en_process() -> str:
    """
    Gets the str representation of the vhdl local en process.
    :return: str representation of the vhdl local en process.
    """
    return """
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
    """
    Gets the str representation of the vhdl memory rom process.
    :return: str representation of the vhdl memory rom process.
    """
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
    """
    Gets the computer_mnemonic_dictionary for the computer with the name specified by computer_name.

    :param computer_name: str name of the computer to get the computer_mnemonic_dictionary for.
    :return: computer_mnemonic_dictionary for the computer with name computer_name.
    """
    if computer_name == "highroller":
        return {"RRC.W": "3",  # 3
                "RRC.B": "3",
                "SWP.B": "3",
                "RRA.W": "3",
                "RRA.B": "3",
                "SXT.W": "3",
                "PUSH.W": "3",
                "PUSH.B": "3",
                "RETI.W": "3",  # 3
                "JNE": "4",
                "JNZ": "4",
                "JEQ": "4",
                "JZ": "4",
                "JNC": "4",
                "JC": "4",  # 4
                "JN": "5",
                "JGE": "5",
                "JL": "5",
                "JMP": "5",  # 5
                "CLR.W": "6",
                "BR.W": "6",
                "MOV.W": "6",
                "MOV.B": "6",
                "NOP": "6",  # 6
                "INC.W": "7",
                "INC.B": "7",
                "INCD.W": "7",
                "INCD.B": "7",
                "ADD.W": "7",
                "ADD.B": "7",  # 7
                "ADDC.W": "8",
                "ADDC.B": "8",
                "ADC.W": "8",
                "ADC.B": "8",  # 8
                "SUBC.W": "9",
                "SUBC.B": "9",  # 9
                "DEC.W": "A",
                "DEC.B": "A",
                "DECD.W": "A",
                "DECD.B": "A",
                "SUB.W": "A",
                "SUB.B": "A",  # A
                "CMP.W": "B",
                "TST.W": "B",
                "CMP.B": "B",  # B
                "DADD.W": "C",
                "DADD.B": "C",
                "DADC.W": "C",
                "DADC.B": "C",  # C
                "BIT.W": "D",
                "BIT.B": "D",  # D
                "CLRC.W": "E",
                "CLRN.W": "E",
                "CLRZ.W": "E",
                "BIC.W": "E",
                "BIC.B": "E",
                "DINT.W": "E",  # E
                "EINT.W": "F",
                "BIS.W": "F",
                "BIS.B": "F",  # F
                "XOR.W": "0",
                "XOR.B": "0",  # 0
                "AND.W": "1",  # 1
                "AND.B": "1"}
    elif computer_name == "lowlife":
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
                "JL": "1",  # modified from "1 "
                "JMP": "1",  # ones
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
                "AND.B": "D"}  # D
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
                "JL": "3",  # modified from "3 "
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
                "BIT.B": "B",  # TODO: This is wrong
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
    """
    Gets the names of each computer as a list.
    :return: str List of each computer.
    """
    return ["baseline", "highroller", "lowlife"]


def main() -> None:
    """
    TODO: One-click runs whole workflow?
    TODO: Command line arguments?
    TODO: Make an executable?
    TODO: Inject malware into binary to test PIQUE-bin and FPGA's mitigation and remediation
    TODO: PIQUE-bin: add check for malicious code in binary from MSP430 debugger to workflow
    calls ccs_disassembler.main()
    removes all files generated in last execution.
    generates the baseline, highroller and lowlife package files.
    generates the baseline, highroller and lowlife memory files.
    """
    remove_last_generated_vhd_files()
    ccs_disassembler.disassemble()
    generate_vhdl_packages()
    generate_vhdl_memory()


if __name__ == '__main__':
    main()

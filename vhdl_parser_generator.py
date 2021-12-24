###############################
# VHDL Memory Parser
# For Raytheon Research Project and Interdisciplinary Capstone Project (2021-'22)
# Dr. Clem Izurieta
# Dr. Brock LaMeres
# Written by Blake Stanger and Walker Ward
###############################
import logging
import sys
import os
from logging import Logger
from typing import TextIO

from package_zipper import PackageZipper
from computer_mnemonic_dictionary import ComputerMnemonicDictionary
from disassembler import Disassembler


class UnrecognizedInstructionError(Exception):
    """A instruction in the generated disassemble was not recognized by the computer_mnemonic_dictionary"""
    pass


class VHDLParserGenerator:

    def __init__(self) -> None:
        logging.basicConfig(level=logging.DEBUG, format='%(asctime)s - %(levelname)s - %(message)s')
        self.logger: Logger = logging.getLogger(__name__)

    def remove_last_generated_vhd_files(self) -> None:
        """
        Removes the files generated in the last run of main.
        - Removes all files with the vhd file extension
        :return: None.
        """
        directory: str = rf'{os.getcwd()}\generated_vhdl'
        for file in os.listdir(directory):
            if file.endswith(".vhd"):
                os.remove(f"{directory}\\{file}")
                self.logger.info(f'Removed {file}')
            elif file == "generated_disassembly.txt":
                os.remove(f"{directory}\\{file}")
                self.logger.info(f'Removed {file} from \\generated_vhdl\\')

    def generate_vhdl_packages(self) -> None:
        """
        Generates the vhdl package for each computer to its respective output file.
        :return: None.
        """
        for computer_name in self.get_computer_name_list():
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
                elif "lowlife" in computer_name:
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
    package {computer_name}_package is
    {vhd_package_constants}
    end {computer_name}_package;""")

                vhdl_package_file.close()
                sys.stdout = original_stdout
                self.logger.info(f'Generated {computer_name}_package.vhd')

    def generate_vhdl_memory(self) -> None:
        """
        Generates the vhdl memory for each computer to its respective output file.
         - generates memory libraries
         - generates memory entity
         - generates memory architecture
        :return: None.
        """
        for computer_name in self.get_computer_name_list():
            original_stdout: TextIO = sys.stdout
            with open(f"{os.getcwd()}\\generated_vhdl\\{computer_name}_memory.vhd", "a+") as vhdl_memory_file:
                sys.stdout = vhdl_memory_file
                print(self.get_vhdl_memory_libraries())
                print(self.get_vhdl_memory_entity(computer_name))
                print(self.get_vhdl_memory_architecture(computer_name), end="")
                vhdl_memory_file.close()
                sys.stdout = original_stdout
                self.logger.info(f'Generated {computer_name}_memory.vhd')

    @staticmethod
    def get_vhdl_memory_libraries() -> str:
        """
        Generates the vhdl memory library as a str.
        :return: str representation of vhdl memory libraries.
        """
        return """library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;\n\n"""

    @staticmethod
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

    def get_vhdl_memory_architecture(self, computer_name: str) -> str:
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
{self.get_vhdl_memory_rom_type()}{self.get_vhdl_memory_rom_asm(computer_name)}{self.get_vhdl_irq_vectors()}\n
    signal EN : std_logic;
    {self.get_vhdl_local_en_process()}\n
    {self.get_vhdl_memory_rom_process()}\n\n
end architecture;"""

    @staticmethod
    def get_vhdl_memory_rom_type() -> str:
        """
        Generates the vhdl memory rom type as a str.
        :return: str representation of vhdl memory rom type.
        """
        return """type rom_type is array (32768 to 65535) of std_logic_vector(7 downto 0);  -- this is MAB: x8000 to xFFFF
    
constant ROM : rom_type :=("""

    @staticmethod
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

    def get_vhdl_memory_rom_asm(self, computer_name: str) -> str:
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
        program_memory_start: int = 32768
        current_program_memory: int = program_memory_start
        computer_mnemonic_dictionary: {str, str} = self.get_computer_mnemonic_dictionary(computer_name)
        disassembler_output_file_name: str = "generated_disassembly.txt"
        disassembler_output_file_directory: str = rf"{os.getcwd()}\generated_disassembly"
        generated_rom_asm_str: str = ""
        memory_indent: str = "\t\t\t\t\t\t   "
        nop_opcode: str = "0343"
        self.logger.info(f"Reading in lines from {disassembler_output_file_name} for {computer_name}")
        for line in open(f"{disassembler_output_file_directory}\\{disassembler_output_file_name}", 'r').readlines():
            unmodified_line: str = line
            line_str_list: list[str] = line.split(' ')
            if len(line_str_list) >= 15 and not (line_str_list[14] in computer_mnemonic_dictionary.keys()):
                if f"{line_str_list[14]}.W" in computer_mnemonic_dictionary.keys():
                    line_str_list[14] = f"{line_str_list[14]}.W"
            if (len(line_str_list) >= 15 and line_str_list[14] in computer_mnemonic_dictionary.keys()) or len(
                    line_str_list) == 14:
                if computer_name != "baseline" and len(line_str_list) != 14:
                    line = self.translate_opcode_with_mnemonic_dictionary(line_str_list, computer_mnemonic_dictionary)
                generated_rom_asm_str += f"""{"" if current_program_memory == 32768 else memory_indent}{current_program_memory} => x\"{line[8]}{line[9]}\",\t\t-- {unmodified_line}"""  # -- #\t\t--
                current_program_memory += 1
                generated_rom_asm_str += f"""{memory_indent}{current_program_memory} => x\"{line[10]}{line[11]}\",\n"""
                current_program_memory += 1
                if "SR" in unmodified_line:
                    self.logger.debug("Reached SR in generated_disassembly.txt")
                    return generated_rom_asm_str
            elif current_program_memory > 32777 and len(line_str_list) >= 15 and not (
                    line_str_list[14] in computer_mnemonic_dictionary.keys()) and (":" not in line_str_list[14]):
                self.logger.error(
                    f"{UnrecognizedInstructionError.__name__}: The instruction {line_str_list[14]} in the generated disassembly was not recognized by the ComputerMnemonicDictionary verify silicon version is msp not mspx. Replaced with NOP")
                generated_rom_asm_str += f"""{"" if current_program_memory == 32768 else memory_indent}{current_program_memory} => x\"{nop_opcode[0]}{nop_opcode[1]}\",\t\t-- {UnrecognizedInstructionError.__name__}: Replaced with NOP\n"""  # -- #\t\t--
                current_program_memory += 1
                generated_rom_asm_str += f"""{memory_indent}{current_program_memory} => x\"{computer_mnemonic_dictionary.get("NOP")}{nop_opcode[3]}\",\n"""
                current_program_memory += 1
            else:
                pass

    @staticmethod
    def get_vhdl_irq_vectors() -> str:
        """
        Gets the str representation of the vhdl irq vectors (interrupts).
        :return: str representation of the vhdl irq vectors (interrupts).
        """
        return """        -- IRQ Vectors (Interrupts)
                           65534 =>  x"00",\t\t-- Reset Vector = xFFFE:xFFFF
                           65535 =>  x"80",\t\t--  Startup Value = x8000

                           others => x"00");"""

    @staticmethod
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

    @staticmethod
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

    @staticmethod
    def get_computer_mnemonic_dictionary(computer_name: str) -> {str, str}:
        """
        Gets the computer_mnemonic_dictionary for the computer with the name specified by computer_name.

        :param computer_name: str name of the computer to get the computer_mnemonic_dictionary for.
        :return: computer_mnemonic_dictionary for the computer with name computer_name.
        """
        if computer_name == "highroller":
            return ComputerMnemonicDictionary.highroller()
        elif computer_name == "lowlife":
            return ComputerMnemonicDictionary.lowlife()
        else:
            return ComputerMnemonicDictionary.baseline()

    @staticmethod
    def get_computer_name_list() -> list[str]:
        """
        Gets the names of each computer as a list.
        :return: str List of each computer.
        """
        return ["baseline", "highroller", "lowlife"]

    def generate_vhdl(self, *, detection: bool = False):
        self.remove_last_generated_vhd_files()
        if detection:
            # detection.detect() # TODO implement detection.detect() and call when detection is True
            pass
        disassembler: Disassembler = Disassembler()
        disassembler.disassemble(pique_bool=False)
        self.generate_vhdl_packages()
        self.generate_vhdl_memory()


def main() -> None:
    """
    calls ccs_disassembler.main()
    removes all files generated in last execution.
    generates the baseline, highroller and lowlife package files.
    generates the baseline, highroller and lowlife memory files.
    """
    vhdl_parser_generator: VHDLParserGenerator = VHDLParserGenerator()
    vhdl_parser_generator.generate_vhdl()
    package_zipper: PackageZipper = PackageZipper()
    package_zipper.zip_vhdl(zip_file_name="")


if __name__ == '__main__':
    main()

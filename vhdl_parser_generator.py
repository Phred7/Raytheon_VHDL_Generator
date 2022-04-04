"""
# VHDL Parser Generator
# For Raytheon Research Project and Interdisciplinary Capstone Project (2021-'22)
# Dr. Clem Izurieta
# Dr. Brock LaMeres
# Written by Blake Stanger, Walker Ward and Michael Heidal
"""
import re
import sys
import os
from copy import deepcopy
from typing import TextIO, List, Optional

from ccs_project import CCSProject
from package_zipper import PackageZipper
from computer_mnemonic_dictionary import ComputerMnemonicDictionary
from disassembler import Disassembler
from static_utilities import StaticUtilities


class UnrecognizedInstructionError(Exception):
    """A instruction in the generated disassembly was not recognized by the computer_mnemonic_dictionary"""
    pass


class VHDLParserGenerator:
    """
    Generates VHDL representation of an MSP430 binary.
    """

    def __init__(self, ccs_project: CCSProject, *, binary_file_name: str = "All_msp_operations", asm_file: bool = True) -> None:
        # TODO: resolve constructor using deprecated inputs.
        self.ccs_project: CCSProject = ccs_project
        self.program_memory_start: int = 32768
        self.binary_file_name: str = binary_file_name
        self.disassembler_output_file_name: str = "generated_disassembly.txt"
        self.disassembler_output_file_directory: str = rf"{StaticUtilities.project_root_directory()}\generated_disassembly"
        self.memory_indent: str = "\t\t\t\t\t\t   "
        self.nop_opcode: str = "0343"
        self.computer_name_list: List[str] = ["baseline", "highroller", "lowlife"]
        self.asm_file: bool = asm_file
        self.data_memory_in_disassembly: bool = False
        StaticUtilities.logger.debug(f"{VHDLParserGenerator.__name__} object initialized")

    @staticmethod
    def remove_last_generated_vhd_files() -> None:
        """
        Removes the files generated in the last run of main.
        - Removes all files with the vhd file extension
        :return: None.
        """
        directory: str = rf'{StaticUtilities.project_root_directory()}\generated_vhdl'
        for file in os.listdir(directory):
            if file.endswith(".vhd"):
                os.remove(f"{directory}\\{file}")
                StaticUtilities.logger.debug(f'Removed {file}')
            elif file == "generated_disassembly.txt":
                os.remove(f"{directory}\\{file}")
                StaticUtilities.logger.debug(f'Removed {file} from \\generated_vhdl\\')

    def generate_vhdl_packages(self) -> None:
        """
        Generates the vhdl package for each computer to its respective output file.
        :return: None.
        """
        for computer_name in self.computer_name_list:
            original_stdout: TextIO = sys.stdout
            with open(f"{StaticUtilities.project_root_directory()}\\generated_vhdl\\{computer_name}_package.vhd", "a+") as vhdl_package_file:
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
                StaticUtilities.logger.debug(f'Generated {computer_name}_package.vhd')

    def generate_vhdl_data_memory(self) -> None:
        """

        :return:
        """
        with open(f"{StaticUtilities.project_root_directory()}\\generated_vhdl\\data_memory.vhd", "a+") as vhdl_data_memory:
            with StaticUtilities.change_stdout_to_file(vhdl_data_memory):
                print(self.get_vhdl_data_memory_preamble(), end="")
                print(self.get_vhdl_data_memory_from_source(), end=f"{'' if not self.data_memory_in_disassembly else self.memory_indent}")
                print(self.get_vhdl_data_memory_end())
        StaticUtilities.logger.debug(f"Generated data_memory.vhd{'' if self.data_memory_in_disassembly else '. Note: No data memory found in binary'}")

    def get_vhdl_data_memory_from_source(self) -> str:
        """
        Generates the vhdl data memory as a str from disassembly. Data memory is the same between all computers.
         - Reads in from file specified by disassembler_output_file_name at the path disassembler_output_file_directory.
         - Searches for the .data DATA Section and defines it as the memory start location.
         - Converts the following constants into vhdl data memory until the end of the .data section.
        :return: str representation of vhdl data memory.
        """
        generated_vhdl_data_mem: str = ""
        with open(f"{self.disassembler_output_file_directory}\\{self.disassembler_output_file_name}", 'r') as disassembly_file:
            data_memory_start: int = 0
            disassembly_file = iter(disassembly_file)
            for line in disassembly_file:
                if not self.data_memory_in_disassembly and "DATA Section .data" in line:
                    data_section_string: List[str] = line.split(" ")
                    data_memory_start = int(data_section_string[-1], 16)
                    self.data_memory_in_disassembly = True
                elif self.data_memory_in_disassembly:
                    while line != "\n":
                        if "0x" in line:
                            data_line_string: List[str] = line.split(" ")
                            data_memory_location: int = int(data_line_string[0].strip(":"), 16)
                            data_line_string[-1] = data_line_string[-1].strip("\n")[2:]
                            if not int(data_line_string[-1], 16) == 0:
                                data_msb: str = data_line_string[-1][:2]
                                data_lsb: str = data_line_string[-1][2:]
                                generated_vhdl_data_mem += f"{self.memory_indent if data_memory_start != data_memory_location else ''}{data_memory_location} => x\"{data_lsb}\",\n"
                                generated_vhdl_data_mem += f"{self.memory_indent}{data_memory_location+1} => x\"{data_msb}\",\n"
                        line = next(disassembly_file)
                    return generated_vhdl_data_mem
                else:
                    continue
        return generated_vhdl_data_mem

    def generate_vhdl_memory(self) -> None:
        """
        Generates the vhdl memory for each computer to its respective output file.
         - generates memory libraries
         - generates memory entity
         - generates memory architecture
        :return: None.
        """
        for computer_name in self.computer_name_list:
            with open(f"{StaticUtilities.project_root_directory()}\\generated_vhdl\\{computer_name}_memory.vhd", "a+") as vhdl_memory_file:
                with StaticUtilities.change_stdout_to_file(vhdl_memory_file):
                    print(self.get_vhdl_memory_libraries())
                    print(self.get_vhdl_memory_entity(computer_name))
                    print(self.get_vhdl_memory_architecture(computer_name), end="")
            StaticUtilities.logger.debug(f'Generated {computer_name}_memory.vhd')

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
#         return f"""architecture {computer_name}_memory_arch of {computer_name}_memory is\n
# {self.get_vhdl_memory_rom_type()}{self.get_vhdl_memory_rom_asm(computer_name)}{self.get_vhdl_irq_vectors()}{self.get_vhdl_memory_rom_end()}\n
#     signal EN : std_logic;
#     {self.get_vhdl_local_en_process()}\n
#     {self.get_vhdl_memory_rom_process()}\n\n
# end architecture;"""
        return f"""architecture {computer_name}_memory_arch of {computer_name}_memory is\n
{self.get_vhdl_memory_rom_type()}{self.get_vhdl_memory_rom_with_interrupts(computer_name)}{self.get_vhdl_reset_vector()}{self.get_vhdl_memory_rom_end()}\n
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
        opcode_hex_chars[2] = computer_mnemonic_dictionary.get(line_str_list[14]) if computer_mnemonic_dictionary.get(line_str_list[14]) else opcode_hex_chars[2]
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
        generated_rom_asm_str: str = ""
        current_program_memory: int = self.program_memory_start
        computer_mnemonic_dictionary: {str, str} = self.get_computer_mnemonic_dictionary(computer_name)
        StaticUtilities.logger.debug(f"Reading in lines from {self.disassembler_output_file_name} for {computer_name}")
        for line in open(f"{self.disassembler_output_file_directory}\\{self.disassembler_output_file_name}", 'r').readlines():
            unmodified_line: str = line
            line_str_list: list[str] = line.split(' ')
            if len(line_str_list) >= 15 and not (line_str_list[14] in computer_mnemonic_dictionary.keys()):
                if f"{line_str_list[14]}.W" in computer_mnemonic_dictionary.keys():
                    line_str_list[14] = f"{line_str_list[14]}.W"
            if (len(line_str_list) >= 15 and line_str_list[14] in computer_mnemonic_dictionary.keys()) or len(
                    line_str_list) == 14:
                if computer_name != "baseline" and len(line_str_list) != 14:
                    line = self.translate_opcode_with_mnemonic_dictionary(line_str_list, computer_mnemonic_dictionary)
                generated_rom_asm_str += f"""{"" if current_program_memory == 32768 else self.memory_indent}{current_program_memory} => x\"{line[8]}{line[9]}\",\t\t-- {unmodified_line}"""  # -- #\t\t--
                current_program_memory += 1
                generated_rom_asm_str += f"""{self.memory_indent}{current_program_memory} => x\"{line[10]}{line[11]}\",\n"""
                current_program_memory += 1
                if "SR" in unmodified_line:
                    StaticUtilities.logger.debug(f"Reached SR in disassembly")
                    return generated_rom_asm_str
            elif current_program_memory > 32777 and len(line_str_list) >= 15 and not (
                    line_str_list[14] in computer_mnemonic_dictionary.keys()) and (":" not in line_str_list[14]):
                StaticUtilities.logger.error(
                    f"{UnrecognizedInstructionError.__name__}: The instruction {line_str_list[14]} in the generated disassembly was not recognized by the ComputerMnemonicDictionary verify silicon version is msp not mspx. Replaced with NOP")
                generated_rom_asm_str += f"""{"" if current_program_memory == 32768 else self.memory_indent}{current_program_memory} => x\"{self.nop_opcode[0]}{self.nop_opcode[1]}\",\t\t-- {UnrecognizedInstructionError.__name__}: Replaced with NOP\n"""  # -- #\t\t--
                current_program_memory += 1
                generated_rom_asm_str += f"""{self.memory_indent}{current_program_memory} => x\"{computer_mnemonic_dictionary.get("NOP")}{self.nop_opcode[3]}\",\n"""
                current_program_memory += 1
            else:
                pass

    def get_vhdl_memory_rom_with_interrupts(self, computer_name: str) -> str:
        generated_rom_asm_str: str = ""
        current_tag_name: str = ""
        first_instruction_reached: bool = False
        end_of_program_memory_reached: bool = False
        isr_trap_reached: bool = False
        isr_trap_end_reached: bool = False
        irq_reached: bool = False
        memory_address: int = 0
        computer_mnemonic_dictionary: {str, str} = self.get_computer_mnemonic_dictionary(computer_name)
        StaticUtilities.logger.debug(f"Reading in lines from {self.disassembler_output_file_name} for {computer_name}")

        with open(self.ccs_project.disassembly_file_path, 'r') as disassembly_file:
            disassembly_file = iter(disassembly_file)
            line: str = ""
            while not end_of_program_memory_reached:
                try:
                    if "TEXT Section .text:_isr," in line and not isr_trap_reached:
                        generated_rom_asm_str += f"""{self.memory_indent}-- ISR Trap\n"""
                        isr_trap_reached = True
                        line = next(disassembly_file)
                        line = next(disassembly_file)
                        line = next(disassembly_file)
                        StaticUtilities.logger.debug(f"Reached ISR Trap")

                    if not first_instruction_reached:
                        """Generates program memory in TEXT Section .text,"""
                        line = next(disassembly_file)

                        # gets the name of the main function or tag. TODO: into a function
                        split_line: List[str] = line.split(" ")
                        if len(split_line) == 15:
                            match = re.match("(\w+|\$):\\n", split_line[14], re.I)
                            if match is not None:
                                current_tag_name = match.string[:-2]

                        if self.ccs_project.c_project():
                            if "MOV.W   #0x5a80,&WDTCTL_L" in line:
                                first_instruction_reached = True
                        else:
                            if "MOV.W   #0x3000,SP" in line:
                                first_instruction_reached = True

                    elif isr_trap_end_reached:
                        """Generates interrupt vectors"""
                        if not irq_reached:
                            generated_rom_asm_str += f"""{self.memory_indent}-- IRQ Vectors (Interrupt Vectors)\n"""
                            irq_reached = True

                        while "DATA Section" not in line and "TEXT Section" not in line:
                            line = next(disassembly_file)

                        # Handles Data and Text sections that shouldn't be generated
                        if "DATA Section $" in line or "DATA Section .reset" in line or "TEXT Section" in line:
                            line = next(disassembly_file)
                            continue

                        line = next(disassembly_file)

                        memory_address = self.get_memory_address_from_line(line) if self.get_memory_address_from_line(
                            line) != 0 else memory_address

                        split_line: List[str] = line.split(" ")
                        tag_name: str = re.match("(\w+|\$):\\n", split_line[14], re.I).string[:-2]
                        split_line = str(next(disassembly_file)).split(" ")
                        vector: str = re.search("(\w+|\d+)", split_line[14], re.I).string[1:-2]
                        split_line = str(next(disassembly_file)).split(" ")
                        name: str = re.match("(\w+|\$):\\n", split_line[14], re.I).string[:-2]

                        translated_line: str = deepcopy(next(disassembly_file))
                        if computer_name != "baseline" and len(translated_line.split(" ")) != 14:
                            translated_line = self.translate_opcode_with_mnemonic_dictionary(translated_line.split(" "),
                                                                                             computer_mnemonic_dictionary)
                        tab_char: str = "\t"
                        generated_rom_asm_str += f"""{self.memory_indent}{memory_address} => x\"{translated_line[10]}{translated_line[11]}\",\t\t-- {translated_line[:translated_line.index(".")].replace(" ", "").replace(tab_char, "")} {name} {tag_name} {vector}\n"""
                        generated_rom_asm_str += f"""{self.memory_indent}{memory_address+1} => x\"{translated_line[8]}{translated_line[9]}\",\n"""

                        # generated_rom_asm_str += f"""{"" if memory_address == self.program_memory_start else self.memory_indent}{memory_address} => x\"{translated_line[8]}{translated_line[9]}\",\t\t-- {line}"""  # -- #\t\t--
                        # generated_rom_asm_str += f"""{self.memory_indent}{memory_address + 1} => x\"{translated_line[10]}{translated_line[11]}\",\n"""

                        line = next(disassembly_file)
                        continue

                    else:
                        """Generates program memory in TEXT Section .text,"""
                        if len(line) < 2:
                            line = next(disassembly_file)
                            continue

                        memory_address = self.get_memory_address_from_line(line) if self.get_memory_address_from_line(
                            line) != 0 else memory_address

                        line_str_list: List[str] = line.split(" ")

                        # gets the name of the current tag of function and adds it as a comment.
                        if len(line_str_list) == 15:
                            match = re.match("(\w+|\$):\\n", line_str_list[14], re.I)
                            if match is not None:
                                current_tag_name = match.string[:-2]
                                generated_rom_asm_str += f"""{self.memory_indent}-- Begin: {current_tag_name}\n"""

                        if len(line_str_list) >= 15 and not (line_str_list[14] in computer_mnemonic_dictionary.keys()):
                            if f"{line_str_list[14]}.W" in computer_mnemonic_dictionary.keys():
                                line_str_list[14] = f"{line_str_list[14]}.W"
                        if (len(line_str_list) >= 15 and line_str_list[
                            14] in computer_mnemonic_dictionary.keys()) or len(
                                line_str_list) == 14:
                            translated_line: str = deepcopy(line)
                            if computer_name != "baseline" and len(line_str_list) != 14:
                                translated_line = self.translate_opcode_with_mnemonic_dictionary(line_str_list,
                                                                                                 computer_mnemonic_dictionary)
                            generated_rom_asm_str += f"""{"" if memory_address == self.program_memory_start else self.memory_indent}{memory_address} => x\"{translated_line[8]}{translated_line[9]}\",\t\t-- {line}"""  # -- #\t\t--
                            generated_rom_asm_str += f"""{self.memory_indent}{memory_address + 1} => x\"{translated_line[10]}{translated_line[11]}\",\n"""

                            if isr_trap_reached and not isr_trap_end_reached and "NOP" in line:
                                isr_trap_end_reached = True
                                StaticUtilities.logger.debug("Reached end of ISR Trap")

                        elif memory_address >= self.program_memory_start and len(line_str_list) >= 15 and not (
                                line_str_list[14] in computer_mnemonic_dictionary.keys()) and (
                                ":" not in line_str_list[14]):
                            StaticUtilities.logger.error(
                                f"{UnrecognizedInstructionError.__name__}: The instruction {line_str_list[14]} in the generated disassembly was not recognized by the ComputerMnemonicDictionary verify silicon version is msp not mspx. Replaced with NOP")
                            generated_rom_asm_str += f"""{"" if memory_address == self.program_memory_start else self.memory_indent}{memory_address} => x\"{self.nop_opcode[0]}{self.nop_opcode[1]}\",\t\t-- {UnrecognizedInstructionError.__name__}: Replaced with NOP\n"""  # -- #\t\t--
                            generated_rom_asm_str += f"""{self.memory_indent}{memory_address + 1} => x\"{computer_mnemonic_dictionary.get("NOP")}{self.nop_opcode[3]}\",\n"""
                        line = next(disassembly_file)

                except StopIteration:
                    end_of_program_memory_reached = True

        return generated_rom_asm_str

    @staticmethod
    def get_vhdl_memory_rom_end() -> str:
        """
        Gets the str representation of the end of program memory.
        """
        return"""

                           others => x"00");"""

    @staticmethod
    def get_vhdl_reset_vector() -> str:
        """
        Gets the str representation of the vhdl reset vectors (interrupts).
        :return: str representation of the vhdl reset vectors (interrupts).
        """
        return """
                           65534 =>  x"00",\t\t-- Reset Vector = xFFFE:xFFFF
                           65535 =>  x"80",\t\t--  Startup Value = x8000"""

    @staticmethod
    def get_interrupt_vectors() -> str:
        """
        Gets the string representation of all interrupt vectors for the MSP430FR2355.
        """
        return """
        """

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
    def get_vhdl_data_memory_preamble() -> str:
        """
        Gets the str representation of the vhdl data memory prior to the constant declarations.
        :return: str representation of the vhdl data memory prior to the constant declarations.
        """
        return """library IEEE;
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
    signal RW : rw_type:=("""

    @staticmethod
    def get_vhdl_data_memory_end() -> str:
        """
        Gets the str representation of the vhdl data memory following the constant declarations.
        :return: str representation of the vhdl data memory following the constant declarations.
        """
        return """others=>x"00");  -- assigned an initial value to the data memory

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

end architecture;"""

    @staticmethod
    def get_memory_address_from_line(line: str) -> int:
        if line[0] == "0":
            return int(line[:line.index(":")], 16)
        return 0

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

    def generate_vhdl(self, *, detection: bool = False):
        """
        Executes other methods in the correct order to generate VHDL for generated disassembly.
        :param detection: Bool representation of whether to attempt to detect malware and vulnerabilities within a file.
        :return: None.
        """
        self.remove_last_generated_vhd_files()
        StaticUtilities.logger.debug(f"Detection {'enabled' if detection else 'disabled'} while generating vhdl.")
        # if detection:
        #     # Ex: Detection(path=r"C:\Users\wward\Documents\GitHub\Raytheon_VHDL_Generator\ccs_workspace\test_generated_ASM", source_file="test_generated_ASM.asm")
        #     _detection: Detection = Detection(path=rf"{StaticUtilities.project_root_directory()}\ccs_workspace\{self.binary_file_name}", source_file=f"{self.binary_file_name}.{'asm' if self.asm_file else 'c'}", pique_bin_bool=False, suppress_pique_bin_logs=False)
        #     _detection.detect()
        disassembler: Disassembler = Disassembler(ccs_project=self.ccs_project)
        disassembler.disassemble()
        self.generate_vhdl_packages()
        self.generate_vhdl_data_memory()
        self.generate_vhdl_memory()


def main() -> None:
    """
    calls ccs_disassembler.main()
    removes all files generated in last execution.
    generates the baseline, highroller and lowlife package files.
    generates the baseline, highroller and lowlife memory files.
    generates the data_memory file.
    """
    ccs_project: CCSProject = CCSProject(project_name="test_C", source_file="test_C.c", path=f"{StaticUtilities.project_root_directory()}//ccs_workspace//test_C")
    vhdl_parser_generator: VHDLParserGenerator = VHDLParserGenerator(ccs_project=ccs_project)
    vhdl_parser_generator.generate_vhdl()
    package_zipper: PackageZipper = PackageZipper()
    package_zipper.zip_vhdl(zip_file_name="interrupt_demo_04_04_2022")


if __name__ == '__main__':
    main()

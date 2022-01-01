###############################
# Disassembly Parser Generator
# For Raytheon Research Project and Interdisciplinary Capstone Project (2021-'22)
# Dr. Clem Izurieta
# Dr. Brock LaMeres
# Written by Walker Ward
###############################
import datetime
import os
import shutil
import sys
from copy import deepcopy
from typing import List

from static_utilities import StaticUtilities


class DisassemblyParserGenerator:
    """
    Class to generate ASM src from a disassembly file.
    """

    def __init__(self, *, disassembly_file: str = "generated_disassembly.txt", disassembly_directory: str = rf"generated_disassembly", assembly_file: str = "generated_source.asm", assembly_directory: str = rf"generated_assembly") -> None:
        self.generated_assembly_directory: str = assembly_directory
        self.generated_disassembly_directory: str = disassembly_directory
        self.generated_disassembly_file: str = disassembly_file
        self.generated_assembly_file: str = assembly_file
        self.ccs_project_path: str = ""
        self.ccs_project_name: str = ""
        self.ccs_project_source_file_name: str = ""
        StaticUtilities.logger.debug(f"{DisassemblyParserGenerator.__name__} object initialized")

    def set_ccs_project_details(self, ccs_project_path: str, ccs_project_name: str, ccs_project_source_file_name: str = "main.asm") -> None:
        """
        Sets fields required for replacing generated assembly with source of an existing project.
        :param ccs_project_path: str path to an existing ASM CCS project.
        :param ccs_project_name: str name of an existing ASM CCS project corresponding to the provided path.
        :param ccs_project_source_file_name: str name of an existing ASM source file within the CCS project specified by the provided path.
        :return: None.
        """
        self.ccs_project_path = ccs_project_path
        self.ccs_project_name = ccs_project_name
        self.ccs_project_source_file_name = ccs_project_source_file_name

    def generate_source_from_disassembly(self, *, replace_source_in_ccs_project: bool = False) -> None:
        """
        Generates a source file in MSP Assembly derived from this generated_disassembly_file.
        :return: None.
        """
        # this section removes the last generated assembly file if it exists.
        if os.path.exists(rf"{self.generated_assembly_directory}\{self.generated_assembly_file}"):
            os.remove(rf"{self.generated_assembly_directory}\{self.generated_assembly_file}")
            StaticUtilities.logger.info(rf"Removed {self.generated_assembly_directory}\{self.generated_assembly_file}")
        # the following generates the asm source file from the disassembly file.
        with open(rf"{os.getcwd()}\{self.generated_assembly_directory}\{self.generated_assembly_file}", "a+") as generated_src:
            with StaticUtilities.change_stdout_to_file(generated_src):
                print(self.msp_ccs_assembler_template_headers())  # template headers
                print(self.parse_disassembly())  # source
                print(self.msp_ccs_template_stack_pointer_definition())  # template stack pointer definition.
                print(self.msp_ccs_template_interrupt_vectors())  # template interrupt vectors.
            StaticUtilities.logger.info(f"Generated ASM src for {self.generated_disassembly_file} at {self.generated_assembly_directory}\\{self.generated_assembly_file}")
        if replace_source_in_ccs_project:
            self._replace_source_in_ccs_project_with_generated_source()

    def parse_disassembly(self) -> str:
        """
        Generates a string representing this generated_disassembly_file in the MSP assembly language.
        :return: string representation of this generated_disassembly_file.
        """
        generated_src: str = ""
        StaticUtilities.logger.debug(f"Reading in lines from {self.generated_disassembly_file}")
        with open(rf"{self.generated_disassembly_directory}\{self.generated_disassembly_file}", 'r') as disassembly:
            lines: List[str] = disassembly.readlines()

            # removes lines prior to the first instruction TODO: make this use a dynamic mem. address rather than 008000... grab from TEXT section?
            while not lines[0].startswith("008000:"):
                del lines[0]

            # if the disassembly declares RESET skip TODO: make this use a dynamic mem. address rather than 008004 and 008000?
            if lines[0] == "008000:              RESET:\n":
                while not lines[0].startswith("008004:"):
                    del lines[0]

            # if the disassembly declares StopWDT skip TODO: make this use a dynamic mem. address rather than 00800a and 008004?
            if lines[0] == "008004:              StopWDT:\n":
                while not lines[0].startswith("00800a:"):
                    del lines[0]

            # removes all numbers before instructions until the ISR trap. Splits lines into instructions and text and data lists
            index: int = 0  # do not enumerate for loop. Length of iterable changes inside loop
            while not lines[index].startswith("TEXT Section .text:_isr"):
                # parses each line and adds it to the asm string
                lines[index] = lines[index][21:]
                if deepcopy(lines[index]).strip(" ") == '\n' or lines[index].strip(" ").startswith(".text:"):
                    del lines[index]
                    continue
                lines[index] = f"{lines[index][:10].lower()}{lines[index][10:]}"
                generated_src += f"{lines[index]}"
                index += 1

            StaticUtilities.logger.debug(f"Generated Instructions")

            text_and_data_lines: List[str] = lines[index:]
            data_section: List[str] = deepcopy(text_and_data_lines)

            # removes all lines in preceding the data section that is not DATA
            while not data_section[0].startswith("DATA Section .data,"):
                del data_section[0]
            del data_section[0]

            generated_src += f"\n{self.msp_ccs_template_memory_allocation()}"

            index: int = 0
            while not data_section[index+1].startswith("DATA Section"):
                data_section[index] = data_section[index][21:]   # gets the next variable
                data_section_variable_str: str = data_section[index].strip("\n")
                # check to see if this variable only has one word worth of data. If not jump to else.
                if not deepcopy(data_section[index+2][21:].strip().startswith(".")):
                    data_declaration: List[str] = data_section[index+1][21:].lstrip().split(" ")
                    directive: str = data_declaration[0]
                    data: str = data_declaration[1].strip("\n")
                    data_section_variable_str += f"\t\t{directive} {data}"
                    index += 2
                else:
                    all_zeros: bool = True
                    data_values: List[str] = []

                    # determine the number of words present and put all the values in data_values List
                    multi_word_index_offset: int = 1  # accounts for variable name
                    while deepcopy(data_section[index+multi_word_index_offset][21:].strip().startswith(".")):
                        data_section[index + multi_word_index_offset] = data_section[index + multi_word_index_offset][21:].lstrip()
                        if not deepcopy(data_section[index+multi_word_index_offset]).startswith(".word 0x0000"):
                            all_zeros = False
                        data_values.append(data_section[index+multi_word_index_offset].split(" ")[1].strip("\n"))
                        multi_word_index_offset += 1

                    # if all data is zeros .space can be used. Otherwise implement .short
                    data_section_variable_str += f"\t\t"
                    if all_zeros:
                        data_section_variable_str += f".space {(multi_word_index_offset - 1) * 2}"
                    else:
                        StaticUtilities.logger.warning(f"Memory Allocation for .byte, .short not implemented in disassembly_parser_generator")
                    index += multi_word_index_offset

                data_section_variable_str += "\n"
                generated_src += data_section_variable_str

            StaticUtilities.logger.debug(f"Generated Data Memory")

            StaticUtilities.logger.info(f"Generated the Instructions and Memory Allocation sections.")
            StaticUtilities.logger.warning("ISR's and some data allocation not implemented")
        return generated_src

    def _replace_source_in_ccs_project_with_generated_source(self) -> None:
        """
        Replaces the ASM source file in an existing CCS project specified by the instance fields ccs_project_path, ccs_project_name, ccs_project_source_file_name with the file generated by this Class.
        :return: None.
        """
        if self.ccs_project_path == "" or self.ccs_project_name == "" or self.ccs_project_source_file_name == "":
            empty_strings: str = ""
            empty_strings += "'" + f"{self.ccs_project_path=}".split('.')[1].split('=')[0] + "' " if self.ccs_project_path == '' else ''
            empty_strings += "'" + f"{self.ccs_project_name=}".split('.')[1].split('=')[0] + "' " if self.ccs_project_name == '' else ''
            empty_strings += "'" + f"{self.ccs_project_source_file_name=}".split('.')[1].split('=')[0] + "'" if self.ccs_project_source_file_name == '' else ''
            StaticUtilities.logger.error(
                f"The following were set to the empty string when attempting to replace the source file in a ccs project with a generated source file: {empty_strings} in an instance of {self.__class__.__name__}. Call {self.__class__.__name__}.set_ccs_project_details() to rectify or set replace_source_in_ccs_project to false when calling {self.__class__.__name__}.generate_source_from_disassembly().")
            return sys.exit(1)
        StaticUtilities.str_should_contain_substr(self.ccs_project_source_file_name, ".asm")
        StaticUtilities.file_should_exist(file_directory=self.ccs_project_path, file=self.ccs_project_source_file_name)
        shutil.copy(rf"{os.getcwd()}\{self.generated_assembly_directory}\{self.generated_assembly_file}", rf"{self.ccs_project_path}")
        with StaticUtilities.change_dir(self.ccs_project_path):
            os.remove(f"{self.ccs_project_source_file_name}")
            StaticUtilities.file_should_not_exist(self.ccs_project_path, self.ccs_project_source_file_name)
            os.rename(self.generated_assembly_file, self.ccs_project_source_file_name)
            StaticUtilities.file_should_exist(file_directory=self.ccs_project_path, file=self.ccs_project_source_file_name)
        StaticUtilities.logger.info(f"Source file in ASM CCS project '{self.ccs_project_name}' was replaced with the generated assembly file '{self.generated_assembly_file}'")

    @staticmethod
    def msp_ccs_assembler_template_headers() -> str:
        """
        Gets the str representation of the CCS headers for the MSP with modification.
        :return: str representation of the CCS headers for the MSP.
        """
        return f""";-------------------------------------------------------------------------------
; This source automatically generated by python class {DisassemblyParserGenerator.__name__} on {datetime.datetime.now().date()} at {datetime.datetime.now().time()} {datetime.datetime.now(datetime.timezone.utc).astimezone().tzinfo}
; For Raytheon Research Project and Interdisciplinary Capstone Project (2021-'22)
; Dr. Clem Izurieta
; Dr. Brock LaMeres
; Written by Michael Heidal and Walker Ward
;
;
;-------------------------------------------------------------------------------
            .cdecls C,LIST,"msp430.h"       ; Include device header file
            
;-------------------------------------------------------------------------------
            .def    RESET                   ; Export program entry-point to
                                            ; make it known to linker.
;-------------------------------------------------------------------------------
            .text                           ; Assemble into program memory.
            .retain                         ; Override ELF conditional linking
                                            ; and retain current section.
            .retainrefs                     ; And retain any sections that have
                                            ; references to current section.

;-------------------------------------------------------------------------------
RESET       mov.w   #__STACK_END,SP         ; Initialize stackpointer
StopWDT     mov.w   #WDTPW|WDTHOLD,&WDTCTL  ; Stop watchdog timer


;-------------------------------------------------------------------------------
; Main loop here
;-------------------------------------------------------------------------------"""

    @staticmethod
    def msp_ccs_template_stack_pointer_definition() -> str:
        """
        Gets the str representation of the ASM CCS stack pointer definition for the MSP.
        :return: str representation of the ASM CCS stack pointer definition for the MSP.
        """
        return """;-------------------------------------------------------------------------------
; Stack Pointer definition
;-------------------------------------------------------------------------------
            .global __STACK_END
            .sect   .stack\n"""

    @staticmethod
    def msp_ccs_template_interrupt_vectors() -> str:
        """
        Gets the str representation of the interrupt vectors for the MSP in ASM.
        :return: str representation of the interrupt vectors for the MSP in ASM.
        """
        return """;-------------------------------------------------------------------------------
; Interrupt Vectors
;-------------------------------------------------------------------------------
            .sect   ".reset"                ; MSP430 RESET Vector
            .short  RESET\n"""

    @staticmethod
    def msp_ccs_template_memory_allocation() -> str:
        """
        Gets the str representation of the auto generated memory allocation variables for the MSP in ASM.
        :return: str representation of the auto generated memory allocation variables for the MSP in ASM.
        """
        return """;-------------------------------------------------------------------------------
; Memory Allocation
;-------------------------------------------------------------------------------

            .data									; allocate variables in data memory
            .retain									; keep these statements even if not used\n"""


if __name__ == "__main__":
    dpg: DisassemblyParserGenerator = DisassemblyParserGenerator(disassembly_file="all_ops.txt")
    dpg.set_ccs_project_details(ccs_project_path=r"C:\Users\wward\Documents\GitHub\Raytheon_VHDL_Generator\ccs_workspace\test_generated_ASM", ccs_project_name="test_generated_ASM", ccs_project_source_file_name="test_asm_generation.asm")
    # functional args: ccs_project_path=r"C:\Users\wward\Documents\GitHub\Raytheon_VHDL_Generator\ccs_workspace\test_generated_ASM", ccs_project_name="test_generated_ASM", ccs_project_source_file_name="test_asm_generation.asm"
    dpg.generate_source_from_disassembly(replace_source_in_ccs_project=True)

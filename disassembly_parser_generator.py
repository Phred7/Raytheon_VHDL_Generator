###############################
# Disassembly Parser Generator
# For Raytheon Research Project and Interdisciplinary Capstone Project (2021-'22)
# Dr. Clem Izurieta
# Dr. Brock LaMeres
# Written by Walker Ward
###############################
import os
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

    def generate_source_from_disassembly(self) -> None:
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
                data_section[index] = data_section[index][21:]   #gets the next variable
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

            StaticUtilities.logger.info(f"Generated the Instructions and Memory Allocation sections. ISR's not implemented")
        return generated_src

    @staticmethod
    def msp_ccs_assembler_template_headers() -> str:
        return """;-------------------------------------------------------------------------------
; MSP430 Assembler Code Template for use with TI Code Composer Studio
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
        return """;-------------------------------------------------------------------------------
; Stack Pointer definition
;-------------------------------------------------------------------------------
            .global __STACK_END
            .sect   .stack\n"""

    @staticmethod
    def msp_ccs_template_interrupt_vectors() -> str:
        return """;-------------------------------------------------------------------------------
; Interrupt Vectors
;-------------------------------------------------------------------------------
            .sect   ".reset"                ; MSP430 RESET Vector
            .short  RESET\n"""

    @staticmethod
    def msp_ccs_template_memory_allocation() -> str:
        return """;-------------------------------------------------------------------------------
; Memory Allocation
;-------------------------------------------------------------------------------

            .data									; allocate variables in data memory
            .retain									; keep these statements even if not used\n"""


if __name__ == "__main__":
    dpg: DisassemblyParserGenerator = DisassemblyParserGenerator(disassembly_file="all_ops.txt")
    dpg.generate_source_from_disassembly()

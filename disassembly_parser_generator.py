###############################
# Disassembly Parser Generator
# For Raytheon Research Project and Interdisciplinary Capstone Project (2021-'22)
# Dr. Clem Izurieta
# Dr. Brock LaMeres
# Written by Walker Ward
###############################
import logging
import os
import sys
from contextlib import contextmanager
from copy import deepcopy
from logging import Logger
from typing import TextIO, List


class DisassemblyParserGenerator:

    def __init__(self) -> None:
        logging.basicConfig(level=logging.INFO, format='%(asctime)s - %(levelname)s - %(message)s')
        self.logger: Logger = logging.getLogger(__name__)
        self.generated_assembly_directory: str = rf"generated_assembly"
        self.generated_disassembly_directory: str = rf"generated_disassembly"
        self.generated_disassembly_file: str = "generated_disassembly.txt"
        self.generated_assembly_file: str = "generated_source.asm"

    @staticmethod
    @contextmanager
    def change_stdout_to_file(new_stdout: TextIO) -> None:
        original_stdout: TextIO = sys.stdout
        try:
            original_stdout = sys.stdout
            sys.stdout = new_stdout
            yield
        finally:
            sys.stdout = original_stdout

    def generate_source_from_disassembly(self) -> None:
        if os.path.exists(rf"{self.generated_assembly_directory}\{self.generated_assembly_file}"):
            os.remove(rf"{self.generated_assembly_directory}\{self.generated_assembly_file}")
            self.logger.info(rf"Removed {self.generated_assembly_directory}\{self.generated_assembly_file}")

        with open(rf"{os.getcwd()}\{self.generated_assembly_directory}\{self.generated_assembly_file}", "a+") as generated_src:
            with self.change_stdout_to_file(generated_src):
                print(self.msp_ccs_assembler_template_headers())

                # gen src here
                print(self.parse_disassembly())

                print(self.msp_ccs_template_stack_pointer_definition())
                print(self.msp_ccs_template_interrupt_vectors())

                # gen other irq's here?

            self.logger.info(f"Generated ASM src for {self.generated_disassembly_file}")

    def parse_disassembly(self) -> str:
        generated_src: str = ""
        self.logger.info(f"Reading in lines from {self.generated_disassembly_file}")
        with open(rf"{self.generated_disassembly_directory}\{self.generated_disassembly_file}", 'r') as disassembly:
            lines: List[str] = disassembly.readlines()

            # removes lines prior to the first instruction
            while not lines[0].startswith("008000:"):
                del lines[0]
                continue

            # removes all numbers before instructions until the ISR trap. Splits lines into instructions and text and data lists
            text_and_data_lines: List[str] = []
            index: int = -1  # do not enumerate for loop. Length of iterable changes inside loop
            for line in lines:
                index += 1
                if line.startswith("TEXT Section .text:_isr"):
                    text_and_data_lines = lines[index:]
                    lines = lines[:index]
                    break
                # parses each line and adds it to the asm string
                lines[index] = line[21:]
                if deepcopy(lines[index]).strip(" ") == '\n' or lines[index].strip(" ").startswith(".text:"):
                    del lines[index]
                    index -= 1
                    continue
                generated_src += f"{line[21:]}\n"

            self.logger.info(f"Parsing and Generating the Text and Data section is not implemented")
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


class Assembler:
    # may be replaced with method call in DisassemblyParserGenerator
    assembler_directory: str = r'C:\ti\ccs1040\ccs\tools\compiler\ti-cgt-msp430_20.2.5.LTS\bin'
    assembler_executable: str = r'asm430.exe'  # r'asm430.exe' Tested: lc430, lnk430


class Compiler:
    # may be replaced with method call in DisassemblyParserGenerator
    pass


class Parser:
    # may be replaced with method call in DisassemblyParserGenerator
    pass


if __name__ == "__main__":
    dpg: DisassemblyParserGenerator = DisassemblyParserGenerator()
    dpg.generate_source_from_disassembly()

###############################
# Disassembly Parser Generator
# For Raytheon Research Project and Interdisciplinary Capstone Project (2021-'22)
# Dr. Clem Izurieta
# Dr. Brock LaMeres
# Written by Walker Ward
###############################
import logging
import os
from contextlib import contextmanager
from logging import Logger


class DisassemblyParserGenerator:
    logging.basicConfig(level=logging.INFO, format='%(asctime)s - %(levelname)s - %(message)s')
    logger: Logger = logging.getLogger(__name__)


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


###############################
# Instrumentation
# For Raytheon Research Project and Interdisciplinary Capstone Project (2021-'22)
# Dr. Clem Izurieta
# Dr. Brock LaMeres
# Written by Walker Ward
###############################
import logging
import os
from contextlib import contextmanager
from logging import Logger


class Assembler:
    logging.basicConfig(level=logging.INFO, format='%(asctime)s - %(levelname)s - %(message)s')
    logger: Logger = logging.getLogger(__name__)
    assembler_directory: str = r'C:\ti\ccs1040\ccs\tools\compiler\ti-cgt-msp430_20.2.5.LTS\bin'
    assembler_executable: str = r'asm430.exe'  # r'asm430.exe' Tested: lc430, lnk430
from instrumentation_strategy import InstrumentationStrategy


class Instrumentation:

    def __init__(self, instrumentation_strategy: InstrumentationStrategy):
        self._instrumentation_strategy = instrumentation_strategy

    @property
    def instrumentation_strategy(self) -> InstrumentationStrategy:
        return self._instrumentation_strategy

    @instrumentation_strategy.setter
    def instrumentation_strategy(self, instrumentation_strategy: InstrumentationStrategy) -> None:
        self._instrumentation_strategy = instrumentation_strategy

    def runner(self) -> None:
        results = self._instrumentation_strategy.instrument("")


###############################
# VHDL Memory Parser
# For Raytheon Research Project
# Dr. Clem Izurieta
# Dr. Brock LaMeres
# Written by Blake Stanger and Walker Ward
###############################

import sys

debug: bool = True

def main() -> None:
    """
    TODO: add cleanup for last run
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
    """
    pass


if __name__ == '__main__':
    main()

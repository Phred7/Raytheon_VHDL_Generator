# Raytheon_VHDL_Generator
## Overview/Description
Problem: 
Motivation/Why create: Hardware diversity to mitigate attacks 
What it actually does: 
Geneates 3 unique vhdl rom memory files from a c or asm's binary for 3 unique MSP430's simulated on 3 FPGA's
### ccs_disasembler.py
Gets a binary generated by CCS
Runs pique_bin to check for threats inserted in the binary
Implements dis430.exe (provided by CCS) to generate a asm file based on the binary
### vhdl_memory_parser.py
Gets the asm file generated by ccs_disasembler.py
Generates 3 unique rom_memory files in vhdl that contain the program memory specifed by the asm file
Each MSP430 implements an opcode unique to itself for each mnemonic
### Challenges
### Future features
## Environments
### Pycharm
### Code Composer Studio (CCS)
## Dependencies
## Helpful Links

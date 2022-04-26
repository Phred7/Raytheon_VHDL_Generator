/*
For Raytheon VHDL Generator
04/25/2022
yara64.exe -c -w C:\Users\wward\Documents\GitHub\Raytheon_VHDL_Generator\yara\rules\index.yar C:\Users\wward\Documents\GitHub\Raytheon_VHDL_Generator\yara\rules\yara_test_malware.txt
*/
include "yara_test.yar"
include "buffer_overflow_attack_detection_c.yar"
include "int_overflow_attack_detection_c.yar"
include "string_format_attack_detection_c.yar"
include "./rules/rules-master/index.yar"
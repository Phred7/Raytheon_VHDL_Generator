rule Buffer_Overflow_Attack_C {
	meta:
		author = "Phred7"
        data = "04/25/2022"
        description = "Attempts to detect buffer overflow attacks in C source files."
	
	strings:
		$buffer="xx"
	condition:
		$buffer
}
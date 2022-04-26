rule Int_Overflow_Attack_C {
	meta:
		author = "Phred7"
        data = "04/25/2022"
        description = "Attempts to detect integer overflow attacks in C source files."
	
	strings:
		$integer="int"
	condition:
		$integer
}
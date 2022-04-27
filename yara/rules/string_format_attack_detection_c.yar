rule String_Format_Attack_C {
	meta:
		author = "Phred7"
        data = "04/25/2022"
        description = "Attempts to detect string format attacks in C source files."
	
	strings:
		$forced_hex="%08x."
	condition:
		#forced_hex > 20
}
rule String_Format_Attack_C_Regex {
	meta:
		author = "Phred7"
        data = "04/26/2022"
        description = "Attempts to detect string format attacks in C source files by implementing a regex."

	strings:
		$forced_hex_regex=/(%08x\.){800,}/
	condition:
		#forced_hex_regex
}
rule Yara_Test {
    meta:
        author = "Phred7"
        data = "04/10/2022"
        description = "This is a test of yara rules."

    strings:
        $a="xyz" nocase
        $b="abc" nocase

    condition:
        $a or $b
}
class ComputerMnemonicDictionary:
    """ 82 instructions
        RRC.W   xx10
        RRC.B   xx10
        SWPB    xx10
        RRA.W   xx11
        RRA.B   xx11
        SXT     xx11
        PUSH.W  xx12
        PUSH.B  xx12
        RETI    xx12
        CALL    B012?
        JNE     FE23 or 0020
        JNZ     FE23 or 0020
        JEQ     FE27 or 0024
        JZ      FE27 or 0024
        JLO     FE2B or 0028
        JNC     FE2B or 0028
        JC      FE2F or 002C
        JHS     FE2F or 002C
        JN      FE33 or 0030
        JGE     FE37 or 0034
        JL      FD3B or 0038
        JMP     FD3F or 003C
        CLR.W   xx43
        CLR.B   xx4x
        BR      xx4x
        MOV.W   B040 or 3440
        MOV.B   xx4x
        POP.W   xx4x
        POP.B   xx4x
        RET     xx4x
        NOP     0343
        INC.W   xx53
        INC.B   xx5x
        INCD.W  xx53
        INCD.B  xx5x
        ADD.W   xx5x
        ADD.B   xx5x
        RLA.W   xx5x
        RLA.B   xx5x
        ADDC.W  xx6x
        ADDC.B  xx6x
        ADC.W   xx6x
        ADC.B   xx6x
        RLC.W   xx6x
        RLC.B   xx6x
        SUBC.W  xx7x
        SUBC.B  xx7x
        SBC.W   xx7x
        SBC.B   xx7x
        DEC.W   xx8x
        DEC.B   xx8x
        DECD.W  xx8x
        DECD.B  xx8x
        SUB.W   xx8x
        SUB.B   xx8x
        CMP.W   xx9x
        CMP.B   xx9x
        TST.W   xx9x
        TST.B   xx9x
        DADD.W  xxAx
        DADD.B  xxAx
        DADC.W  xxAx
        DADC.B  xxAx
        BIT.W   xxBx
        BIT.B   xxBx
        CLRC    12C3
        CLRN    22C2
        CLRZ    22C3
        BIC.W   xxCx
        BIC.B   xxCx
        DINT    32C2
        EINT    32D2
        BIS.W   xxDx
        BIS.B   xxDx
        SETC    12D3
        SETN    22D2
        SETZ    22D3
        XOR.W   xxEx
        XOR.B   xxEx
        INV.W   xxEx
        INV.B   xxEx
        AND.W   xxFx
        AND.B   xxFx
    """

    @staticmethod
    def baseline() -> {str, str}:  # 82 instructions
        return {"RRC.W": "1",
                "RRC.B": "1",
                "SWPB": "1",
                "RRA.W": "1",
                "RRA.B": "1",
                "SXT": "1",
                "PUSH.W": "1",
                "PUSH.B": "1",
                "RETI": "1",
                "CALL": "1",
                "JNE": "2",
                "JNZ": "2",
                "JEQ": "2",
                "JZ": "2",
                "JLO": "2",
                "JNC": "2",
                "JC": "2",
                "JHS": "2",
                "JN": "3",
                "JGE": "3",
                "JL": "3",
                "JMP": "3",
                "CLR.W": "4",
                "CLR.B": "4",
                "BR": "4",
                "MOV.W": "4",
                "MOV.B": "4",
                "POP.W": "4",
                "POP.B": "4",
                "RET": "4",
                "NOP": "4",
                "INC.W": "5",
                "INC.B": "5",
                "INCD.W": "5",
                "INCD.B": "5",
                "ADD.W": "5",
                "ADD.B": "5",
                "RLA.W": "5",
                "RLA.B": "5",
                "ADDC.W": "6",
                "ADDC.B": "6",
                "ADC.W": "6",
                "ADC.B": "6",
                "RLC.W": "6",
                "RLC.B": "6",
                "SUBC.W": "7",
                "SUBC.B": "7",
                "SBC.W": "7",
                "SBC.B": "7",
                "DEC.W": "8",
                "DEC.B": "8",
                "DECD.W": "8",
                "DECD.B": "8",
                "SUB.W": "8",
                "SUB.B": "8",
                "CMP.W": "9",
                "CMP.B": "9",
                "TST.W": "9",
                "TST.B": "9",
                "DADD.W": "A",
                "DADD.B": "A",
                "DADC.W": "A",
                "DADC.B": "A",
                "BIT.W": "B",
                "BIT.B": "B",
                "CLRC": "C",
                "CLRN": "C",
                "CLRZ": "C",
                "BIC.W": "C",
                "BIC.B": "C",
                "DINT": "C",
                "EINT": "D",
                "BIS.W": "D",
                "BIS.B": "D",
                "SETC": "D",
                "SETN": "D",
                "SETZ": "D",
                "XOR.W": "E",
                "XOR.B": "E",
                "INV.W": "E",
                "INV.B": "E",
                "AND.W": "F",
                "AND.B": "F"}

    @staticmethod
    def lowlife() -> {str, str}:  # 82 instructions
        return {"RRC.W": "F",
                "RRC.B": "F",
                "SWPB": "F",
                "RRA.W": "F",
                "RRA.B": "F",
                "SXT": "F",
                "PUSH.W": "F",
                "PUSH.B": "F",
                "RETI": "F",
                "CALL": "F",
                "JNE": "0",
                "JNZ": "0",
                "JEQ": "0",
                "JZ": "0",
                "JLO": "0",
                "JNC": "0",
                "JC": "0",
                "JHS": "0",
                "JN": "1",
                "JGE": "1",
                "JL": "1",
                "JMP": "1",  # ones
                "CLR.W": "2",
                "CLR.B": "2",
                "BR": "2",
                "MOV.W": "2",
                "MOV.B": "2",
                "POP.W": "2",
                "POP.B": "2",
                "RET": "2",
                "NOP": "2",
                "INC.W": "3",
                "INC.B": "3",
                "INCD.W": "3",
                "INCD.B": "3",
                "ADD.W": "3",
                "ADD.B": "3",
                "RLA.W": "3",
                "RLA.B": "3",
                "ADDC.W": "4",
                "ADDC.B": "4",
                "ADC.W": "4",
                "ADC.B": "4",
                "RLC.W": "4",
                "RLC.B": "4",
                "SUBC.W": "5",
                "SUBC.B": "5",
                "SBC.W": "5",
                "SBC.B": "5",
                "DEC.W": "6",
                "DEC.B": "6",
                "DECD.W": "6",
                "DECD.B": "6",
                "SUB.W": "6",
                "SUB.B": "6",
                "CMP.W": "7",
                "CMP.B": "7",
                "TST.W": "7",
                "TST.B": "7",
                "DADD.W": "8",
                "DADD.B": "8",
                "DADC.W": "8",
                "DADC.B": "8",
                "BIT.W": "9",
                "BIT.B": "9",
                "CLRC": "A",
                "CLRN": "A",
                "CLRZ": "A",
                "BIC.W": "A",
                "BIC.B": "A",
                "DINT": "A",
                "EINT": "B",
                "BIS.W": "B",
                "BIS.B": "B",
                "SETC": "B",
                "SETN": "B",
                "SETZ": "B",
                "XOR.W": "C",
                "XOR.B": "C",
                "INV.W": "C",
                "INV.B": "C",
                "AND.W": "D",
                "AND.B": "D"}

    @staticmethod
    def highroller() -> {str, str}:  # 82 instructions
        return {"RRC.W": "3",   # 3
                "RRC.B": "3",
                "SWPB": "3",
                "RRA.W": "3",
                "RRA.B": "3",
                "SXT": "3",
                "PUSH.W": "3",
                "PUSH.B": "3",
                "RETI": "3",
                "CALL": "3",
                "JNE": "4",     # 4
                "JNZ": "4",
                "JEQ": "4",
                "JZ": "4",
                "JLO": "4",
                "JNC": "4",
                "JC": "4",
                "JHS": "4",
                "JN": "5",      # 5
                "JGE": "5",
                "JL": "5",
                "JMP": "5",
                "CLR.W": "6",   # 6
                "CLR.B": "6",
                "BR": "6",
                "MOV.W": "6",
                "MOV.B": "6",
                "POP.W": "6",
                "POP.B": "6",
                "RET": "6",
                "NOP": "6",
                "INC.W": "7",   # 7
                "INC.B": "7",
                "INCD.W": "7",
                "INCD.B": "7",
                "ADD.W": "7",
                "ADD.B": "7",
                "RLA.W": "7",
                "RLA.B": "7",
                "ADDC.W": "8",  # 8
                "ADDC.B": "8",
                "ADC.W": "8",
                "ADC.B": "8",
                "RLC.W": "8",
                "RLC.B": "8",
                "SUBC.W": "9",  # 9
                "SUBC.B": "9",
                "SBC.W": "9",
                "SBC.B": "9",
                "DEC.W": "A",   # A
                "DEC.B": "A",
                "DECD.W": "A",
                "DECD.B": "A",
                "SUB.W": "A",
                "SUB.B": "A",
                "CMP.W": "B",   # B
                "CMP.B": "B",
                "TST.W": "B",
                "TST.B": "B",
                "DADD.W": "C",
                "DADD.B": "C",
                "DADC.W": "C",
                "DADC.B": "C",
                "BIT.W": "D",   # D
                "BIT.B": "D",
                "CLRC": "E",    # E
                "CLRN": "E",
                "CLRZ": "E",
                "BIC.W": "E",
                "BIC.B": "E",
                "DINT": "E",
                "EINT": "F",    # F
                "BIS.W": "F",
                "BIS.B": "F",
                "SETC": "F",
                "SETN": "F",
                "SETZ": "F",
                "XOR.W": "0",   # 0
                "XOR.B": "0",
                "INV.W": "0",
                "INV.B": "0",
                "AND.W": "1",   # 1
                "AND.B": "1"}

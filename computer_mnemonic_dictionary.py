class ComputerMnemonicDictionary:
        """
        RRC.W   xx10
        RRC.B   xx10
        SWPB    xx10
        RRA.W   xx11
        RRA.B   xx11
        SXT.W   xx11
        PUSH.W  xx12
        PUSH.B  xx12
        RETI.W  xx12
        JNE     FE23 or 0020
        JNZ     FE23 or 0020
        JEQ     FE27 or 0024
        JZ
        JNC
        JC
        JN
        JGE
        JL
        JMP
        CLR.W
        BR.W
        MOV.W
        MOV.B
        NOP
        INC.W
        INC.B
        INCD.W
        INCD.B
        ADD.W
        ADD.B
        ADDC.W
        ADDC.B
        ADC.W
        ADC.B
        SUBC.W
        SUBC.B
        DEC.W
        DEC.B
        DECD.W
        DECD.B
        SUB.W
        SUB.B
        CMP.W
        TST.W
        CMP.B
        DADD.W
        DADD.B
        DADC.W
        DADC.B
        BIT.W
        BIT.B
        CLRC.W
        CLRN.W
        CLRZ.W
        BIC.W
        BIC.B
        DINT.W
        EINT.W
        BIS.W
        BIS.B   E2D3
        XOR.W
        XOR.B
        AND.W
        AND.B
        """

        @staticmethod
        def baseline() -> {str, str}:
            return {"RRC.W": "1",  # xx10
                    "RRC.B": "1",
                    "SWP.B": "1",
                    "RRA.W": "1",
                    "RRA.B": "1",
                    "SXT.W": "1",
                    "PUSH.W": "1",
                    "PUSH.B": "1",
                    "RETI.W": "1",
                    "JNE": "2",
                    "JNZ": "2",
                    "JEQ": "2",
                    "JZ": "2",
                    "JNC": "2",
                    "JC": "2",
                    "JN": "3",
                    "JGE": "3",
                    "JL": "3",  # modified from "3 "
                    "JMP": "3",
                    "CLR.W": "4",
                    "BR.W": "4",
                    "MOV.W": "4",
                    "MOV.B": "4",
                    "NOP": "4",
                    "INC.W": "5",
                    "INC.B": "5",
                    "INCD.W": "5",
                    "INCD.B": "5",
                    "ADD.W": "5",
                    "ADD.B": "5",
                    "ADDC.W": "6",
                    "ADDC.B": "6",
                    "ADC.W": "6",
                    "ADC.B": "6",
                    "SUBC.W": "7",
                    "SUBC.B": "7",
                    "DEC.W": "8",
                    "DEC.B": "8",
                    "DECD.W": "8",
                    "DECD.B": "8",
                    "SUB.W": "8",
                    "SUB.B": "8",
                    "CMP.W": "9",
                    "TST.W": "9",
                    "CMP.B": "9",
                    "DADD.W": "A",
                    "DADD.B": "A",
                    "DADC.W": "A",
                    "DADC.B": "A",
                    "BIT.W": "B",
                    "BIT.B": "B",  # TODO: This is wrong
                    "CLRC.W": "C",
                    "CLRN.W": "C",
                    "CLRZ.W": "C",
                    "BIC.W": "C",
                    "BIC.B": "C",
                    "DINT.W": "C",
                    "EINT.W": "D",
                    "BIS.W": "D",
                    "BIS.B": "D",  # E2D3
                    "XOR.W": "E",
                    "XOR.B": "E",
                    "AND.W": "F",
                    "AND.B": "F"}


        @staticmethod
        def lowlife() -> {str, str}:
            return {"RRC.W": "F",
                    "RRC.B": "F",
                    "SWP.B": "F",
                    "RRA.W": "F",
                    "RRA.B": "F",
                    "SXT.W": "F",
                    "PUSH.W": "F",
                    "PUSH.B": "F",
                    "RETI.W": "F",
                    "JNE": "0",
                    "JNZ": "0",
                    "JEQ": "0",
                    "JZ": "0",
                    "JNC": "0",
                    "JC": "0",
                    "JN": "1",
                    "JGE": "1",
                    "JL": "1",  # modified from "1 "
                    "JMP": "1",  # ones
                    "CLR.W": "2",
                    "BR.W": "2",
                    "MOV.W": "2",
                    "MOV.B": "2",
                    "NOP": "2",
                    "INC.W": "3",
                    "INC.B": "3",
                    "INCD.W": "3",
                    "INCD.B": "3",
                    "ADD.W": "3",
                    "ADD.B": "3",
                    "ADDC.W": "4",
                    "ADDC.B": "4",
                    "ADC.W": "4",
                    "ADC.B": "4",
                    "SUBC.W": "5",
                    "SUBC.B": "5",
                    "DEC.W": "6",
                    "DEC.B": "6",
                    "DECD.W": "6",
                    "DECD.B": "6",
                    "SUB.W": "6",
                    "SUB.B": "6",
                    "CMP.W": "7",
                    "TST.W": "7",
                    "CMP.B": "7",
                    "DADD.W": "8",
                    "DADD.B": "8",
                    "DADC.W": "8",
                    "DADC.B": "8",
                    "BIT.W": "9",
                    "BIT.B": "9",
                    "CLRC.W": "A",
                    "CLRN.W": "A",
                    "CLRZ.W": "A",
                    "BIC.W": "A",
                    "BIC.B": "A",
                    "DINT.W": "A",
                    "EINT.W": "B",
                    "BIS.W": "B",
                    "BIS.B": "B",
                    "XOR.W": "C",
                    "XOR.B": "C",
                    "AND.W": "D",
                    "AND.B": "D"}  # D


        @staticmethod
        def highroller() -> {str, str}:
            return {"RRC.W": "3",  # 3
                    "RRC.B": "3",
                    "SWP.B": "3",
                    "RRA.W": "3",
                    "RRA.B": "3",
                    "SXT.W": "3",
                    "PUSH.W": "3",
                    "PUSH.B": "3",
                    "RETI.W": "3",  # 3
                    "JNE": "4",
                    "JNZ": "4",
                    "JEQ": "4",
                    "JZ": "4",
                    "JNC": "4",
                    "JC": "4",  # 4
                    "JN": "5",
                    "JGE": "5",
                    "JL": "5",
                    "JMP": "5",  # 5
                    "CLR.W": "6",
                    "BR.W": "6",
                    "MOV.W": "6",
                    "MOV.B": "6",
                    "NOP": "6",  # 6
                    "INC.W": "7",
                    "INC.B": "7",
                    "INCD.W": "7",
                    "INCD.B": "7",
                    "ADD.W": "7",
                    "ADD.B": "7",  # 7
                    "ADDC.W": "8",
                    "ADDC.B": "8",
                    "ADC.W": "8",
                    "ADC.B": "8",  # 8
                    "SUBC.W": "9",
                    "SUBC.B": "9",  # 9
                    "DEC.W": "A",
                    "DEC.B": "A",
                    "DECD.W": "A",
                    "DECD.B": "A",
                    "SUB.W": "A",
                    "SUB.B": "A",  # A
                    "CMP.W": "B",
                    "TST.W": "B",
                    "CMP.B": "B",  # B
                    "DADD.W": "C",
                    "DADD.B": "C",
                    "DADC.W": "C",
                    "DADC.B": "C",  # C
                    "BIT.W": "D",
                    "BIT.B": "D",  # D
                    "CLRC.W": "E",
                    "CLRN.W": "E",
                    "CLRZ.W": "E",
                    "BIC.W": "E",
                    "BIC.B": "E",
                    "DINT.W": "E",  # E
                    "EINT.W": "F",
                    "BIS.W": "F",
                    "BIS.B": "F",  # F
                    "XOR.W": "0",
                    "XOR.B": "0",  # 0
                    "AND.W": "1",  # 1
                    "AND.B": "1"}

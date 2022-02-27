###############################
# Buffer Overflow Attack
# For Raytheon Research Project and Interdisciplinary Capstone Project (2021-'22)
# Dr. Clem Izurieta
# Dr. Brock LaMeres
# Written by Michael Heidal
###############################
import random
import string
from typing import List, Tuple

from instrumentation_strategy import InstrumentationStrategy


class BasicOverwriteAttack(InstrumentationStrategy):

    def instrument(self, file: str) -> bool:
        """"
        Open the file
        Write malicious code to file


        :param file: the file to instrument.
        :return: True if the process is successful, False if it fails at any step
        """

        malicious_file = """Out[10]: '#include <msp430.h> #include <stdlib.h>#include <string.h>/** * main.c */char* morse_code_from_char(char letter) {    char* code = malloc(10*sizeof(char));    switch (letter) {        case \'A\':            strcpy(code, ".-");            break;        case \'B\':            strcpy(code, "-...");            break;        case \'C\':            strcpy(code, "-.-.");            break;        case \'D\':            strcpy(code, "-..");            break;        case \'E\':            strcpy(code, ".");            break;        case \'F\':            strcpy(code, "..-.");            break;        case \'G\':            strcpy(code, "--.");            break;        case \'H\':            strcpy(code, "....");            break;        case \'I\':            strcpy(code, "..");            break;        case \'J\':            strcpy(code, ".---");            break;        case \'K\':            strcpy(code, "-.-");            break;        case \'L\':            strcpy(code, ".-..");            break;        case \'M\':            strcpy(code, "--");            break;        case \'N\':            strcpy(code, "-.");            break;        case \'O\':            strcpy(code, "---");            break;        case \'P\':            strcpy(code, ".--.");            break;        case \'Q\':            strcpy(code, "--.-");            break;        case \'R\':            strcpy(code, ".-.");            break;        case \'S\':            strcpy(code, "...");            break;        case \'T\':            strcpy(code, "-");            break;        case \'U\':            strcpy(code, "..-");            break;        case \'V\':            strcpy(code, "...-");            break;        case \'W\':            strcpy(code, ".--");            break;        case \'X\':            strcpy(code, "-..-");            break;        case \'Y\':            strcpy(code, "-.--");            break;        case \'Z\':            strcpy(code, "--..");            break;        case \'_\':            strcpy(code, "-.-.-.-");            break;        case \',\':            strcpy(code, "--..--");            break;        case \':\':            strcpy(code, "---...");            break;        case \';\':            strcpy(code, "-.-.-.");            break;        case \'.\':            strcpy(code, ".-.-.-");            break;        case \'"\':            strcpy(code, ".-..-.");            break;        case \'(\':            strcpy(code, "-----.");            break;        case \')\':            strcpy(code, ".-----");            break;        case \' \':            strcpy(code, "-.--.-");            break;        case \'1\':            strcpy(code, ".----");            break;        case \'2\':            strcpy(code, "..---");            break;        case \'3\':            strcpy(code, "...--");            break;        case \'4\':            strcpy(code, "....-");            break;        case \'5\':            strcpy(code, ".....");            break;        case \'6\':            strcpy(code, "-....");            break;        case \'7\':            strcpy(code, "--...");            break;        case \'8\':            strcpy(code, "---..");            break;        case \'9\':            strcpy(code, "----.");            break;        case \'0\':            strcpy(code, "-----");            break;    }    return code;}int main(void){\tWDTCTL = WDTPW | WDTHOLD;\t// stop watchdog timer    // Ports    P1DIR |= BIT0;              // Config P1.0 LED1 (Red) as out    P1OUT &= ~BIT0;             // Init val = 0    P6DIR |= BIT6;    P6OUT &= ~BIT6;    P4DIR &= ~BIT1;             // Clear P4.1 (SW1) dir = in    P4REN |= BIT1;              // Enable pull up/down res    P4OUT |= BIT1;              // Make res pull up    P4IES |= BIT1;              // Config IRQ H->L    PM5CTL0 &= ~LOCKLPM5;       // Enable GPIO    // IRQs    P4IFG &= ~BIT1;             // Clear P4.1 IRQ flag    P4IE |= BIT1;               // Enable P4.1 IRQ    P2IFG &= ~BIT3;             // Clear P2.3 IRQ flag    P2IE |= BIT3;               // Enable P2.3 IRQ\t    const int str_len = 27;    char str[str_len] = "SPHINXOFBLACKQUARTZJUDGEMYVOW";    while(1) {        unsigned int j;        for (j = 0; j < str_len; j++) {            char* x = morse_code_from_char(str[j]);            unsigned int i;            for (i = 0; x[i] != 0; i++) {                if (x[i] == \'.\') {                    P1OUT |= BIT0;      // LED1 on                    _delay_cycles(300000);                    P1OUT &= ~BIT0;      // LED1 off                } else if (x[i] == \'-\') {                    P1OUT |= BIT0;      // LED1 on                    _delay_cycles(2*300000);                    P1OUT &= ~BIT0;      // LED1 off                }                _delay_cycles(300000);            }        _delay_cycles(600000);        }    }}'"""

        try:
            f = open(file, 'w')
            f.write(malicious_file)
            f.close()
            return True
        except:
            return False


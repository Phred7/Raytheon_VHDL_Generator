"""
# Buffer Overflow Attack Instrumentation Strategy
# For Raytheon Research Project and Interdisciplinary Capstone Project (2021-'22)
# Dr. Clem Izurieta
# Dr. Brock LaMeres
# Written by Walker Ward
"""
from instrumentation_strategy import InstrumentationStrategy


class SWTriggeredFailure(InstrumentationStrategy):
    """SW Triggered Failure"""

    def instrument(self, file_to_instrument: str) -> bool:
        """"
        Instruments a file by adding a SW interrupt and causing control loop to stop.
        :param file_to_instrument: the project containing the source to be modified.
        :return: True if the process is successful, False if it fails at any step
        """
        output_file_str: str = ""
        instrumented_bool: bool = False
        with open(file_to_instrument, "r") as file_to_instrument_iterable:
            global_trigger: bool = False
            sw_config_flag: bool = False
            sw_isr_flag: bool = False
            for line in file_to_instrument_iterable:
                if not global_trigger and "void" in line:
                    global_trigger = True
                    output_file_str += f"{self.sw_trigger_global()}\n{line}"
                elif not sw_config_flag and "TB0CCTL1 &= ~CCIFG;" in line:
                    sw_config_flag = True
                    output_file_str += line
                    output_file_str += self.sw_config()
                elif not sw_isr_flag and "//-- END ISR_EUSCI_A1" in line:
                    sw_isr_flag = True
                    output_file_str += f"{line}{self.sw_isr()}"
                elif "UCA1RXBUF == '1'" in line:
                    output_file_str += f"{line}{'if (sw_trigger_flag == 0x01) {P3OUT |= BIT2;}'}\n"
                elif "UCA1RXBUF == '2'" in line:
                    output_file_str += f"{line}{'if (sw_trigger_flag == 0x01) {P3OUT &= ~BIT2;}'}\n"
                elif "UCA1RXBUF == '3'" in line:
                    output_file_str += f"{line}{'if (sw_trigger_flag == 0x01) {P3OUT |= BIT2;}'}\n"
                else:
                    output_file_str += line

            instrumented_bool = global_trigger | sw_config_flag | sw_isr_flag

        if instrumented_bool:
            with open(file_to_instrument, "w") as file_to_instrument_iterable:
                file_to_instrument_iterable.write(output_file_str)

        return instrumented_bool

    def sw_trigger_global(self) -> str:
        return """
        unsigned char sw_trigger_flag = 0x01;"""

    def sw_config(self) -> str:
        return """
    P3DIR |= BIT2;
	P3OUT &= ~BIT2;
    // SW1 config
    P4DIR &= ~BIT1;             // Clear P4.1 (SW1) dir = in
    P4REN |= BIT1;              // Enable pull up/down res
    P4OUT |= BIT1;              // Make res pull up
    P4IES |= BIT1;              // Config IRQ H->L
    P4IFG &= ~BIT1;             // Clear P4.1 IRQ flag
    P4IE |= BIT1;               // Enable P4.1 IRQ"""

    def sw_isr(self) -> str:
        return """
        //-- Service SW1
#pragma vector = PORT4_VECTOR
__interrupt void ISR_Port4_SW1(void) {
    sw_trigger_flag = 0x01;
    P4IFG &= ~BIT1;
}
//-- END ISR_Port4_SW1
        """

    @staticmethod
    def reset_keyboard_control_code(file_str: str) -> None:
        with open(file_str, "w") as file_to_reset:
            file_to_reset.write(SWTriggeredFailure.keyboard_control_code())

    @staticmethod
    def keyboard_control_code() -> str:
        return """#include <msp430.h> 


/**
 * main.c
 */

// PWM
const unsigned int min_duty_cycle = 700;
const unsigned int max_duty_cycle = 2300;
//static const int min_duty_cycle = 100;
//static const int max_duty_cycle = 500;
const int step_size_duty_cycle = 100;
unsigned int period_T = max_duty_cycle;
unsigned int duty_cycle = 1500;

// UART
unsigned const int last = 7;
unsigned int position;
unsigned int message_length;

void configTimer(void) {
    // Timers
    // TB0
    TB0CTL |= TBCLR;            // Clear timer and divs
    TB0CTL |= TBSSEL__SMCLK;    // SRC = SMCLK
    TB0CTL |= MC__UP;           // Mode = UP
    TB0CTL |= CNTL_0;           // Length = 16-bit
    TB0CCR0 = 2300;         // CCR0 = 2300 (2.3 ms)
    TB0CCR1 = 1500;       // CCR1 = 2300-700/4 (25%)
}



void configUART(void) {
    // UART
    // Put eUSCI_A1 into software reset
    UCA1CTLW0 |= UCSWRST;

    //--Baud Rate: 115200
    UCA1CTLW0 |= UCSSEL__SMCLK;
    UCA1BRW = 8;
    UCA1MCTLW |= 0xD600;

    // Config UART Tx
    P4SEL1 &= ~BIT3;
    P4SEL0 |= BIT3;

    // Config UART Rx
    P4SEL1 &= ~BIT2;
    P4SEL0 |= BIT2;


    // Take eUSCU_A1 out of software reset
    UCA1CTLW0 &= ~UCSWRST;
    // END UART
}



int main(void)
{
	WDTCTL = WDTPW | WDTHOLD;	// stop watchdog timer
	
	// Ports
	P3DIR |= BIT0;              // Config P1.0 LED1 (Red) as out
	P3OUT &= ~BIT0;             // Init val = 0

	configTimer();

	configUART();

    PM5CTL0 &= ~LOCKLPM5;

	// UART Rx
    UCA1IE |= UCRXIE;

    // Timer Compare IRQ
    TB0CCTL0 |= CCIE;           // Enable TB0 CCR0 overflow IRQ
    TB0CCTL0 &= ~CCIFG;         // Clear CCR0 flag
    TB0CCTL1 |= CCIE;           // Enable TB0 CCR1 overflow IRQ
    TB0CCTL1 &= ~CCIFG;         // Clear CCR1 flag

    __enable_interrupt();           // EN maskable IRQ

    while(1){
        // duty_cycle = 0x05DC;
    }

	return 0;
}

//-- Interrupt Service Routines -------------------------
// Service CCR0
#pragma vector = TIMER0_B0_VECTOR
__interrupt void ISR_TB0CCR0(void) {
    P3OUT |= BIT0;
    TB0CCTL0 &= ~CCIFG;         // Clear CCR0 flag
}
// Service CCR1
#pragma vector = TIMER0_B1_VECTOR
__interrupt void ISR_TB0CCR1(void) {
    TB0CCR1 = duty_cycle;
    P3OUT &= ~BIT0;
    TB0CCTL1 &= ~CCIFG;         // Clear CCR1 flag
}

// Service UART
#pragma vector = EUSCI_A1_VECTOR
__interrupt void ISR_EUSCI_A1(void) {

    int recieve;
    recieve = UCA1IFG;
    recieve &= UCRXIFG;

    if (recieve == 1) {
        int reciever = UCA1RXBUF;
        if (UCA1RXBUF == '1') {
            duty_cycle = 0x02BC;
        } else if (UCA1RXBUF == '2') {
            duty_cycle = 0x05DC;
        } else if (UCA1RXBUF == '3') {
            duty_cycle = 0x07D0;
        }
        UCA1IFG &= ~UCRXIFG;
    }

}
//-- END ISR_EUSCI_A1

"""

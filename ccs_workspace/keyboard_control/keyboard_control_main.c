#include <msp430.h> 


/**
 * main.c
 */

// PWM
static const int min_duty_cycle = 700;
static const int max_duty_cycle = 2300;
//static const int min_duty_cycle = 100;
//static const int max_duty_cycle = 500;
static const int step_size_duty_cycle = 100;
int period_T = max_duty_cycle;
int duty_cycle = max_duty_cycle - ((max_duty_cycle - min_duty_cycle) / 2);

// UART
char message[] = "Walker Ward ";
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
    TB0CCR0 = period_T;         // CCR0 = 2300 (2.3 ms)
    TB0CCR1 = duty_cycle;       // CCR1 = 2300-700/4 (25%)
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
	P1DIR |= BIT0;              // Config P1.0 LED1 (Red) as out
	P1OUT &= ~BIT0;             // Init val = 0

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

    }

	return 0;
}

//-- Interrupt Service Routines -------------------------
// Service CCR0
#pragma vector = TIMER0_B0_VECTOR
__interrupt void ISR_TB0CCR0(void) {
    P1OUT |= BIT0;
    TB0CCTL0 &= ~CCIFG;         // Clear CCR0 flag
}
// Service CCR1
#pragma vector = TIMER0_B1_VECTOR
__interrupt void ISR_TB0CCR1(void) {
    TB0CCR1 = duty_cycle;
    P1OUT &= ~BIT0;
    TB0CCTL1 &= ~CCIFG;         // Clear CCR1 flag
}

// Service UART
#pragma vector = EUSCI_A1_VECTOR
__interrupt void ISR_EUSCI_A1(void) {
//    int transmit;
//    transmit = UCA1IFG;
//    transmit &= UCTXCPTIFG; //8 on Tx

    int recieve;
    recieve = UCA1IFG;
    recieve &= UCRXIFG;

//    if(transmit == 8) {
////        if(position+1 == sizeof(message) || position == 6) { // dependent on sizeof(messsage) and name length/string
////            UCA1IE &= ~UCTXCPTIE;
////            int i;
////            for(i=0; i<10000; i++){}
////        } else {
////            position++;
////            UCA1TXBUF = message[position];
////        }
//        UCA1IFG &= ~UCTXCPTIFG;
    if (recieve == 1) {
        int reciever = UCA1RXBUF;
        if (UCA1RXBUF == '1') {
            duty_cycle = min_duty_cycle;
        } else if (UCA1RXBUF == '2') {
            duty_cycle = max_duty_cycle - ((max_duty_cycle - min_duty_cycle) / 2);
        } else if (UCA1RXBUF == '3') {
            duty_cycle = max_duty_cycle;
        }
        UCA1IFG &= ~UCRXIFG;
    }

}
//-- END ISR_EUSCI_A1

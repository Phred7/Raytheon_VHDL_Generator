#include <msp430.h> 


int max = 2;

int main(void)
{
    WDTCTL = WDTPW | WDTHOLD;   // stop watchdog timer

    // Ports
    P1DIR |= BIT0;              // Config P1.0 LED1 (Red) as out
    P1OUT &= ~BIT0;             // Init val = 0

    P6DIR |= BIT6;              // Config P6.6 LED2 (Green) as out
    P6OUT &= ~BIT6;             // Init val = 0

    P4DIR &= ~BIT1;             // Clear P4.1 (SW1) dir = in
    P4REN |= BIT1;              // Enable pull up/down res
    P4OUT |= BIT1;              // Make res pull up
    P4IES |= BIT1;              // Config IRQ H->L

    PM5CTL0 &= ~LOCKLPM5;       // Enable GPIO


    P6OUT ^= BIT6;             // Init val = 1

    // IRQs
    P4IFG &= ~BIT1;             // Clear P4.1 IRQ flag
    P4IE |= BIT1;               // Enable P4.1 IRQ

    P2IFG &= ~BIT3;             // Clear P2.3 IRQ flag
    P2IE |= BIT3;               // Enable P2.3 IRQ

    __enable_interrupt();       // EN maskable IRQ



    while(1){
        int i;
        int status_data = 0;
        for (i = 0; i < max; i++) {
            if (status_data == 1) {
                P1OUT |= BIT0;      // Toggle LED1
                status_data = 0;
            } else {
                P1OUT &= ~BIT0;
                status_data = 1;
            }
            _delay_cycles(300000);


        }
        P1OUT &= ~BIT0;     // Disable LED1
        P6OUT &= ~BIT6;      // Disable LED2
        _delay_cycles(300000);
        P6OUT ^= BIT6;             // Toggle LED2 on

    }
    return 0;
}
//-- END main

//-- Interrupt Service Routines -------------------------
#pragma vector = PORT4_VECTOR
__interrupt void ISR_Port4_SW1(void) {
    max++;
    P4IFG &= ~BIT1;
}
//-- END ISR_Port4_SW1



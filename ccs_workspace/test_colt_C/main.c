#include <msp430.h> 
void init_GPIO(void);
void high_GPIO(void);
void low_GPIO(void);
int main(void) {
    WDTCTL = WDTPW | WDTHOLD;   // stop watchdog timer
    PM5CTL0 &= ~LOCKLPM5;       //Enable GPIO Manipulation
    init_GPIO();
    while(1){
        high_GPIO();
        low_GPIO();
        high_GPIO();
    }
}

void init_GPIO(void){
    /* Initialize Port A and B GPIO to output*/
    P1DIR |= 0xFF;
    P2DIR |= 0xFF;
    P3DIR |= 0xFF;
    P4DIR |= 0xFF;

    /* Initialize Port A and B GPIO to output low*/
    P1OUT &= ~0xFF;
    P2OUT &= ~0xFF;
    P3OUT &= ~0xFF;
    P4OUT &= ~0xFF;
}

void high_GPIO(void){
    P1OUT |= 0xFF;
    P2OUT |= 0xFF;
    P3OUT |= 0xFF;
    P4OUT |= 0xFF;
}

void low_GPIO(void){
    P1OUT &= ~0xFF;
    P2OUT &= ~0xFF;
    P3OUT &= ~0xFF;
    P4OUT &= ~0xFF;
}

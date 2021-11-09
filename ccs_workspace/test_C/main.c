#include <msp430.h>
int main(void) {
    WDTCTL = WDTPW | WDTHOLD;   // stop watchdog timer
    PM5CTL0 &= ~LOCKLPM5;       //Enable GPIO Manipulation
    while(1){}
}


//#include <msp430.h>
//void init_GPIO(void);
//void high_GPIO(void);
//void low_GPIO(void);
//int main(void) {
//    WDTCTL = WDTPW | WDTHOLD;   // stop watchdog timer
//    PM5CTL0 &= ~LOCKLPM5;       //Enable GPIO Manipulation
//    init_GPIO();
//    while(1){
//        high_GPIO();
//        low_GPIO();
//        high_GPIO();
//    }
//}
//
//void init_GPIO(void){
//    /* Initialize Port A and B GPIO to output*/
//    /*P1DIR |= 0xFF;
//    P2DIR |= 0xFF;
//    P3DIR |= 0xFF;
//    P4DIR |= 0xFF;
//    P2DIR |= 0xFF;*/
//    PADIR |= 0xFFFF;
//    PBDIR |= 0xFFFF;
//
//    /* Initialize Port A and B GPIO to output low*/
//   /* P1OUT &= ~0xFF;
//    P2OUT &= ~0xFF;
//    P3OUT &= ~0xFF;
//    P4OUT &= ~0xFF;*/
//    PAOUT &= ~0xFFFF;
//    PBOUT &= ~0xFFFF;
//}
//
//void high_GPIO(void){
//    /*P1OUT |= 0xFF;
//    P2OUT |= 0xFF;
//    P3OUT |= 0xFF;
//    P4OUT |= 0xFF;*/
//    PAOUT |= 0xFFFF;
//    PBOUT |= 0xFFFF;
//}
//
//void low_GPIO(void){
//    /*P1OUT &= ~0xFF;
//    P2OUT &= ~0xFF;
//    P3OUT &= ~0xFF;
//    P4OUT &= ~0xFF;*/
//    PAOUT &= ~0xFFFF;
//    PBOUT &= ~0xFFFF;
//}



//#include <msp430.h>
//void init_GPIO(void);
//void high_GPIO(void);
//void low_GPIO(void);
//int main(void) {
//    WDTCTL = WDTPW | WDTHOLD;   // stop watchdog timer
//    PM5CTL0 &= ~LOCKLPM5;       //Enable GPIO Manipulation
//    init_GPIO();
//    while(1){
//        high_GPIO();
//        low_GPIO();
//        high_GPIO();
//    }
//}
//
//void init_GPIO(void){
//    /* Initialize Port A and B GPIO to output*/
//    P1DIR |= 0xFF;
//    P2DIR |= 0xFF;
//    P3DIR |= 0xFF;
//    P4DIR |= 0xFF;
//
//    /* Initialize Port A and B GPIO to output low*/
//    P1OUT &= ~0xFF;
//    P2OUT &= ~0xFF;
//    P3OUT &= ~0xFF;
//    P4OUT &= ~0xFF;
//}
//
//void high_GPIO(void){
//    P1OUT |= 0xFF;
//    P2OUT |= 0xFF;
//    P3OUT |= 0xFF;
//    P4OUT |= 0xFF;
//}
//
//void low_GPIO(void){
//    P1OUT &= ~0xFF;
//    P2OUT &= ~0xFF;
//    P3OUT &= ~0xFF;
//    P4OUT &= ~0xFF;
//}



//#include "driverlib.h"
//#include <msp430fr2355.h>
//void init_GPIO(void);
//void high_GPIO(void);
//void low_GPIO(void);
//int main(void) {
//    WDTCTL = WDTPW | WDTHOLD;   // stop watchdog timer
//    PM5CTL0 &= ~LOCKLPM5;       //Enable GPIO Manipulation
//    init_GPIO();
//    while(1){
//        high_GPIO();
//        low_GPIO();
//        high_GPIO();
//    }
//}
//
//void init_GPIO(void){
//    /* Initialize Port A and B GPIO to output*/
//    GPIO_setAsOutputPin(GPIO_PORT_P1, GPIO_PIN_ALL8);
//    GPIO_setAsOutputPin(GPIO_PORT_P2, GPIO_PIN_ALL8);
//    GPIO_setAsOutputPin(GPIO_PORT_P3, GPIO_PIN_ALL8);
//    GPIO_setAsOutputPin(GPIO_PORT_P4, GPIO_PIN_ALL8);
//
//    /* Initialize Port A and B GPIO to output*/
//    GPIO_setOutputLowOnPin(GPIO_PORT_P1, GPIO_PIN_ALL8);
//    GPIO_setOutputLowOnPin(GPIO_PORT_P2, GPIO_PIN_ALL8);
//    GPIO_setOutputLowOnPin(GPIO_PORT_P3, GPIO_PIN_ALL8);
//    GPIO_setOutputLowOnPin(GPIO_PORT_P4, GPIO_PIN_ALL8);
//
//
//}
//
//void high_GPIO(void){
//    GPIO_setOutputHighOnPin(GPIO_PORT_P1, GPIO_PIN_ALL8);
//    GPIO_setOutputHighOnPin(GPIO_PORT_P2, GPIO_PIN_ALL8);
//    GPIO_setOutputHighOnPin(GPIO_PORT_P3, GPIO_PIN_ALL8);
//    GPIO_setOutputHighOnPin(GPIO_PORT_P4, GPIO_PIN_ALL8);
//}
//
//void low_GPIO(void){
//    GPIO_setOutputLowOnPin(GPIO_PORT_P1, GPIO_PIN_ALL8);
//    GPIO_setOutputLowOnPin(GPIO_PORT_P2, GPIO_PIN_ALL8);
//    GPIO_setOutputLowOnPin(GPIO_PORT_P3, GPIO_PIN_ALL8);
//    GPIO_setOutputLowOnPin(GPIO_PORT_P4, GPIO_PIN_ALL8);
//}

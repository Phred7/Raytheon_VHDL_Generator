#include <msp430.h>


/**
 * main.c
 */

unsigned char decode_array[] = {0,56,40,55,24,0,39,52,8,57,0,0,23,0,36,13,120,0,41,54,0,0,0,53,7,0,0,0,20,19,125,18,104,105,0,0,25,106,38,0,0,58,0,0,0,0,37,14,119,118,0,0,0,107,0,0,4,0,3,0,109,108,2,1,88,0,89,0,0,0,0,51,9,10,90,0,22,11,0,12,0,0,42,43,0,0,0,0,0,0,0,0,21,0,126,127,103,0,102,0,0,0,0,0,0,0,91,0,0,0,0,0,116,117,0,0,115,0,0,0,93,94,92,0,114,95,113,0,72,71,0,68,73,0,0,29,0,70,0,69,0,0,35,34,121,0,122,0,74,0,0,30,6,0,123,0,0,0,124,17,0,0,0,67,26,0,27,28,0,59,0,0,0,0,0,15,0,0,0,0,0,0,0,0,5,0,0,0,110,0,111,16,87,84,0,45,86,85,0,50,0,0,0,46,0,0,0,33,0,83,0,44,75,0,0,31,0,0,0,0,0,0,0,32,100,61,101,66,0,62,0,49,99,60,0,47,0,0,0,48,77,82,78,65,76,63,0,64,98,81,79,80,97,96,112};
unsigned int frequency = 1000;
unsigned int set_angle = 61;

int main(void)
{
    WDTCTL = WDTPW | WDTHOLD;   // stop watchdog timer
    PM5CTL0 &=~(LOCKLPM5);

    // P1reads from Rotary encoder
    P1DIR &=~(0xFFFF);

    // P2read from switches
    // BIT 0 == SW1
    // BIT 1 == SW2
    P2DIR &=~(BIT0+BIT1);
    // P2drives stepper moto
    // BIT 2 == EN
    // BIT 4 == STEP
    // BIT 5 == DIR
    P2DIR |=(BIT2+BIT4 + BIT5);

    TB0CTL |= MC__CONTINUOUS + ID__1 + TBSSEL__SMCLK;
    TB0CCTL0 |= CCIE;
    TB0CCR0 = frequency;
    __enable_interrupt();


    UCA1IE |= UCRXIE;

    unsigned char temp;
    while(1){
        temp = P2IN & (BIT0+BIT1);
        if(temp == 1){
            set_angle = 47;
        }else if (temp==2){
            set_angle = 79;
        }else{
            set_angle = 61;
        }

        temp = decode_array[P1IN];

        if(temp<set_angle){
            P2OUT &=~(BIT2); //enable stepper motor
//          P2OUT |=(BIT1); //set direction
            P2OUT &=~(BIT5); //set direction
            temp = set_angle-temp;
        }else if (temp>set_angle){
            P2OUT &=~(BIT2); //enable stepper motor
//            P2OUT &=~(BIT1); //set direction
            P2OUT |=(BIT5); //set direction
            temp = temp-set_angle;
        }else{
            P2OUT |=BIT2; //Disable stepper motor
        }
        frequency = 4000 - 63*(temp);
    }
}

#pragma vector = TIMER0_B0_VECTOR;
interrupt void Timer_ISR(){
    TB0CCR0+=frequency;
    P2OUT ^=BIT4;
    //frequency+=1;
    TB0CCTL0 &=~ CCIFG;
//    TB0CCTL0

}




//#include <msp430.h>
//
//
///**
// * main.c
// */
//
//unsigned char decode_array[] = {0,56,40,55,24,0,39,52,8,57,0,0,23,0,36,13,120,0,41,54,0,0,0,53,7,0,0,0,20,19,125,18,104,105,0,0,25,106,38,0,0,58,0,0,0,0,37,14,119,118,0,0,0,107,0,0,4,0,3,0,109,108,2,1,88,0,89,0,0,0,0,51,9,10,90,0,22,11,0,12,0,0,42,43,0,0,0,0,0,0,0,0,21,0,126,127,103,0,102,0,0,0,0,0,0,0,91,0,0,0,0,0,116,117,0,0,115,0,0,0,93,94,92,0,114,95,113,0,72,71,0,68,73,0,0,29,0,70,0,69,0,0,35,34,121,0,122,0,74,0,0,30,6,0,123,0,0,0,124,17,0,0,0,67,26,0,27,28,0,59,0,0,0,0,0,15,0,0,0,0,0,0,0,0,5,0,0,0,110,0,111,16,87,84,0,45,86,85,0,50,0,0,0,46,0,0,0,33,0,83,0,44,75,0,0,31,0,0,0,0,0,0,0,32,100,61,101,66,0,62,0,49,99,60,0,47,0,0,0,48,77,82,78,65,76,63,0,64,98,81,79,80,97,96,112};
//unsigned int frequency = 1000;
//int main(void)
//{
//    WDTCTL = WDTPW | WDTHOLD;   // stop watchdog timer
//    PM5CTL0 &=~(LOCKLPM5);
//
//    // P1reads from Rotary encoder
//    P1DIR &=~(0xFFFF);
//
//    // P2drives stepper motor
//    // BIT 0 == STEP
//    // BIT 1 == DIR
//    P2DIR |=(BIT0 + BIT1);
//
////  P4SEL1 &= ~BIT2; //Place P4.2 in UART MODE
////  P4SEL0 |= BIT2;
////
////  P4SEL1 &=~BIT3;// Place P4.3 in UART MODE
////  P4SEL0 |=BIT3;
//
////  UCA1CTLW0 |=UCSSEL__SMCLK;
////  UCA1BR0 = 0x08;
////
////  UCA1MCTLW |= 0xD600;
////
////  UCA1CTLW0 &=~UCSWRST;
//
//    TB0CTL |= MC__CONTINUOUS + ID__1 + TBSSEL__SMCLK;
//    TB0CCTL0 |= CCIE;
//    TB0CCR0 = frequency;
//
//    P2DIR |=BIT2;
//
//    __enable_interrupt();
//
//
//    unsigned char temp;
//    while(1){
//        temp = decode_array[P1IN];
////      UCA1TXBUF = temp;
//        if(temp<0x3f){
//            P2OUT &=~(BIT2); //enable stepper motor
//            P2OUT |=(BIT1); //set direction
//            temp = 0x3f-temp;
//        }else if (temp>0x3f){
//            P2OUT &=~(BIT2); //enable stepper motor
//            P2OUT &=~(BIT1); //set direction
//            temp = temp-0x3f;
//        }else{
//            P2OUT |=BIT2;
//        }
//        frequency = 4000 - 46*(temp);
//    }
//}
//
//#pragma vector = TIMER0_B0_VECTOR;
//interrupt void Timer_ISR(){
//    TB0CCR0+=frequency;
//    P2OUT ^=BIT0;
//    frequency+=1;
//    TB0CCTL0 &=~ CCIFG;
////    TB0CCTL0
//
//}



//#include <msp430.h>
//int main(void) {
//    WDTCTL = WDTPW | WDTHOLD;   //stop watch dog timer
//
//    PM5CTL0 &= ~LOCKLPM5;       //Enable GPIO Manipulation
//
//
//    PADIR &= ~BITB;             //Set Port 2.3 to input
//    PAREN |=  BITB;             //Enable pull up resistors
//    PAOUT |=  BITB;
//    PAIES |=  BITB;             //Set IRQ to H -> L
//    PAIFG &=  0x0000;           //Clear interrupts
//    PAIE  |=  BITB;             //Enable Port 2.3 interrupt
//
//    PCDIR |=  BITE;             //Set Port 6.6 to output
//    PCOUT &=  ~BITE;
//
//
//
//    PBDIR &=  ~BIT9;            //Set Port 4.1 to input
//    PBREN |=  BIT9;             //Enable pull up resistors
//    PBOUT |=  BIT9;
//    PBIES |=  BIT9;             //Set IRQ to L -> H
//    PBIFG &=  0x0000;           //Clear interrupts
//    PBIE  |=  BIT9;             //Enable Port 4.1 interrupt
//
//    PADIR |=  BIT0;             //Set Port 1.1 to output
//    PAOUT &= ~BIT0;
//
//
//    _enable_interrupt();        //Enable interrupts;
//    while(1){
//    }
//}
//
////Interrupt Service Routines
//#pragma vector = PORT2_VECTOR
//__interrupt void ISR_Port2_S2(void){
//    PCOUT ^= BITE;
//    PAIFG &= ~BITB;
//}
//
//#pragma vector = PORT4_VECTOR
//__interrupt void ISR_Port4_S1(void){
//    PAOUT ^= BIT0;
//    PBIFG &= ~BIT9;
//}

//#include <msp430.h>
//int main(void) {
//    WDTCTL = WDTPW | WDTHOLD;   //stop watch dog timer
//    PM5CTL0 &= ~LOCKLPM5;       //Enable GPIO Manipulation
//    PADIR |=  0xAAAA;           //Set alternating bits of Port A to output
//    PADIR &= ~0x5555;           //Rest are input
//    PAREN |=  0x5555;           //Set non output bits of Port A to have resistors enabled
//    PAOUT &= ~0x5555;           //Set non output bits of Port A to be pulled low with resistors
//    PBDIR &= ~0xFFFF;           //Set all bits of Port B to input
//    PBREN |=  0x5555;           //Set non alternating input bits of Port B to have resistors enabled
//    PBOUT &= ~0x5555;           //Set non alternating input bits of Port B to be pulled low with resistors
//    while(1){
//        //Purpose of this file is to implement on FPGA
//        //Port B will be input tied to buttons/switches
//        //Port A output will be tied to LEDs
//        PAOUT = PBIN;//Port A Out is assigned Port B
//    }
//}

//#include <msp430.h>
//int main(void) {
//    WDTCTL = WDTPW | WDTHOLD;   //stop watch dog timer
//    PM5CTL0 &= ~LOCKLPM5;       //Enable GPIO Manipulation
//    PADIR |= 0xAAAA;            //Set alternating bits of Port A to output
//    PADIR &= ~0x5555;           //Set non output bits of Port A to input
//    PAREN =  0x5555;            //Set non output bits of Port A to have resistors enabled
//    PAOUT =  0x5555;            //Set non output bits of Port A to be pulled low with resistors
//    PBDIR &= ~0xAAAA;           //Set alternating bits of Port B to input
//    PBDIR |= 0x5555;            //Set non input bits of Port B to output
//    PBREN =  0x5555;            //Set non input bits of Port B to have resistors enabled
//    PBOUT =  0x5555;            //Set non input bits of Port B to be pulled high with resistors
//    while(1){
//        //Purpose of this file is to implement on FPGA
//        //Port B will be input tied to buttons/switches
//        //Port A output will be tied to LEDs
//        PAOUT &= PBIN;//Port A Out is assigned Port B In which is ANDed with 0xAAAA to
//    }
//}

//#include <msp430.h>
//int main(void) {
//    WDTCTL = WDTPW | WDTHOLD;   //stop watch dog timer
//    PM5CTL0 &= ~LOCKLPM5;       //Enable GPIO Manipulation
//    PADIR |= 0xFFFF;            //Set Port A to output
//    PBDIR &= ~0xFFFF;           //Set Port B to input
//    PBREN |= 0xFFFF;           //Set Port B to disable pull resistors
//    PBOUT &= ~0xFFFF;
//    while(1){
//        //Purpose of this file is to implement on FPGA
//        //Port B will be input tied to buttons/switches
//        //Port A output will be tied to LEDs
//        PAOUT = PBIN;
//    }
//}

//#include <msp430.h>
//int main(void) {
//    WDTCTL = WDTPW | WDTHOLD;   //stop watchdog timer
//    PM5CTL0 &= ~LOCKLPM5;       //Enable GPIO Manipulation
//    PADIR |= 0xFFFF;            //Set Port A to Output
//    PBDIR |= 0xFFFF;            //Set Port B to Output
//    while(1){
//        PAOUT |= 0xFFFF;        //Set Port A output to be high
//        PBOUT |= 0xFFFF;        //Set Port B output to be high
//        PAOUT &= ~0xFFFF;       //Set Port A output to be low
//        PBOUT &= ~0xFFFF;       //Set Port B output to be low
//    }
//}

//#include <msp430.h>
//int main(void) {
//    WDTCTL = WDTPW | WDTHOLD;   //stop watch dog timer
//    PM5CTL0 &= ~LOCKLPM5;       //Enable GPIO Manipulation
//    PADIR |= 0xFFFF;            //Set Port A to output
//    PBDIR &= ~0xFFFF;           //Set Port B to input
//    PBREN &= ~0xFFFF;           //Set Port B to disable pull resistors
//    while(1){
//        //Purpose of this file is to implement on FPGA
//        //Port B will be input tied to buttons/switches
//        //Port A output will be tied to LEDs
//    }
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

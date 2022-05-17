#include <msp430.h>


/**
 * main.c
 */

unsigned char decode_array[] = {0,56,40,55,24,0,39,52,8,57,0,0,23,0,36,13,120,0,41,54,0,0,0,53,7,0,0,0,20,19,125,18,104,105,0,0,25,106,38,0,0,58,0,0,0,0,37,14,119,118,0,0,0,107,0,0,4,0,3,0,109,108,2,1,88,0,89,0,0,0,0,51,9,10,90,0,22,11,0,12,0,0,42,43,0,0,0,0,0,0,0,0,21,0,126,127,103,0,102,0,0,0,0,0,0,0,91,0,0,0,0,0,116,117,0,0,115,0,0,0,93,94,92,0,114,95,113,0,72,71,0,68,73,0,0,29,0,70,0,69,0,0,35,34,121,0,122,0,74,0,0,30,6,0,123,0,0,0,124,17,0,0,0,67,26,0,27,28,0,59,0,0,0,0,0,15,0,0,0,0,0,0,0,0,5,0,0,0,110,0,111,16,87,84,0,45,86,85,0,50,0,0,0,46,0,0,0,33,0,83,0,44,75,0,0,31,0,0,0,0,0,0,0,32,100,61,101,66,0,62,0,49,99,60,0,47,0,0,0,48,77,82,78,65,76,63,0,64,98,81,79,80,97,96,112};
int frequency = 1;
unsigned int set_angle = 61;
unsigned long delayCounter = 0;
unsigned long delayLength = 1;

void delay(void) {
    delayCounter++;
    if (delayCounter >= delayLength) {
        if (frequency < 0) {
            frequency *= -1;
        }
        delayLength = frequency; // ((frequency / 4000) - 1) //max value is 13... which causes 290Hz

        if (delayLength > 13) {
            delayLength = 13;
        } else if (delayLength == 0) {
            delayLength = 1;
        }
        P2OUT ^=BIT4;
        delayCounter = 0;
    }
}

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
    // P2drives stepper motor
    // BIT 2 == EN
    // BIT 4 == STEP
    // BIT 5 == DIR
    P2DIR |=(BIT2+BIT4 + BIT5);

//    TB0CTL |= MC__CONTINUOUS + ID__1 + TBSSEL__SMCLK;
//    TB0CCTL0 |= CCIE;
//    TB0CCR0 = frequency;
//    __enable_interrupt();

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
//        temp = 119;

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
            temp = 0;
        }
        // frequency = 4000 - 63*(temp);
        frequency = (temp);
        delay();
    }
}

//#pragma vector = TIMER0_B0_VECTOR;
//interrupt void Timer_ISR(){
////    TB0CCR0+=frequency;
////    P2OUT ^=BIT4;
//    //frequency+=1;
//    TB0CCTL0 &=~ CCIFG;
////    TB0CCTL0
//
//}

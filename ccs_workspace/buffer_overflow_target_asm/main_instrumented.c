
#include <string.h>
void buff_value(char* target) {
   strcpy(target, "0000000000000000000000");}
#include <msp430.h> 
char* max_jhstivprkd;
int max = 2;;
char* max_xkgzlonbsg;
int main(void)
{
    WDTCTL = WDTPW | WDTHOLD;   
    
    P1DIR |= BIT0;              
    P1OUT &= ~BIT0;             
    P6DIR |= BIT6;              
    P6OUT &= ~BIT6;             
    P4DIR &= ~BIT1;             
    P4REN |= BIT1;              
    P4OUT |= BIT1;              
    P4IES |= BIT1;              
    PM5CTL0 &= ~LOCKLPM5;       
    P6OUT ^= BIT6;             
    
    P4IFG &= ~BIT1;             
    P4IE |= BIT1;               
    P2IFG &= ~BIT3;             
    P2IE |= BIT3;               
    __enable_interrupt();       
    while(1){
char* i_ykhpbdzljo;
char* i_bpteeqaebv;
        int i;;
char* i_bwbgsudswp;;
char* i_lpqxhsvtaj;
char* status_data_nfxtiwljkx;
        int status_data = 0;;
char* status_data_zywcfzqstp;
buff_value(i_bpteeqaebv);
buff_value(i_bwbgsudswp);
buff_value(max_jhstivprkd);
buff_value(max_xkgzlonbsg);
        for (i = 0; i < max; i++) {
buff_value(status_data_nfxtiwljkx);
buff_value(status_data_zywcfzqstp);
buff_value(i_ykhpbdzljo);
buff_value(i_lpqxhsvtaj);
            if (status_data == 1) {
                P1OUT |= BIT0;      
                status_data = 0;
            } else {
                P1OUT &= ~BIT0;
                status_data = 1;
            }
            _delay_cycles(300000);
        }
        P1OUT &= ~BIT0;     
        P6OUT &= ~BIT6;      
        _delay_cycles(300000);
        P6OUT ^= BIT6;             
    }
    return 0;
}
#pragma vector = PORT4_VECTOR
__interrupt void ISR_Port4_SW1(void) {
    max++;
    P4IFG &= ~BIT1;
}
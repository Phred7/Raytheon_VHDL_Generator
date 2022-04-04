
#include <string.h>
void buff_value(char* target) {
   strcpy(target, "0000000000000000000000");}


#include <msp430.h> 

#include <stdio.h>

/**

 * main.c

 */

int main(void)

{

	WDTCTL = WDTPW | WDTHOLD;	
	char message[8] = "MESSAGE";

char* status_zzmcbzrgpv;
	int status = 0;
;
char* status_nmoaimtxif;
buff_value(status_zzmcbzrgpv);
buff_value(status_nmoaimtxif);
	if (status == 0) {

	    printf(message);

	} else {

	    printf("default");

	}

	return 0;

}

    
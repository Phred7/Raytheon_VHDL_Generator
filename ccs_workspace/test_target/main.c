
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

char* status_ytfcrgjaqp;
	int status = 0;
;
char* status_sadrfxnlkw;
buff_value(status_ytfcrgjaqp);
buff_value(status_sadrfxnlkw);
	if (status == 0) {

	    printf(message);

	} else {

	    printf("default");

	}

	return 0;

}

    
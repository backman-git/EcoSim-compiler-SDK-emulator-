

#include "epl_acc_lis331dl.h"
#include "epl_uart.h"

static __xdata __at (0x289) char flag;
static __xdata __at (0x290) int8 ACCx;
static __xdata __at (0x291) int8 ACCy;
static __xdata __at (0x292) int8 ACCz;






void accInit(void){


    flag=0xba;
}




void accRead(int8 *pXVal, int8 *pYVal, int8 *pZVal){



	*pXVal=ACCx;
	*pYVal=ACCy;
	*pZVal=ACCz;







}
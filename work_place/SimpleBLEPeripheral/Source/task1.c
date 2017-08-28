#include "OSAL.h"
#include "OSAL_Tasks.h"
#include "task1.h"
#include "epl_uart.h"
#include "cc2540.h"
#include "epl_acc_lis331dl.h"




#define T1_PERIODIC_EVT_PERIOD                   2000

static uint8 TaskID;
static void performPeriodicTask( void );


static bool flag=false;



static uint16 step;

void Task1_Init(uint8 task_id) {


	TaskID=task_id;

	
	accInit();

#if defined UART_debug
	uartWriteString("-------T1---init--task---\n\r");
#endif
	osal_set_event( TaskID, T1_start );



}







uint16 Task1_ProcessEvent( uint8 task_id, uint16 events ) __reentrant{




 	if ( events & T1_start ){
   
        
 	


		osal_start_timerEx( TaskID, T1_PERIODIC_EVT, T1_PERIODIC_EVT_PERIOD );
		

		#if defined UART_debug
			uartWriteString("-------T1---start--\n\r");
    	#endif
    	return ( events ^ T1_start );
	}


	if( events & T1_PERIODIC_EVT ){


		if ( T1_PERIODIC_EVT_PERIOD )
    	{


    	
      		osal_start_timerEx( TaskID, T1_PERIODIC_EVT, T1_PERIODIC_EVT_PERIOD );
    	
    	}

    // Perform periodic application task
    	performPeriodicTask();




		return( events ^ T1_PERIODIC_EVT);
	}






	return 0;
}






static void performPeriodicTask( void ){


double pXVal=0;
	double pYVal=0;
	double pZVal=0;

	#if defined UART_debug 
		uartWriteString("-------T1---in the house---\n\r");
	#endif





	if(flag==true){

		flag=false;
		P0_0|=0x01;

	//	uartWriteString("       Yellow LED emit\n\r");


	}
	else{


		flag=true;
		P0_0&=~0x01;

	//	uartWriteString("        Yellow LED off\n\r");


	}


	


/*

	//accRead(&pXVal,&pYVal,&pZVal);

    if(pXVal*pXVal+pYVal*pYVal+pZVal*pZVal >5 ){
    	step++;
	}
	uartWriteString("X: ");
    	
    uartWriteU16(step);

    uartWriteString("\n\r");
*/

/*
if(pXVal<0.0)
	uartWriteString("X:-");
else
	uartWriteString("X:+");
 uartWriteString("\n\r");
if(pYVal<0.0)
	uartWriteString("Y:-");
else
	uartWriteString("Y:+");
 uartWriteString("\n\r");
if(pZVal<0.0)
	uartWriteString("Z:-");
else
	uartWriteString("Z:+");
 uartWriteString("\n\r");
uartWriteString("---------------\n\r");

*/




  




}



#include "OSAL.h"
#include "OSAL_Tasks.h"
#include "task1.h"
#include "epl_uart.h"
#include "cc2540.h"

#define T1_PERIODIC_EVT_PERIOD                   100

static uint8 TaskID;
static void performPeriodicTask( void );


static bool flag=false;

void Task1_Init(uint8 task_id) {



	TaskID=task_id;

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

	#if defined UART_debug 
		uartWriteString("-------T1---in the house---\n\r");
	#endif

	//P2=P1;

	
		//uartWriteString("Bulb value\n\r");
	


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




  




}



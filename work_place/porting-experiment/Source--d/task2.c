#include "OSAL.h"
#include "OSAL_Tasks.h"
#include "task2.h"
#include "epl_uart.h"
#include "cc2540.h"
#define T2_PERIODIC_EVT_PERIOD                   4000

static uint8 TaskID;
static void performPeriodicTask( void );

static bool flag=false;


void Task2_Init(uint8 task_id) {



	TaskID=task_id;

	#if defined UART_debug
		uartWriteString("-------T2---init--task---\n\r");
	#endif
	osal_set_event( TaskID, T2_start );



}







uint16 Task2_ProcessEvent( uint8 task_id, uint16 events ) __reentrant{




 	if ( events & T2_start ){
   
        
 	


		osal_start_timerEx( TaskID, T2_PERIODIC_EVT, T2_PERIODIC_EVT_PERIOD );

		#if defined UART_debug
			uartWriteString("-------T2---start--\n\r");
    	#endif
    	return ( events ^ T2_start );
	}


	if( events & T2_PERIODIC_EVT ){


		if ( T2_PERIODIC_EVT_PERIOD )
    	{
    		//osal_set_event( TaskID, T2_PERIODIC_EVT );

    	
      		osal_start_timerEx( TaskID, T2_PERIODIC_EVT, T2_PERIODIC_EVT_PERIOD );
    	
    	}

    // Perform periodic application task
    	performPeriodicTask();




		return( events ^ T2_PERIODIC_EVT);
	}






	return 0;
}






static void performPeriodicTask( void ){


	//uartWriteString("Knob value: \n\r");	
	//uartWriteU16(P1);

	//uartWriteString("T2---in hte house---");


	P2=P1;

//	uartWriteU16(P2);
	

	if(flag==true){

		flag=false;
		P0_1|=0x01;

	//	uartWriteString("       Yellow LED emit\n\r");


	}
	else{


		flag=true;
		P0_1&=~0x01;

	//	uartWriteString("        Yellow LED off\n\r");


	}



  




}



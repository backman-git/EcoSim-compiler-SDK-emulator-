
#include "epl_acc_lis331dl.h"
#include "epl_hal_spi.h"
#include "task_acc.h"
#include "hal_led.h"
#include "OSAL.h"
#include "OSAL_Tasks.h"
#include "epl_hal_uart.h"
#define ACC_PERIODIC_EVT_PERIOD                   125
static uint8 ACC_TaskID;
static void performPeriodicTask( void );

void  ACC_Init(uint8 task_id){

   ACC_TaskID= task_id;
  
  spiInit(SPI_MASTER);
  
  accInit();

  uartInit( HAL_UART_BR_57600 );



osal_set_event( ACC_TaskID, start_acc );

}



uint16 ACC_ProcessEvent( uint8 task_id, uint16 events ){






  if ( events & start_acc )
  {
   
    
    
    
   osal_start_timerEx( ACC_TaskID, ACC_PERIODIC_EVT, ACC_PERIODIC_EVT_PERIOD );
   osal_start_timerEx( ACC_TaskID, sample_blink_EVT, ACC_PERIODIC_EVT_PERIOD );

    return ( events ^ start_acc );
  }



 if ( events & sample_blink_EVT )
  {
     // HalLedSet (HAL_LED_2, HAL_LED_MODE_ON );
   
    
      HalLedSet (HAL_LED_1, HAL_LED_MODE_BLINK );
  
      
      
      osal_start_timerEx( ACC_TaskID, sample_blink_EVT, ACC_PERIODIC_EVT_PERIOD );
    return ( events ^ sample_blink_EVT);
  }
  


if ( events & ACC_PERIODIC_EVT )
  {
    // Restart timer
    if ( ACC_PERIODIC_EVT_PERIOD )
    {
      osal_start_timerEx( ACC_TaskID, ACC_PERIODIC_EVT, ACC_PERIODIC_EVT_PERIOD );
    }

    // Perform periodic application task
    performPeriodicTask();

    return (events ^ ACC_PERIODIC_EVT);
  }








return 0;
}


static void performPeriodicTask( void ){


    int16 pXVal=0;
    int16 pYVal=0;
    int16 pZVal=0;
  
  accReadAcc( &pXVal, &pYVal, &pZVal);
  
  
  //uartWriteU16(0x2412);
 
  uartWriteString("X: ");
  uartWriteU16(pXVal);
  uartWriteString("\n\r");
  uartWriteString("Y: ");
  uartWriteU16(pYVal);
  uartWriteString("\n\r");
  uartWriteString("Z: ");
  uartWriteU16(pZVal);
  uartWriteString("\n\r");
 uartWriteString("---------------\n\r");
  




}

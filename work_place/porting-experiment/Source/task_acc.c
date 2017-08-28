#include "epl_acc_lis331dl.h"
#include "epl_hal_spi.h"
#include "task_acc.h"
#include "hal_led.h"
#include "OSAL.h"
#include "OSAL_Tasks.h"
#include "epl_uart.h"


#include "BXprof.h"
#define ACC_PERIODIC_EVT_PERIOD                   10    /*ms*/
#define  ACC_PERIODIC_EVT_PERIOD2                 3000
#define sample_rate 1
#define win_long   100

static uint8 ACC_TaskID;

static bool flag=false;

 static void acc_time_stamp( void );
void counter(void);




static int time_stamp ;









void p2(void);



void  ACC_Init(uint8 task_id){





   ACC_TaskID= task_id;
  
  spiInit(SPI_MASTER);
  
  accInit();

  uartInit( HAL_UART_BR_57600 );


  
  
  time_stamp=0;
  
  
   #if defined UART_debug
    uartWriteString("ACC init\r\n");
  #endif

osal_set_event( ACC_TaskID, start_acc );

}



uint16 ACC_ProcessEvent( uint8 task_id, uint16 events )__reentrant{






  if ( events & start_acc )
  {
   
    
    
    
   osal_start_timerEx( ACC_TaskID, ACC_PERIODIC_EVT, ACC_PERIODIC_EVT_PERIOD );    //ms
   osal_start_timerEx( ACC_TaskID, sample_blink_EVT,  ACC_PERIODIC_EVT_PERIOD2 );
       #if defined UART_debug
      uartWriteString(" acc start\r\n");
     #endif
      

    return ( events ^ start_acc );
  }



 if ( events & sample_blink_EVT )
  {
     

     #if defined UART_debug
      uartWriteString("LED blink\r\n");
     #endif
      
    
    // HalLedSet (HAL_LED_1, HAL_LED_MODE_BLINK );



  if(flag==true){

    flag=false;
    P0_0|=0x01;
    

  //  uartWriteString("       Yellow LED emit\n\r");


  }
  else{


    flag=true;
    P0_0&=~0x01;

  //  uartWriteString("        Yellow LED off\n\r");


  }




    
    
    
    
    
    if ( ACC_PERIODIC_EVT_PERIOD2 )
    {
      osal_start_timerEx( ACC_TaskID, sample_blink_EVT, ACC_PERIODIC_EVT_PERIOD2 );
    }

 
    
     
    counter();
    
    
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
    acc_time_stamp();

    return (events ^ ACC_PERIODIC_EVT);
  }








return 0;
}
   int  c_frequency=0;
// recongization pattern
   char pre_sym=' ';
   
   


static bool sw=false;
static int step=0;

static void acc_time_stamp( void ){
   
   
    int8 pXVal=0;
    int8 pYVal=0;
    int8 pZVal=0;
    
    
  
  accRead( &pXVal, &pYVal, &pZVal);
  

   
   /*
  uartWriteString("acc: ");
  uartWriteU16(pXVal);
  uartWriteString("\r\n");
  */
  
  
  
  if(pXVal > 0x0010){
  //   uartWriteString("+");
     
     sw=true;
     
  }
  else if(pXVal <-16){
  
  
    if(sw==true){
    
       sw=false;
    
      step++;
   
     //uartWriteString("step: ");
     //uartWriteU16(step);
      //uartWriteString("\r\n");   
    
    }
  
  
  
  }
  
  
  
  
  
  
  
  
  
  
  
  
  
  /*
  uartWriteString("\r\n");
  uartWriteString("T: ");
  uartWriteU16(time_stamp++);
  uartWriteString("\r\n"); 
  
  
   */
  
  
   
   
   
   
   
   
   
   
   
   
    
   
   
 }
   
void counter(void){

     uartWriteString("step: ");
     uartWriteU16(step);
     uartWriteString("\r\n");   
   
 

    BX_SetParameter(BX_CHAR1,sizeof(char),&step);


  step=0;



}
 
 
 
   
   







#include "epl_uart.h"
#include "gatt.h"
#include "gattservapp.h"
#include "BxBleSig.h"


#define periodic_event 0x0001
#define PERIODIC_EVT_PERIOD   100

#define SERVAPP_NUM_ATTR_SUPPORTED        4


#define maxServiceN 10
typedef struct 
{
	gattAttribute_t* service;


	 gattServiceCBs_t* CBs ;



}GattTlb;

static void performPeriodicTask( void );


static __xdata __at (0x0000) GattTlb ServicesTable[maxServiceN];
static int ServiceN=0;



/*
typedef struct
{
  uint8 len;         //!< Length of UUID
  const uint8 *uuid; //!< Pointer to UUID
} gattAttrType_t;

*/

//( uint16 connHandle, gattAttribute_t *pAttr,  uint8 *pValue, uint8 *pLen, uint16 offset, uint8 maxLen )
/*
typedef struct attAttribute_t
{
  gattAttrType_t type; //!< Attribute type (2 or 16 octet UUIDs)
  uint8 permissions;   //!< Attribute permissions
  uint16 handle;       //!< Attribute handle - assigned internally by attribute server
  uint8* const pValue; //!< Attribute value - encoding of the octet array is defined in 
                       //!< the applicable profile. The maximum length of an attribute 
                       //!< value shall be 512 octets.
} gattAttribute_t;

*/


//( uint16 connHandle, gattAttribute_t *pAttr,  uint8 *pValue, uint8 *pLen, uint16 offset, uint8 maxLen )


static __xdata __at (0x65) uint16 connHandle;
static __xdata __at (0x67) uint24 uuidAddr;
static __xdata __at (0x71) uint8 pLen;
static __xdata __at (0x72) uint16 offset;
static __xdata __at (0x74) uint8 pValue[512];


//static __xdata __

 

static uint8 TaskID;



void GATTServApp_Init( uint8 taskId ){


	TaskID=taskId;

	//uartWriteString("GATTServApp init\r\n");

	ServiceN=0;


	osal_set_event( TaskID, periodic_event );
	




}


uint16 GATTServApp_ProcessEvent( uint8 taskId, uint16 events )__reentrant{


if( events & periodic_event ){


		if ( PERIODIC_EVT_PERIOD )
    	{

    		__asm

    		clr c
    		__endasm;
    	
      		osal_start_timerEx( TaskID, periodic_event, PERIODIC_EVT_PERIOD );
    	
    	}

    // Perform periodic application task
    	performPeriodicTask();
    //	uartWriteString("gatt----in the house\r\n");
    	




		return( events ^ periodic_event);
	}



	return 0;

}


 

static void performPeriodicTask( void ){

			
			void* TlbPtr;
			__code uint16* ptr=uuidAddr;

			gattAttribute_t* pAttr; 
			uint8 sIdx=0;
			uint8 i=0;
			uint8 j=0;
			bool found=false;
	
	
	 // //uartWriteString("gatt periodic task!~~~~~~~~~~~~~~~~~~\n\r");
	//read request
	
	 

	
	  switch(BleFeedback){


	  	case 0x03:

	  		//uartWriteString("ble service set!!!!\r\n");
	  		BleFeedback=0x00;
	  		BleOpr=0x00;



	  	break;


	  	case 0x04:


	  		//( uint16 connHandle, gattAttribute_t *pAttr,  uint8 *pValue, uint8 *pLen, uint16 offset, uint8 maxLen 
			//uartWriteString("target: ");
			//uartWriteU16(*ptr);
			//uartWriteString("P-> gatt periodic check read write request!\n\r");
			//uartWriteString(" in ary ========\r\n");

			
			//  can reduce loop time
			for(;i<ServiceN; i++){
				for( j=0;j<SERVAPP_NUM_ATTR_SUPPORTED;j++){
				
					TlbPtr = (((ServicesTable[i].service) [j] ).type).uuid;
					pAttr = &((ServicesTable[i].service)[j]);



					//uartWriteU16(pAttr->permissions);
					//uartWriteString("\n");
					//uartWriteU16(*(pAttr->pValue));
					//uartWriteString("\n");
					//uartWriteString("==next==\r\n");



						//TlbPtr= (((ServicesTable[i].service) [j] ).type).uuid;
				//	*(uint16*)TlbPtr


					if(   *(uint16*)(pAttr->type).uuid == *ptr ){

						
						//uartWriteU16(pAttr->permissions);
						//uartWriteString("\n");
						//uartWriteU16(*(pAttr->pValue));
						//uartWriteString("\n");
						//uartWriteString("==wrong==\r\n");



						found=true;	
						ServicesTable[i].CBs->pfnReadAttrCB(connHandle,pAttr,pValue,&pLen,offset,0x34);
						
					}
					if(found==true)
						break;


				}
				if(found==true)
						break;


			}
			//uartWriteString("out ary=====\r\n");

			if(found==true){
				BleOpr=0x04;
			}



			







	  	break;


	  	case 5:

			
			
			for(;i<ServiceN; i++){
				for( j=0;j<SERVAPP_NUM_ATTR_SUPPORTED;j++){
				
					TlbPtr = (((ServicesTable[i].service) [j] ).type).uuid;
					pAttr = &((ServicesTable[i].service)[j]);

					if(   *(uint16*)(pAttr->type).uuid == *ptr ){


						found=true;	
//( uint16 connHandle, gattAttribute_t *pAttr, uint8 *pValue, uint8 len, uint16 offset )

						ServicesTable[i].CBs->pfnWriteAttrCB(connHandle,pAttr,pValue,pLen,offset);

						
					}
					if(found==true)
						break;


				}
				if(found==true)
						break;


			}
			//uartWriteString("out ary=====\r\n");

			if(found==true){
				BleOpr=0x05;
			}



	  	break;




	  	default:

	  	break;




	  }




	


	






}

bStatus_t GATTServApp_AddService( uint32 services ){


	;
}






bStatus_t GATTServApp_RegisterService( gattAttribute_t *pAttrs, uint16 numAttrs,CONST gattServiceCBs_t *pServiceCBs ){

		int idx=ServiceN;

		if(ServiceN == maxServiceN )
			return false;




		

		ServicesTable[idx].service=pAttrs;
		ServicesTable[idx].CBs=pServiceCBs;

		

		//notify  ios  直接修改 Xram

		BleOpr=0x03;
		ServNH= (ServiceN>>8);
		ServNL=ServiceN;


		ServiceN++;
		
		return true;















}
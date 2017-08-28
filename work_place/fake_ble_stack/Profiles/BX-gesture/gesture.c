#include "bcomdef.h"
#include "OSAL.h"
#include "linkdb.h"
#include "att.h"
#include "gatt.h"
#include "gatt_uuid.h"
#include "gattservapp.h"
#include "gapbondmgr.h"
#include "epl_hal_uart.h"
#include "gesture.h"


#define SERVAPP_NUM_ATTR_SUPPORTED        17




//static void BX_HandleConnStatusCB( uint16 connHandle, uint8 changeType );



static uint8 BX_ReadAttrCB( uint16 connHandle, gattAttribute_t *pAttr, 
                            uint8 *pValue, uint8 *pLen, uint16 offset, uint8 maxLen );

static bStatus_t BX_WriteAttrCB( uint16 connHandle, gattAttribute_t *pAttr,
                                 uint8 *pValue, uint8 len, uint16 offset );


















CONST gattServiceCBs_t BX_CBs =
{
  BX_ReadAttrCB,  // Read callback function pointer
  BX_WriteAttrCB, // Write callback function pointer
  NULL                       // Authorization callback function pointer
};









// reverse uuid

CONST uint8 BXServUUID[ATT_BT_UUID_SIZE] =
{ 
  LO_UINT16(BX_SERV_UUID), HI_UINT16(BX_SERV_UUID)
};


CONST uint8 BXchar1UUID[ATT_BT_UUID_SIZE] =
{ 
  LO_UINT16(BX_CHAR1_UUID), HI_UINT16(BX_CHAR1_UUID)
};

CONST uint8 BXchar2UUID[ATT_BT_UUID_SIZE] =
{ 
  LO_UINT16(BX_CHAR2_UUID), HI_UINT16(BX_CHAR2_UUID)
};




static CONST gattAttrType_t BXService = { ATT_BT_UUID_SIZE, BXServUUID };







typedef struct // CHAR2
{
  uint8 X_value;
  uint8 Y_value;
  uint8 Z_value;
}ACC_struct;



#define BXChar1_Len 3

//char 1 read write able!
static uint8 BXChar1Props = GATT_PROP_READ|GATT_PROP_NOTIFY;

static ACC_struct BXChar1 ={0x01,0x02,0x03};



static uint8 BXChar1UserDesp[29] = "Acceleration bind values\0";



#define BXChar2_Len 1

//char 2 read write able!
static uint8 BXChar2Props = GATT_PROP_READ|GATT_PROP_NOTIFY;

static uint8 BXChar2 =0;

static uint8 BXChar2UserDesp[29] = "Enable byte\0";





















static gattAttribute_t BX_Tbl[SERVAPP_NUM_ATTR_SUPPORTED] = 
{
  // Simple Profile Service
  { 
    { ATT_BT_UUID_SIZE, primaryServiceUUID }, /* type */
    GATT_PERMIT_READ,                         /* permissions */
    0,                                        /* handle */
    (uint8 *)&BXService            /* pValue */
  },

    // Characteristic 1 Declaration
    { 
      { ATT_BT_UUID_SIZE, characterUUID },
      GATT_PERMIT_READ, 
      0,
      &BXChar1Props 
    },

      // Characteristic Value 1
      { 
        { ATT_BT_UUID_SIZE, BXchar1UUID },
        GATT_PERMIT_READ | GATT_PERMIT_WRITE, 
        0, 
       ((unsigned char*)&BXChar1) 
      },
   
    
      
     

      // Characteristic 1 User Description
      { 
        { ATT_BT_UUID_SIZE, charUserDescUUID },
        GATT_PERMIT_READ, 
        0, 
        BXChar1UserDesp 
      },      

   // Characteristic 2 Declaration
    { 
      { ATT_BT_UUID_SIZE, characterUUID },
      GATT_PERMIT_READ, 
      0,
      &BXChar2Props 
    },

      // Characteristic Value 2
      { 
        { ATT_BT_UUID_SIZE, BXchar2UUID },
        GATT_PERMIT_READ | GATT_PERMIT_WRITE, 
        0, 
       (&BXChar2) 
      },
   
    
      
     

      // Characteristic 2 User Description
      { 
        { ATT_BT_UUID_SIZE, charUserDescUUID },
        GATT_PERMIT_READ, 
        0, 
        BXChar2UserDesp 
      },      

      



};















bStatus_t BX_AddService( uint32 services ){
  uint8 status = SUCCESS;

  // Initialize Client Characteristic Configuration attributes

 


  //  with Link DB to receive link status change callback
//  VOID linkDB_Register( BX_HandleConnStatusCB );  
  
  if ( services & BX_SERVICE )
  {
    // Register GATT attribute list and CBs with GATT Server App
    status = GATTServApp_RegisterService( BX_Tbl, 
                                          GATT_NUM_ATTRS( BX_Tbl ),
                                          &BX_CBs );
  }

  return ( status );
}





bStatus_t BX_SetParameter( uint8 param, uint8 len, void *value )
{
  bStatus_t ret = SUCCESS;
  switch ( param )
  {
    case BX_CHAR1:
      if ( len == sizeof ( ACC_struct ) ) 
      {
        BXChar1 = *((ACC_struct*)value);
        
      
        attHandleValueNoti_t notify;
        notify.handle = 0x0025;
        notify.len = BXChar1_Len;
        osal_memcpy( notify.value, &BXChar1, BXChar1_Len );
        ATT_HandleValueNoti( 0x0000 , &notify );
        
        
        
        
        
      }
      else
      {
        ret = bleInvalidRange;
      }
      break;

    case BX_CHAR2:
      
      
       if ( len == sizeof ( uint8 ) ) 
      {
       
        
      
             BXChar2 = (*(uint8*)value);
            attHandleValueNoti_t notify;
            notify.handle = 0x0026;
            notify.len = BXChar2_Len;
            osal_memcpy( notify.value, &BXChar2, BXChar2_Len );
            ATT_HandleValueNoti( 0x0000 , &notify );
        
        
        
        
        
      }
      else
      {
        ret = bleInvalidRange;
      }
      break;
      
      
      
      
      
    default:
      ret = INVALIDPARAMETER;
      break;
  }
  
  return ( ret );
}





bStatus_t BX_GetParameter( uint8 param, void *value )
{
  bStatus_t ret = SUCCESS;
  switch ( param )
  {
    case BX_CHAR1:

      ;
      
      break;

   
      
    default:
      ret = INVALIDPARAMETER;
      break;
  }
  
  return ( ret );
}





// not yet unstand

/*
static void BX_HandleConnStatusCB( uint16 connHandle, uint8 changeType )
{ 
  // Make sure this is not loopback connection
  if ( connHandle != LOOPBACK_CONNHANDLE )
  {
    // Reset Client Char Config if connection has dropped
    if ( ( changeType == LINKDB_STATUS_UPDATE_REMOVED )      ||
         ( ( changeType == LINKDB_STATUS_UPDATE_STATEFLAGS ) && 
           ( !linkDB_Up( connHandle ) ) ) )
    { 
      GATTServApp_InitCharCfg( connHandle, simpleProfileChar4Config );
    }
  }


*/




static uint8 BX_ReadAttrCB( uint16 connHandle, gattAttribute_t *pAttr, 
                            uint8 *pValue, uint8 *pLen, uint16 offset, uint8 maxLen )
{
  bStatus_t status = SUCCESS;

  // If attribute permissions require authorization to read, return error
  if ( gattPermitAuthorRead( pAttr->permissions ) )
  {
    // Insufficient authorization
    return ( ATT_ERR_INSUFFICIENT_AUTHOR );
  }
  
  // Make sure it's not a blob operation (no attributes in the profile are long)
  if ( offset > 0 )
  {
    return ( ATT_ERR_ATTR_NOT_LONG );
  }
 
  if ( pAttr->type.len == ATT_BT_UUID_SIZE )
  {
    // 16-bit UUID
    uint16 uuid = BUILD_UINT16( pAttr->type.uuid[0], pAttr->type.uuid[1]);
    switch ( uuid )
    {
      // No need for "GATT_SERVICE_UUID" or "GATT_CLIENT_CHAR_CFG_UUID" cases;
      // gattserverapp handles those reads

      // characteristics 1 and 2 have read permissions
      // characteritisc 3 does not have read permissions; therefore it is not
      //   included here
      // characteristic 4 does not have read permissions, but because it
      //   can be sent as a notification, it is included here
      case BX_CHAR1_UUID:
      
        *pLen = BXChar1_Len;
        VOID osal_memcpy( pValue, pAttr->pValue, BXChar1_Len );
     
        
        break;
        
       case BX_CHAR2_UUID:
      
        *pLen = BXChar2_Len;
        VOID osal_memcpy( pValue, pAttr->pValue, BXChar2_Len );
     
        
        break;

    
        
      default:
        // Should never get here! (characteristics 3 and 4 do not have read permissions)
        *pLen = 0;
        status = ATT_ERR_ATTR_NOT_FOUND;
        break;
    }
  }
  else
  {
    // 128-bit UUID
    *pLen = 0;
    status = ATT_ERR_INVALID_HANDLE;
  }
   
  return ( status );
}




static bStatus_t BX_WriteAttrCB( uint16 connHandle, gattAttribute_t *pAttr,
                                 uint8 *pValue, uint8 len, uint16 offset )
{
  bStatus_t status = SUCCESS;
  //uint8 notifyApp = 0xFF;
  
  // If attribute permissions require authorization to write, return error
  if ( gattPermitAuthorWrite( pAttr->permissions ) )
  {
    // Insufficient authorization
    return ( ATT_ERR_INSUFFICIENT_AUTHOR );
  }
  
  
  
  if ( pAttr->type.len == ATT_BT_UUID_SIZE )
  {
    // 16-bit UUID
    uint16 uuid = BUILD_UINT16( pAttr->type.uuid[0], pAttr->type.uuid[1]);
    switch ( uuid )
    {
      case BX_CHAR1_UUID:
     

        //Validate the value
        // Make sure it's not a blob oper
        if ( offset == 0 )
        {
          if ( len != 1 )
          {
            status = ATT_ERR_INVALID_VALUE_SIZE;
          }
        }
        else
        {
          status = ATT_ERR_ATTR_NOT_LONG;
        }
        
        
        
        
        
        //Write the value
        if ( status == SUCCESS )
        {
          uint8 *pCurValue = (uint8 *)pAttr->pValue;        
            
            
          *pCurValue = pValue[0];

          
         
          
          
      //app callback    
     /*     if( pAttr->pValue == &BXChar1 )
          {
            notifyApp = BX_CHAR1;        
          }
   */
        }
             
        break;

      case GATT_CLIENT_CHAR_CFG_UUID:
        status = GATTServApp_ProcessCCCWriteReq( connHandle, pAttr, pValue, len,
                                                 offset, GATT_CLIENT_CFG_NOTIFY );
        break;
        
      default:
        // Should never get here! (characteristics 2 and 4 do not have write permissions)
        status = ATT_ERR_ATTR_NOT_FOUND;
        break;
    }
  }
  else
  {
    // 128-bit UUID
    status = ATT_ERR_INVALID_HANDLE;
  }

  // If a charactersitic value changed then callback function to notify application of change
 /* if ( (notifyApp != 0xFF ) && simpleProfile_AppCBs && simpleProfile_AppCBs->pfnSimpleProfileChange )
  {
    simpleProfile_AppCBs->pfnSimpleProfileChange( notifyApp );  
  }
  */
  return ( status );
}




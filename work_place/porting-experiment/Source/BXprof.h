



#ifdef __cplusplus
extern "C"
{
#endif
  
  #define BX_CHAR1                   0 
 
 
 
 // ???? 
  #include "bcomdef.h"
  
  
  
  #define BX_SERV_UUID               0xBAF0
  
  
  
  
  
  #define BX_CHAR1_UUID            0xBAF1
  
  
  #define BX_SERVICE               0x00000001
  
  
  
// app callback function type
typedef NULL_OK void (*BX_ProfileChange_t)( uint8 paramID );






// app callback
typedef struct
{
  BX_ProfileChange_t        BX_ProfileChange; 
} BX_ProfileCBs_t;





extern bStatus_t BX_AddService( uint32 services );


extern bStatus_t BX_RegisterAppCBs( BX_ProfileCBs_t *appCallbacks );

extern bStatus_t BX_SetParameter( uint8 param, uint8 len, void *value );



extern bStatus_t BX_GetParameter( uint8 param, void *value );

#ifdef __cplusplus
}
#endif
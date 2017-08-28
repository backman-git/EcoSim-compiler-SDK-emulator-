


#include "epl_acc_lis331dl.h"


#ifdef __cplusplus
extern "C"
{
#endif


#define start_acc 0x0001
#define sample_blink_EVT 0x0002
#define ACC_PERIODIC_EVT 0x0004  
  
extern void ACC_Init (uint8 task_id);








extern uint16 ACC_ProcessEvent( uint8 task_id, uint16 events );














#ifdef __cplusplus
}
#endif
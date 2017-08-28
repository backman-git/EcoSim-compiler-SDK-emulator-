


#define T1_start 0x0001
#define T1_PERIODIC_EVT 0x0002




void Task1_Init(uint8 task_id) ;

uint16 Task1_ProcessEvent( uint8 task_id, uint16 events )__reentrant ;
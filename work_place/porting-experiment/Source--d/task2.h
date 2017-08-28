


#define T2_start 0x0001
#define T2_PERIODIC_EVT 0x0002




void Task2_Init(uint8 task_id) ;

uint16 Task2_ProcessEvent( uint8 task_id, uint16 events )__reentrant ;
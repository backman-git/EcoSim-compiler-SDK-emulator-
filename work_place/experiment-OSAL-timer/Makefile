
OF=main.hex

CFLAGS= -I../hal/include \
		-I../hal/common \
		-I../hal/target/CC2540EB \
		-I. \
		-I../uart \
		-I./Source \
		-I../fake_ble_stack/ios \
		-I../SPI \
		-I../ACC
		
CFLAGS+=-I../osal/include \
		-I../osal \
		-I../fake_ble_stack/ble/controller/include \
		-I../fake_ble_stack/ble/include \
		-I../fake_ble_stack/Profiles/SimpleProfile \
		-I../fake_ble_stack/Profiles/Roles \
		-I../fake_ble_stack/ble/hci \
		-I../fake_ble_stack/ble/host \
		-I../fake_ble_stack/Profiles/BXprofile


DFLAGS= -D__GNUC__ \
        -D__sdcc__ \
        --data-loc 0x10 \
        --no-xinit-opt \
        --model-large \
        --stack-size 33 \
        -DEXTERNAL_RAM \
        -DEXT_RAM_LEN=3072 \
        --nogcse \
        --nolospre \
        --no-peep \
        --xram-loc 0x300 \
        -DHOST_CONFIG=PERIPHERAL_CFG \
        --std-c99 



All: SimpleBLEPeripheral_Main.hex
	cp ./SimpleBLEPeripheral_Main.hex ../firmwareServer/public/firmware/$(OF)






SimpleBLEPeripheral_Main.hex: SimpleBLEPeripheral_Main.ihx
	packihx SimpleBLEPeripheral_Main.ihx > SimpleBLEPeripheral_Main.hex





SimpleBLEPeripheral_Main.ihx: ./source/SimpleBLEPeripheral_Main.c OSAL.rel OSAL_ClockBLE.rel epl_uart.rel task1.rel task2.rel  simpleBLEPeripheral.rel \
	OSAL_Memory.rel OSAL_Timers.rel hal_assert.rel OSAL_SimpleBLEPeripheral.rel BX_ACC.rel \
	peripheral.rel BXprof.rel gatt_uuid.rel gattservapp.rel
	sdcc ${DFLAGS} ${CFLAGS}  ./source/SimpleBLEPeripheral_Main.c OSAL.rel simpleBLEPeripheral.rel  \
	 OSAL_Memory.rel OSAL_Timers.rel OSAL_SimpleBLEPeripheral.rel OSAL_ClockBLE.rel epl_uart.rel task1.rel task2.rel   gatt_uuid.rel\
	 peripheral.rel BXprof.rel gattservapp.rel BX_ACC.rel



OSAL_SimpleBLEPeripheral.rel: ./Source/OSAL_SimpleBLEPeripheral.c
	sdcc -c ${DFLAGS} ${CFLAGS} ./Source/OSAL_SimpleBLEPeripheral.c

#hal_drivers.rel: ../hal/common/hal_drivers.c
#	sdcc -c ${DFLAGS} ${CFLAGS} ../hal/common/hal_drivers.c

OSAL.rel: ../osal/common/OSAL.c 
	sdcc -c ${DFLAGS} ${CFLAGS} ../osal/common/OSAL.c

#osal_bufmgr.rel: ../osal/common/osal_bufmgr.c
#	sdcc -c ${DFLAGS} ${CFLAGS} ../osal/common/osal_bufmgr.c

#osal_cbtimer.rel: ../osal/common/osal_cbtimer.c
#	sdcc -c ${DFLAGS} ${CFLAGS} ../osal/common/osal_cbtimer.c

OSAL_ClockBLE.rel: ../osal/common/OSAL_ClockBLE.c
	sdcc -c ${DFLAGS} ${CFLAGS} ../osal/common/OSAL_ClockBLE.c

OSAL_Memory.rel: ../osal/common/OSAL_Memory.c
	sdcc -c ${DFLAGS} ${CFLAGS} ../osal/common/OSAL_Memory.c

#OSAL_PwrMgr.rel: ../osal/common/OSAL_PwrMgr.c
#	sdcc -c ${DFLAGS} ${CFLAGS} ../osal/common/OSAL_PwrMgr.c

OSAL_Timers.rel: ../osal/common/OSAL_Timers.c
	sdcc -c ${DFLAGS} ${CFLAGS} ../osal/common/OSAL_Timers.c

hal_assert.rel: ../hal/common/hal_assert.c
	sdcc -c ${DFLAGS} ${CFLAGS} ../hal/common/hal_assert.c

#OnBoard.rel: ../osal/include/OnBoard.c
#	sdcc -c ${DFLAGS} ${CFLAGS} ../osal/include/OnBoard.c

epl_uart.rel: ../uart/epl_uart.c
	sdcc -c ${DFLAGS} ${CFLAGS} ../uart/epl_uart.c

BX_ACC.rel: ../ACC/BX_ACC.c
	sdcc -c ${DFLAGS} ${CFLAGS} ../ACC/BX_ACC.c




task1.rel: ./Source/task1.c
	sdcc -c ${DFLAGS} ${CFLAGS} ./Source/task1.c

task2.rel: ./Source/task2.c
	sdcc -c ${DFLAGS} ${CFLAGS} ./Source/task2.c

simpleBLEPeripheral.rel: ./Source/simpleBLEPeripheral.c 
	sdcc -c ${DFLAGS} ${CFLAGS} ./Source/simpleBLEPeripheral.c
	

peripheral.rel: ../fake_ble_stack/Profiles/Roles/peripheral.c 
	sdcc -c ${DFLAGS} ${CFLAGS} ../fake_ble_stack/Profiles/Roles/peripheral.c

BXprof.rel: ../fake_ble_stack/Profiles/BXprofile/BXprof.c
	sdcc -c ${DFLAGS} ${CFLAGS} ../fake_ble_stack/Profiles/BXprofile/BXprof.c

gatt_uuid.rel: ../fake_ble_stack/ble/host/gatt_uuid.c
	sdcc -c ${DFLAGS} ${CFLAGS} ../fake_ble_stack/ble/host/gatt_uuid.c

gattservapp.rel: ../fake_ble_stack/ble/include/gattservapp.c
	sdcc -c ${DFLAGS} ${CFLAGS} ../fake_ble_stack/ble/include/gattservapp.c




cc:
	rm *.rst *.lst *.rel *.asm *.map *.mem *.sym *.hex *.ihx *.lk *.dot
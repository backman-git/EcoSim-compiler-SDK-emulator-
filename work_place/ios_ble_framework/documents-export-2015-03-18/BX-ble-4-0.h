//
//  BX-ble-4-0.h
//  ColdChain Demo
//
//  Created by EPL on 2014/4/11.
//  Copyright (c) 2014年 EPL. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreBluetooth/CoreBluetooth.h>
#import <CoreBluetooth/CBService.h>


#import "BX_polling_download.h"

#import "logging.h"



@interface BX_ble_4_0 : NSObject <CBCentralManagerDelegate, CBPeripheralDelegate,BX_polling_download>{




    NSMutableDictionary *peripherals;
    CBPeripheral *activePeripheral;
    int request;
    NSMutableArray *DEBUG_peripherals;
    
    //initial use
    
    

    
    NSData* init_time;
    NSData* init_date;
    NSData* init_interval;
    NSData* init_theshold;
    
    int oper_flag; // 1. init  2.polling  3.download  
    NSString* oper_tagID;

    NSString *g_current_temperature;
    NSString* g_current_battery;
    
    int error_flag;//1. can't not find service


//    id<BX_polling_download> info_delegate;



}

@property (strong, nonatomic)  NSMutableDictionary *peripherals;
@property (strong, nonatomic) CBCentralManager *CM;
@property (strong, nonatomic) CBPeripheral *activePeripheral;
@property (strong, nonatomic)  NSMutableArray *DEBUG_peripherals;

@property( nonatomic,assign)    id<BX_polling_download> info_delegate;

+(BX_ble_4_0*)getInstance;
- (int) controlSetup;




-(void)initial:(NSString *)tagID time:(unsigned char *)time date:(unsigned char *)date interval:(unsigned char *)interval threshold:(int)threshold;

-(void) writeValue:(int)serviceUUID characteristicUUID:(int)characteristicUUID  p:(CBPeripheral *)p data:(NSData *)data;
-(void) readValue: (int)serviceUUID characteristicUUID:(int)characteristicUUID  p:(CBPeripheral *)p;
-(void) notification:(int)serviceUUID characteristicUUID:(int)characteristicUUID  p:(CBPeripheral *)p on:(BOOL)on;
- (int) findBLEPeripherals:(int) timeout ;
-(void)single_query:(NSString*)tagID;

-(void)download:(NSString*)tagID;


/*
- (const char *) centralManagerStateToString: (int)state;
-(UInt16) swap:(UInt16)s;
- (void) printPeripheralInfo:(CBPeripheral*)peripheral;

- (void) printKnownPeripherals ;

-(UInt16) CBUUIDToInt:(CBUUID *) UUID;
*/




@end

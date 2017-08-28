//
//  BX_peripheral.h
//  BX_ble
//
//  Created by backman on 2015/3/19.
//  Copyright (c) 2015年 backman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreBluetooth/CoreBluetooth.h>
#import "ble_protocol.h"

@interface BX_peripheral : NSObject <CBPeripheralManagerDelegate,ble_protocol>{


    
    CBMutableService* newService;
    


    CBATTRequest* oprReq;
    
    
  
}

@property(strong,nonatomic) CBPeripheralManager* PM;
@property(strong,nonatomic) id<ble_protocol> ble_delegate;






+(BX_peripheral*)GetInstance;
-(void)fakeSetup;
-(void)Setup;
-(void)startADV;
-(void)SetupService:(unsigned int)Suuid AttTlb:(NSMutableDictionary*)attrs;
-(void)sendReadReq:(NSData*)v;
-(void)sendWriteFinishSig;



@end

//
//  BX_peripheral.h
//  BX_ble
//
//  Created by backman on 2015/3/19.
//  Copyright (c) 2015年 backman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreBluetooth/CoreBluetooth.h>

#import "sppProtocol.h"


@interface BX_peripheral : NSObject <CBPeripheralManagerDelegate,sppProtocol>{


    CBMutableService* SPPService;
    
    CBMutableCharacteristic* Tx;
    CBMutableCharacteristic* Rx;

    
    
  
}

@property(strong,nonatomic) CBPeripheralManager* PM;
@property(strong,nonatomic) id<sppProtocol> sppDelegate;






+(BX_peripheral*)GetInstance;
-(void)Setup;
-(void)SPPSetup:(NSString*)suuid;
-(void)SPP_Tx:(const char*)data;


@end

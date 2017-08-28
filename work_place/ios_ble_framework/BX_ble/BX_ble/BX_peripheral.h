//
//  BX_peripheral.h
//  BX_ble
//
//  Created by backman on 2015/3/19.
//  Copyright (c) 2015年 backman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreBluetooth/CoreBluetooth.h>

@interface BX_peripheral : NSObject <CBPeripheralManagerDelegate>{


    CBMutableCharacteristic* simpleChar;
    
    CBMutableService* simpleService;



}

@property(strong,nonatomic) CBPeripheralManager* PM;




+(BX_peripheral*)GetInstance;

-(void)Setup;
-(void)SetupChar;

@end

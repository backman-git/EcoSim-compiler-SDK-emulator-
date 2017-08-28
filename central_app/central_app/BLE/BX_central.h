//
//  centralSpp.h
//  Eco-simulator
//
//  Created by backman on 2015/5/6.
//
//

#import <Foundation/Foundation.h>
#import <CoreBluetooth/CoreBluetooth.h>
#import "sppProtocol.h"
@interface centralSpp : NSObject <CBCentralManagerDelegate,sppProtocol>{



    CBPeripheral *SPPPeripheral;
    CBService* SPPService;
    CBCharacteristic* txChar;
    CBCharacteristic* rxChar;
    
    
    CBUUID* SPPUUID;




}

@property(strong,nonatomic) CBCentralManager* CM;
@property(strong,nonatomic) id<sppProtocol> sppDelegate;



+(centralSpp*)GetInstance;
//start ble central stack
-(void)Setup;

//for SPP
-(void)establishSPP:(NSString*)SUUID;

-(void)SPP_Tx:(const char*)data;



@end

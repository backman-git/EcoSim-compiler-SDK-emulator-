//
//  centralSpp.h
//  Eco-simulator
//
//  Created by backman on 2015/5/6.
//
//

#import <Foundation/Foundation.h>
#import <CoreBluetooth/CoreBluetooth.h>
@interface centralSpp : NSObject <CBCentralManagerDelegate>{



//    CBService* SPPService;
//    CBCharacteristic* txChar;
//    CBCharacteristic* rxChar;
    
    
//    CBUUID* SPPUUID;
    
    NSMutableDictionary* connectPeripheralList;
    NSMutableDictionary* localNameToName;
    NSMutableArray* waittingConnectPeripheralList;
    NSMutableArray* waittingDiscovePeripheralList;
    
    NSTimer* connectPTimer;
    NSTimer* discoverPTimer;
    
    //should OPT!!!
    NSMutableArray* localName;
    
  
    
    CBPeripheral* BugPeripheral;

}

@property(strong,nonatomic) CBCentralManager* CM;



+(centralSpp*)GetInstance;
//start ble central stack
-(void)Setup;

//for SPP
-(void)establishSPP:(NSDictionary*) nameAndSUUID;

-(void)SPP_Tx:(const char*)data SUUID:(NSString*)uuid Name:(NSString*)name;



@end

//
//  BX_peripheral.m
//  BX_ble
//
//  Created by backman on 2015/3/19.
//  Copyright (c) 2015年 backman. All rights reserved.
//

#import "BX_peripheral.h"



@implementation BX_peripheral
@synthesize sppDelegate;
static BX_peripheral *instance =nil;

@synthesize PM;


+(BX_peripheral*)GetInstance{
    
    
    @synchronized(self)
    
    {
        
        if(instance == nil){
            
            
            instance=[BX_peripheral new];
            
            [instance Setup];
            
        }
        
        
        
        
    }
    
    
    
    return instance;
    
}



-(void)Setup{

    PM =[[CBPeripheralManager alloc] initWithDelegate:self queue:nil options:nil];
    
}


-(void)peripheralManagerDidUpdateState:(CBPeripheralManager *)peripheral{
    
    printf("Status of CoreBluetooth peripheral manager changed %ld (%s)\r\n",peripheral.state,[self peripheralManagerStateToString:peripheral.state]);
    
    

}

-(void)SPPSetup:(NSString*)suuid Name:(NSString *)name{

    deviceName=[[NSString alloc] initWithString:name ];

    CBUUID* SUUID = [CBUUID UUIDWithString:suuid];
    
    SPPService = [[CBMutableService alloc] initWithType:SUUID primary:YES];
    

    
     Rx=[[CBMutableCharacteristic alloc] initWithType:[CBUUID UUIDWithString:@"0xba01"]
                                                                   properties:CBCharacteristicPropertyRead|CBCharacteristicPropertyWrite|CBCharacteristicPropertyNotify
                                                                        value:nil permissions:CBAttributePermissionsReadable|CBAttributePermissionsWriteable];
     Tx=[[CBMutableCharacteristic alloc] initWithType:[CBUUID UUIDWithString:@"0xba02"]
                                                                   properties:CBCharacteristicPropertyRead|CBCharacteristicPropertyWrite|CBCharacteristicPropertyNotify
                                                                        value:nil permissions:CBAttributePermissionsReadable|CBAttributePermissionsWriteable];
    
    
    SPPService.characteristics=@[Tx,Rx];
    
    
    
    
    [PM addService:SPPService];
  

    
    
    
    
    
    

    [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(adv) userInfo:nil repeats:NO];



}



-(void)adv{

    [self SPPstartADV];
}







-(void)SPPstartADV{
    
    //adv service uuid in future!
    
    [PM startAdvertising:@{ CBAdvertisementDataLocalNameKey:deviceName, CBAdvertisementDataServiceUUIDsKey :@[SPPService.UUID]}];
    
}








- (void)peripheralManagerDidStartAdvertising:(CBPeripheralManager *)peripheral error:(NSError *)error {
    
    
    NSLog(@"start ADV");
    
    if (error) {
        NSLog(@"Error advertising: %@", [error localizedDescription]);
    }
    else{
        
        
    
    }
    
    
    
}





















- (void)peripheralManager:(CBPeripheralManager *)peripheral didAddService:(CBService *)service
error:(NSError *)error {
    
    
    
    if (error) {
        NSLog(@"Error publishing service: %@", [error localizedDescription]);
    }


}



-(void)SPP_Tx:(const char*)data{

    
    
    
    NSData* d = [NSData dataWithBytes:(const void *)data length:sizeof( char)*1];
    
    Tx.value=d;

    NSLog(@"send TX: %@",Tx.value);
    
   
    
    BOOL sendStatus= [PM updateValue:d forCharacteristic:Tx onSubscribedCentrals:nil];

    
    NSLog(sendStatus ? @"Yes" : @"No");



}



- (void)peripheralManager:(CBPeripheralManager *)peripheral central:(CBCentral *)central
didSubscribeToCharacteristic:(CBCharacteristic *)characteristic {
    
    NSLog(@"Central subscribed to characteristic %@", characteristic);
    
 //   [PM stopAdvertising];
    




}

    
    
        
    






-(void)peripheralManager:(CBPeripheralManager *)peripheral didReceiveWriteRequests:(NSArray *)requests
{
    
   // NSLog(@"Bulb get!!");
    
    
    for(CBATTRequest* obj in requests){
    
        
        if([self compareCBUUIDToInt:obj.characteristic.UUID UUID2: 0xba01] ){
            
            
          //   NSLog(@"get RX: %@ ",obj.value);
            [PM respondToRequest:obj withResult:CBATTErrorSuccess];
            
            
            Rx.value=obj.value;
            
            
            
            [sppDelegate SPP_Rx:obj.value];
            
            
            
        
        }
    
    }
    
    
    
    
    
    
    
}














- (const char *) peripheralManagerStateToString: (int)state{
    
    switch(state) {
        
        case CBPeripheralManagerStatePoweredOff:
            return "State BLE powered off (CBPeripheralManagerStatePoweredOff)";
        case CBPeripheralManagerStatePoweredOn:
            return "State powered up and ready (CBPeripheralManagerStatePoweredOn)";
        default:
            return "State unknown";
    }
    return "Unknown state";
}



-(UInt16) swap:(UInt16)s {
    UInt16 temp = s << 8;
    temp |= (s >> 8);
    return temp;
}




-(int) compareCBUUIDToInt:(CBUUID *)UUID1 UUID2:(UInt16)UUID2 {
    char b1[16];
    [UUID1.data getBytes:b1];
    UInt16 b2 = [self swap:UUID2];
    if (memcmp(b1, (char *)&b2, 2) == 0) return 1;
    else return 0;
}










@end

//
//  BX_peripheral.m
//  BX_ble
//
//  Created by backman on 2015/3/19.
//  Copyright (c) 2015年 backman. All rights reserved.
//

#import "BX_peripheral.h"

@implementation BX_peripheral

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

    //load from hex;
    
    
    
    
    PM =[[CBPeripheralManager alloc] initWithDelegate:self queue:nil options:nil];
    
    [self SetupChar];
    [self SetupService];

    
    
    
    [NSTimer scheduledTimerWithTimeInterval:1
                                     target:self
                                   selector:@selector(addService)
                                   userInfo:nil
                                    repeats:NO];

    
   
    
    
    
    [NSTimer scheduledTimerWithTimeInterval:1
                                     target:self
                                   selector:@selector(startADV)
                                   userInfo:nil
                                    repeats:NO];
    

    
    
}


-(void)addService{

[PM addService:simpleService];


}

-(void)startADV{



 [PM startAdvertising:@{ CBAdvertisementDataLocalNameKey:@"Backman_node",CBAdvertisementDataServiceUUIDsKey :@[simpleService.UUID] }];

}


-(void)SetupChar{
    
    
    CBUUID* simpleCharUUID = [CBUUID UUIDWithString:@"baf1"];

    UInt8 v= 0xba;

    simpleChar =[[CBMutableCharacteristic alloc] initWithType:simpleCharUUID
                                            properties:CBCharacteristicPropertyRead
                                            value:[[NSData alloc] initWithBytes:&v length:sizeof(v)]
                                            permissions:CBAttributePermissionsReadable];





}

-(void)SetupService{

    CBUUID* simpleServiceUUID = [CBUUID UUIDWithString:@"baf0"];
    simpleService = [[CBMutableService alloc] initWithType:simpleServiceUUID primary:YES];


    simpleService.characteristics = @[simpleChar];






}








-(void)peripheralManagerDidUpdateState:(CBPeripheralManager *)peripheral{

    
    
     printf("Status of CoreBluetooth peripheral manager changed %ld (%s)\r\n",peripheral.state,[self peripheralManagerStateToString:peripheral.state]);



}



- (void)peripheralManager:(CBPeripheralManager *)peripheral didAddService:(CBService *)service
error:(NSError *)error {
    
    NSLog(@"add service success");
    
    if (error) {
        NSLog(@"Error publishing service: %@", [error localizedDescription]);
    }


}

- (void)peripheralManagerDidStartAdvertising:(CBPeripheralManager *)peripheral
                                       error:(NSError *)error {
    
    
    NSLog(@"start adverting...");
    if (error) {
        NSLog(@"Error advertising: %@", [error localizedDescription]);
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













@end

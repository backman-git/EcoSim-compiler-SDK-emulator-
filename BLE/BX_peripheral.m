//
//  BX_peripheral.m
//  BX_ble
//
//  Created by backman on 2015/3/19.
//  Copyright (c) 2015年 backman. All rights reserved.
//

#import "BX_peripheral.h"
#import "AppDelegate.h"

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

    PM =[[CBPeripheralManager alloc] initWithDelegate:self queue:nil options:nil];
    
}


-(void)peripheralManagerDidUpdateState:(CBPeripheralManager *)peripheral{
    
    printf("Status of CoreBluetooth peripheral manager changed %ld (%s)\r\n",peripheral.state,[self peripheralManagerStateToString:peripheral.state]);
    
    

}

-(void)SPPSetup:(NSString*)suuid{


    CBUUID* SUUID = [CBUUID UUIDWithString:suuid];
    
    SPPService = [[CBMutableService alloc] initWithType:SUUID primary:YES];
    
    [PM addService:SPPService];

    [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(adv) userInfo:nil repeats:NO];



}



-(void)adv{

    [self SPPstartADV];
}







-(void)SPPstartADV{
    
    //adv service uuid in future!
    
    [PM startAdvertising:@{ CBAdvertisementDataLocalNameKey:@"Backman_node", CBAdvertisementDataServiceUUIDsKey :@[SPPService.UUID]}];
    
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




- (void)peripheralManager:(CBPeripheralManager *)peripheral didReceiveReadRequest:(CBATTRequest *)request {
    
    
    
        
    
}


-(void)sendReadReq:(NSData*)v{


    
   
    



}





-(void)peripheralManager:(CBPeripheralManager *)peripheral didReceiveWriteRequests:(NSArray *)requests
{
    
    
    
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

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
@synthesize ble_delegate;


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

// ios start then add.     fake stack   add then start!!
-(void)fakeSetup{

    [ble_delegate didSetup];
}


-(void)peripheralManagerDidUpdateState:(CBPeripheralManager *)peripheral{
    
    
    
    printf("Status of CoreBluetooth peripheral manager changed %ld (%s)\r\n",peripheral.state,[self peripheralManagerStateToString:peripheral.state]);
    
    
    
}

-(void)startADV{
    
    //adv service uuid in future!
    
    [PM startAdvertising:@{ CBAdvertisementDataLocalNameKey:@"Backman_node", CBAdvertisementDataServiceUUIDsKey :@[newService.UUID]}];
    
}



- (void)peripheralManagerDidStartAdvertising:(CBPeripheralManager *)peripheral error:(NSError *)error {
    
    
    if (error) {
        NSLog(@"Error advertising: %@", [error localizedDescription]);
    }
    else{
        
        [ble_delegate didAdv];
        
    
    }
    
    
    
}










-(void)SetupService:(unsigned int)Suuid AttTlb:(NSMutableDictionary*)attrs{

    NSMutableArray* Chars;
    
    Chars=[[NSMutableArray alloc] init];
    
    
    // fix to 10
    for(NSString* key in attrs){
        
        
     
        
        NSValue* obj = [attrs objectForKey:key];
        
        AttrsCell att;
        
        [obj getValue:&att];
        
    // set new uuid
        
        
        
        CBUUID* UUID = [CBUUID UUIDWithString:key];
        
        //property
        unsigned int ios_prop=0x00;
        unsigned int ios_permission=0x00;

        
        
        
        if(att.permission&0x01){
            
            ios_prop|=CBCharacteristicPropertyRead;
            ios_permission|=CBAttributePermissionsReadable;
            
        }
        if(att.permission&0x02){
            
            ios_prop|=CBCharacteristicPropertyWrite;
            ios_permission|=CBAttributePermissionsWriteable;
            
        }
        
   // set new char
      
     
        
        
        if(abs(Suuid - att.uuid )<0xff){

            
            [Chars addObject: [[CBMutableCharacteristic alloc] initWithType:UUID
                                                             properties:ios_prop
                                                                  value:nil
                                                            permissions:ios_permission]] ;
        }
    }
    
    CBUUID* SUUID = [CBUUID UUIDWithString:[NSString stringWithFormat:@"0x%X",Suuid]];
   
    

    newService = [[CBMutableService alloc] initWithType:SUUID primary:YES];
    
  
    
   
    
    
    
    newService.characteristics = Chars;

    [PM addService:newService];
}















- (void)peripheralManager:(CBPeripheralManager *)peripheral didAddService:(CBService *)service
error:(NSError *)error {
    
    [ble_delegate didAddService];
    
    
    if (error) {
        NSLog(@"Error publishing service: %@", [error localizedDescription]);
    }


}




- (void)peripheralManager:(CBPeripheralManager *)peripheral didReceiveReadRequest:(CBATTRequest *)request {
    
     //polling!!
    
    
   
    
    if( [ble_delegate readRequest:request.characteristic.UUID offset:request.offset ])
    {
    
         oprReq=request;
    
    }
    
    
    
    
        
    
}


-(void)sendReadReq:(NSData*)v{


    
    oprReq.value = v;
    
    
    
    [PM respondToRequest:oprReq withResult:CBATTErrorSuccess];
    
    oprReq=nil;
    



}





-(void)peripheralManager:(CBPeripheralManager *)peripheral didReceiveWriteRequests:(NSArray *)requests
{
     oprReq=[requests objectAtIndex:0];
  
    printf("write req");
    
    [ble_delegate writeRequest:oprReq.characteristic.UUID value:oprReq.value];
    
    
    
    
    
}

-(void)sendWriteFinishSig{


    
    [PM respondToRequest:oprReq withResult:CBATTErrorSuccess];
    oprReq= nil;


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

//
//  BX_central.m
//  Eco-simulator
//
//  Created by backman on 2015/5/6.
//
//

#import "BX_central.h"

@implementation BX_central

@synthesize CM;
static BX_central *instance =nil;






+(BX_central*)GetInstance{

    
    @synchronized(self)
    
    {
        
        if(instance == nil){
            
            
            instance=[BX_central new];
            
            [instance Setup];
            
            
            
            
        }
        
        
        
        
    }
    
    
    
    return instance;



}




-(void)Setup{


    CM =[[CBCentralManager alloc] initWithDelegate:self queue:nil options:nil];
    
    activePeripheral=nil;
}




-(int)Scan:(int)timeout{


    if (self->CM.state  != CBCentralManagerStatePoweredOn) {
        printf("CoreBluetooth not correctly initialized !\r\n");
        printf("State = %ld (%s)\r\n",self->CM.state,[self centralManagerStateToString:self.CM.state]);
        return -1;
    }
    
    
  
    
    [NSTimer scheduledTimerWithTimeInterval:timeout target:self selector:@selector(stopscan:) userInfo:nil repeats:NO];
    
    


    
    

     [CM scanForPeripheralsWithServices:nil options:nil];

    return 0;

}


-(void)stopscan:(NSTimer*)timer{
    
    [self.CM stopScan];




}




- (void)centralManager:(CBCentralManager *)central didDiscoverPeripheral:(CBPeripheral *)peripheral
     advertisementData:(NSDictionary *)advertisementData
     RSSI:(NSNumber *)RSSI {

    
    
    //find peripheral service   maybe change advertisementData
    for(CBService *obj in peripheral.services){
    
        if(obj.UUID == [CBUUID UUIDWithString:@"0xba00"]){
            [CM connectPeripheral:peripheral options:nil];
        }
        
    
    
    
    }
    
    
    
   


}







- (void)centralManager:(CBCentralManager *)central didConnectPeripheral:(CBPeripheral *)peripheral {
    
    
    
    for(CBService *obj in peripheral.services){
        
        if(obj.UUID == [CBUUID UUIDWithString:@"0xba00"]){
            
            for(CBCharacteristic *c in obj.characteristics)
                if(c.UUID == [CBUUID UUIDWithString:@"0xba01"])
                    [peripheral readValueForCharacteristic:c];
        }
        
        
        
        
        
    }
    
    
    
}




- (void)peripheral:(CBPeripheral *)peripheral didUpdateValueForCharacteristic:(CBCharacteristic *)characteristic error:(NSError *)error {
    
    
    
    UInt16 characteristicUUID = [self CBUUIDToInt:characteristic.UUID];
    Byte tempData;
    
    if (!error) {
        
        
        
        
        switch(characteristicUUID){
                
            case 0xba01:{
                
                [characteristic.value getBytes:&tempData length:1];
                NSInteger i= tempData;
                NSLog( [NSString stringWithFormat:@"%ld",(long)i] );
            
            }
                break;
            default:{
            
            
            }
                break;
        
        }
        
        
        
    }
    else {
        printf("updateValueForCharacteristic failed !");
        
    }
    
    
    
}














// help function



/*!
 *  @method printKnownPeripherals:
 *
 *  @discussion printKnownPeripherals prints all curenntly known peripherals stored in the peripherals array of TIBLECBKeyfob class
 *
 */




/*
 *  @method printPeripheralInfo:
 *
 *  @param peripheral Peripheral to print info of
 *
 *  @discussion printPeripheralInfo prints detailed info about peripheral
 *
 */
- (void) printPeripheralInfo:(CBPeripheral*)peripheral {
    printf("------------------------------------\r\n");
    printf("Peripheral Info :\r\n");
    printf("RSSI : %d\r\n",[peripheral.RSSI intValue]);
    NSLog(@"Name : %@\r\n",peripheral.name);
    printf("isConnected : %d\r\n",peripheral.isConnected);
    printf("-------------------------------------\r\n");
    
    
}



-(int) compareCBUUIDToInt:(CBUUID *)UUID1 UUID2:(UInt16)UUID2 {
    char b1[16];
    [UUID1.data getBytes:b1];
    UInt16 b2 = [self swap:UUID2];
    if (memcmp(b1, (char *)&b2, 2) == 0) return 1;
    else return 0;
}


-(UInt16) CBUUIDToInt:(CBUUID *) UUID {
    char b1[16];
    [UUID.data getBytes:b1];
    return ((b1[0] << 8) | b1[1]);
}








//utility function


/*!
 *  @method swap:
 *
 *  @param s Uint16 value to byteswap
 *
 *  @discussion swap byteswaps a UInt16
 *
 *  @return Byteswapped UInt16
 */

-(UInt16) swap:(UInt16)s {
    UInt16 temp = s << 8;
    temp |= (s >> 8);
    return temp;
}



/*
 *  @method UUIDSAreEqual:
 *
 *  @param u1 CFUUIDRef 1 to compare
 *  @param u2 CFUUIDRef 2 to compare
 *
 *  @returns 1 (equal) 0 (not equal)
 *
 *  @discussion compares two CFUUIDRef's
 *
 */





- (int) UUIDSAreEqual:(CFUUIDRef)u1 u2:(CFUUIDRef)u2 {
    CFUUIDBytes b1 = CFUUIDGetUUIDBytes(u1);
    CFUUIDBytes b2 = CFUUIDGetUUIDBytes(u2);
    if (memcmp(&b1, &b2, 16) == 0) {
        return 1;
    }
    else return 0;
}





- (const char *) centralManagerStateToString: (int)state{
    switch(state) {
        case CBCentralManagerStateUnknown:
            return "State unknown (CBCentralManagerStateUnknown)";
        case CBCentralManagerStateResetting:
            return "State resetting (CBCentralManagerStateUnknown)";
        case CBCentralManagerStateUnsupported:
            return "State BLE unsupported (CBCentralManagerStateResetting)";
        case CBCentralManagerStateUnauthorized:
            return "State unauthorized (CBCentralManagerStateUnauthorized)";
        case CBCentralManagerStatePoweredOff:
            return "State BLE powered off (CBCentralManagerStatePoweredOff)";
        case CBCentralManagerStatePoweredOn:
            return "State powered up and ready (CBCentralManagerStatePoweredOn)";
        default:
            return "State unknown";
    }
    return "Unknown state";
}





@end

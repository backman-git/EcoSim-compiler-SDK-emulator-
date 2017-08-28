//
//  centralSpp.m
//  Eco-simulator
//
//  Created by backman on 2015/5/6.
//
//

#import "centralSpp.h"


@implementation centralSpp

@synthesize CM,sppDelegate;
static centralSpp *instance =nil;






+(centralSpp*)GetInstance{

    
    @synchronized(self)
    
    {
        
        if(instance == nil){
            
            
            instance=[centralSpp new];
            
            [instance Setup];
            
            
            
            
        }
        
        
        
        
    }
    
    
    
    return instance;



}



- (void)centralManagerDidUpdateState:(CBCentralManager *)central {
    printf("Status of CoreBluetooth central manager changed %ld (%s)\r\n",central.state,[self centralManagerStateToString:central.state]);
}















// start BLE central
-(void)Setup{


    CM =[[CBCentralManager alloc] initWithDelegate:self queue:nil options:nil];
    
    SPPPeripheral=nil;
    SPPUUID=nil;
    txChar=nil;
    rxChar=nil;
}





-(void)establishSPP:(NSString*)SUUID{

    SPPUUID=[CBUUID UUIDWithString:SUUID];
    
    NSLog(@"establlish %@",SPPUUID);
    

//scan
    [self sppScan:3];
    










}



-(int)sppScan:(int)timeout {
    
    
    if (self->CM.state  != CBCentralManagerStatePoweredOn) {
        printf("CoreBluetooth not correctly initialized !\r\n");
        printf("State = %ld (%s)\r\n",self->CM.state,[self centralManagerStateToString:self.CM.state]);
        return -1;
    }
    
    
    
    
   // [NSTimer scheduledTimerWithTimeInterval:timeout target:self selector:@selector(stopscan:) userInfo:nil repeats:NO];
    
    
    NSArray *s_ary;
    
    s_ary=[NSArray arrayWithObjects:SPPUUID,nil];
    
    
    [CM scanForPeripheralsWithServices:s_ary options:nil];
    
    return 0;
    
}























-(int)Scan:(int)timeout{


    if (self->CM.state  != CBCentralManagerStatePoweredOn) {
        printf("CoreBluetooth not correctly initialized !\r\n");
        printf("State = %ld (%s)\r\n",self->CM.state,[self centralManagerStateToString:self.CM.state]);
        return -1;
    }
    
    
  
    
   // [NSTimer scheduledTimerWithTimeInterval:timeout target:self selector:@selector(stopscan:) userInfo:nil repeats:NO];
    
    

     [CM scanForPeripheralsWithServices:nil options:nil];

    return 0;

}


-(void)stopscan:(NSTimer*)timer{
    
    [self.CM stopScan];




}




- (void)centralManager:(CBCentralManager *)central didDiscoverPeripheral:(CBPeripheral *)peripheral
     advertisementData:(NSDictionary *)advertisementData
     RSSI:(NSNumber *)RSSI {

    
    NSLog(@"%@",advertisementData);
    

    
    //check spp device
    if([[advertisementData objectForKey:@"kCBAdvDataLocalName"] isEqualToString:@"LCD"] ){
        
        NSLog(@"connecting...");
        
        
        //bug?????????????????????
        SPPPeripheral=peripheral;
        
        NSLog(@"%@",peripheral);
         [CM connectPeripheral:peripheral options:nil];
        
    }
        
    
    
   


}






- (void)centralManager:(CBCentralManager *)central didConnectPeripheral:(CBPeripheral *)peripheral {
    
    
    NSLog(@"did connect");

    //spp
    if([peripheral.name isEqual:SPPPeripheral.name]==true){
       
        NSLog(@"find one");
        SPPPeripheral.delegate = self;
        [SPPPeripheral discoverServices:nil];
    
    
    
    
    
    }
        
        
    
    
    
    
}





- (void)peripheral:(CBPeripheral *)peripheral didDiscoverServices:(NSError *)error {
    
    for (CBService *service in peripheral.services) {
        
        if([self compareCBUUIDToInt:service.UUID  UUID2:0xba00 ]){
            SPPService=service;
            [peripheral discoverCharacteristics:nil forService:SPPService];
            break;
            
            
        
        }

    }
    
}



- (void)peripheral:(CBPeripheral *)peripheral didDiscoverCharacteristicsForService:(CBService *)service
error:(NSError *)error {
    
    for (CBCharacteristic *characteristic in service.characteristics) {
        
        
        if([self compareCBUUIDToInt:characteristic.UUID UUID2:0xba01]){
        
            txChar=characteristic;
        
        
        }
        
        
        if([self compareCBUUIDToInt:characteristic.UUID UUID2:0xba02]){
            
            rxChar=characteristic;
            [peripheral setNotifyValue:YES forCharacteristic:characteristic];
        
            NSLog(@"subscribe RX:%@",characteristic);
        }
        
        
        
        
        
    }
    
}


- (void)peripheral:(CBPeripheral *)peripheral
didUpdateValueForCharacteristic:(CBCharacteristic *)characteristic
             error:(NSError *)error {
    


    if([self compareCBUUIDToInt:characteristic.UUID UUID2:0xba02]){
        
        
        if(characteristic.value!=nil){
            
            NSString* tmpData = [[NSString alloc] initWithData:characteristic.value encoding:NSUTF8StringEncoding];
            
            [sppDelegate SPP_Rx:tmpData];
        }
        
        
    }




}








- (void)peripheral:(CBPeripheral *)peripheral didUpdateNotificationStateForCharacteristic:(CBCharacteristic *)characteristic
             error:(NSError *)error {
    
    if (error) {
        NSLog(@"Error changing notification state: %@",
              [error localizedDescription]);
    }

    NSLog(@"subscribe success");
    
 
    
    
    
    
}



-(void)SPP_Tx:(const char*)data{
    
    
    NSData* d = [NSData dataWithBytes:(const void *)data length:sizeof( char)*1];

    NSLog(@"send TX");
    
    [SPPPeripheral writeValue:d forCharacteristic:txChar type:CBCharacteristicWriteWithResponse];

    
    





}



- (void)peripheral:(CBPeripheral *)peripheral didWriteValueForCharacteristic:(CBCharacteristic *)characteristic
error:(NSError *)error {
    
    if (error) {
        NSLog(@"Error writing characteristic value: %@",
              [error localizedDescription]);
    }else{
    
    

        [sppDelegate SPP_TxSuccess];
    
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

//
//  centralSpp.m
//  Eco-simulator
//
//  Created by backman on 2015/5/6.
//
//

#import "centralSpp.h"


@implementation centralSpp

@synthesize CM;
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
    
    if(central.state == CBCentralManagerStatePoweredOn ){
        
      //  [[NSNotificationCenter defaultCenter] postNotificationName:@"SPP_INIT" object:nil userInfo:nil];

    
    
    }
    
    
    
}















// start BLE central
-(void)Setup{


    CM =[[CBCentralManager alloc] initWithDelegate:self queue:nil options:nil];
    
    connectPeripheralList= [NSMutableDictionary dictionaryWithCapacity:7];
    localNameToName=[NSMutableDictionary dictionaryWithCapacity:7];
    localName=[NSMutableArray arrayWithCapacity:7];
    waittingConnectPeripheralList=  [NSMutableArray arrayWithCapacity:7];
    waittingDiscovePeripheralList=  [NSMutableArray arrayWithCapacity:7];
    
    
    
}





-(void)establishSPP:(NSDictionary*) nameAndSUUID {

    
    NSMutableArray *s_ary=[NSMutableArray arrayWithCapacity:30 ];
    
    NSEnumerator *enumerator = [nameAndSUUID keyEnumerator];
    id key;
    
    while ((key = [enumerator nextObject])) {
        
        // update name hex table
        [localName addObject:key ];
        
        //scan services
        
        [s_ary addObject:[CBUUID UUIDWithString: nameAndSUUID[key]]  ];

        
        
        

    }
    
    
    
    
   
    
    
    
    
    
    
    
    NSLog(@"establlish %@",nameAndSUUID);
    
    

//scan
    [self sppScan:3 sAry:s_ary];
    
}



-(int)sppScan:(int)timeout sAry:(NSArray*)s_ary {
    
    
    if (self->CM.state  != CBCentralManagerStatePoweredOn) {
        printf("CoreBluetooth not correctly initialized !\r\n");
        printf("State = %ld (%s)\r\n",self->CM.state,[self centralManagerStateToString:self.CM.state]);
        return -1;
    }
    
    
    
    
   // [NSTimer scheduledTimerWithTimeInterval:timeout target:self selector:@selector(stopscan:) userInfo:nil repeats:NO];
    
    
    connectPTimer = [NSTimer scheduledTimerWithTimeInterval:5 target:self selector:@selector(connectProcess) userInfo:nil repeats:YES];
    
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
    
    
 
    connectPTimer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(connectProcess) userInfo:nil repeats:YES];
   



}


-(void) connectProcess{
    

    if([waittingConnectPeripheralList count] !=0){
    
        CBPeripheral* tmp= [waittingConnectPeripheralList lastObject ];
    
        NSLog(@"connect ====>%@",tmp);
    
        [CM connectPeripheral: tmp options:nil];

       
   
    }
    else{
         [connectPTimer invalidate];

    
        discoverPTimer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(discoverProcess) userInfo:nil repeats:YES];

    
    }
    
    
    
    
}

-(void)discoverProcess{

    
    
    if([waittingDiscovePeripheralList count] !=0){
        
        CBPeripheral* obj= [waittingDiscovePeripheralList lastObject ];
        
        NSLog(@"discover ====>%@",obj);
        
     //   obj.delegate=self;
     //   [obj discoverServices:nil];
        
        
        
        
    }
    else{
        [discoverPTimer invalidate];
        [[NSNotificationCenter defaultCenter] postNotificationName:@"SPP_START" object:nil userInfo:nil];
        
        
        
        
    }

    
    

}




- (void)centralManager:(CBCentralManager *)central didDiscoverPeripheral:(CBPeripheral *)peripheral
     advertisementData:(NSDictionary *)advertisementData
     RSSI:(NSNumber *)RSSI {

    
    NSLog(@"%@",advertisementData);
    
   
    for(NSString* lName in localName)
    {
        NSLog(@"lName: %@",lName);
        
        
        
            //check spp device
            if([[advertisementData objectForKey:@"kCBAdvDataLocalName"] isEqualToString:(NSString*)lName] ){
            
                
            
                [localNameToName setValue:peripheral.name forKey:lName];
                
                NSLog(@"%@",localNameToName);
            
            //bug?????????????????????
                BugPeripheral=peripheral;
                
            
                NSLog(@"add %@ to waitting queue",peripheral);
                
                [waittingConnectPeripheralList addObject:peripheral];
                
                
            
            }

        
        
        
        
    
    }
    

    
    
    
   


}


- (void)centralManager:(CBCentralManager *)central didFailToConnectPeripheral:(CBPeripheral *)peripheral error:(NSError *)error
{
    NSLog(@"Failed to connect to %@. (%@)", peripheral, [error localizedDescription]);
    
    
    
}








- (void)centralManager:(CBCentralManager *)central didConnectPeripheral:(CBPeripheral *)peripheral {
    
   
    
    NSLog(@"didConnect %@",peripheral);
    
    
    peripheral.delegate=self;
    [peripheral discoverServices:nil];
    
    
    
    [waittingDiscovePeripheralList addObject:peripheral];
    
    
   
    

    
   
    
    
    
    
    
    
}





- (void)peripheral:(CBPeripheral *)peripheral didDiscoverServices:(NSError *)error {
    

    [waittingDiscovePeripheralList removeLastObject];

    
    
    for (CBService *service in peripheral.services) {
        
        //LCD service
        if([self compareCBUUIDToInt:service.UUID  UUID2:0xba00 ]){
            
            [peripheral discoverCharacteristics:nil forService:service];
        }
        
        //Knob service
        if([self compareCBUUIDToInt:service.UUID  UUID2:0xbaf0 ]){
            [peripheral discoverCharacteristics:nil forService:service];
            
        }
        
        
        
        
        
        

    }
    
}



- (void)peripheral:(CBPeripheral *)peripheral didDiscoverCharacteristicsForService:(CBService *)service
error:(NSError *)error {
    
    

    [waittingConnectPeripheralList removeLastObject];

    
    
    NSEnumerator *enumerator = [localNameToName keyEnumerator];
    NSString* key;
    
    while ((key = [enumerator nextObject])) {
        
        
        if( [ peripheral.name  isEqual:localNameToName[key]]){
            
            
            NSLog(@"didFind char in  %@",peripheral);
            
            
            //subscribe RX
            
            for(CBCharacteristic* Cobj in service.characteristics){
                
                if([self CBUUIDToInt: Cobj.UUID ] == ([self CBUUIDToInt: service.UUID ]+2 )    ){
                        [peripheral setNotifyValue:YES forCharacteristic:Cobj ];

                        NSLog(@"subscribe RX:%@",Cobj);

                }
            }
            
            
            
            
            NSLog(@"add %@ to connect lists",peripheral);
            
            
           [connectPeripheralList setValue:peripheral forKey:key];
            

            
            
            
        }
        
        
        
    }
    

    
    
    
    
    
    /*
    
    
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
     */
    
}


- (void)peripheral:(CBPeripheral *)peripheral
didUpdateValueForCharacteristic:(CBCharacteristic *)characteristic
             error:(NSError *)error {
    


    if([self compareCBUUIDToInt:characteristic.UUID UUID2:0xba02]){
        
        
        if(characteristic.value!=nil){
            
            
            
        //    NSString* tmpData = [[NSString alloc] initWithData:characteristic.value encoding:NSUTF8StringEncoding];
            
         
            
            
            // find local name
            NSEnumerator *enumerator = [localNameToName keyEnumerator];
            NSString* key;
            
            while ((key = [enumerator nextObject])) {

            
                if([localNameToName[key] isEqualToString: peripheral.name]){
                
                    NSDictionary* tmp=@{@"deviceName":key,@"rxData": characteristic.value};
                    [[NSNotificationCenter defaultCenter] postNotificationName:@"SPP_RX" object:nil userInfo:tmp];
                    break;

                
                }
            
            
            }
            
            
            
            
            
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



-(void)SPP_Tx:(const char*)data SUUID:(NSString*)uuid Name:(NSString *)name{
    
    
   
    CBUUID*  TXSUUID=[CBUUID UUIDWithString:uuid];
    
    
    NSData* d = [NSData dataWithBytes:(const void *)data length:sizeof( char)*1];

    NSLog(@"send TX %s",data);
    
    
    
    CBPeripheral* obj=connectPeripheralList[name];
    
    
 
    
    for(CBService* service in obj.services){
        
        int serviceUUID=[self CBUUIDToInt:service.UUID];
        
        if(serviceUUID ==[self CBUUIDToInt: TXSUUID]){
            
       
            
            for (CBCharacteristic* Cobj in service.characteristics){
                
                //TX
                if([self CBUUIDToInt:Cobj.UUID] == serviceUUID+1    ){
                    
                    [obj writeValue:d forCharacteristic:Cobj type:CBCharacteristicWriteWithResponse];

                    
                
                }
            
            
            }
            
            
            
        }
    
    }





}



- (void)peripheral:(CBPeripheral *)peripheral didWriteValueForCharacteristic:(CBCharacteristic *)characteristic
error:(NSError *)error {
    
    if (error) {
        NSLog(@"Error writing characteristic value: %@",
              [error localizedDescription]);
    }else{
    
    

        //[sppDelegate SPP_TxSuccess];
        [[NSNotificationCenter defaultCenter] postNotificationName:@"SPP_TxSuccess" object:nil userInfo:nil];

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
    //printf("isConnected : %d\r\n",peripheral.isConnected);
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

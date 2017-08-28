//
//  BX-ble-4-0.m
//  ColdChain Demo
//
//  Created by EPL on 2014/4/11.
//  Copyright (c) 2014年 EPL. All rights reserved.
//

#import "BX-ble-4-0.h"

#import "BX_polling_download.h"




@implementation BX_ble_4_0
@synthesize CM;
@synthesize activePeripheral,peripherals,DEBUG_peripherals;
@synthesize info_delegate;


static BX_ble_4_0 *instance =nil;








+(BX_ble_4_0*)getInstance{


    @synchronized(self)

    {
    
        if(instance == nil){
        
        
            instance=[BX_ble_4_0 new];

            
            
            [instance controlSetup];
            
            

        }
    
    
    
    
    }



    return instance;

}




//init
- (int) controlSetup{
    
    
    self.CM = [[CBCentralManager alloc] initWithDelegate:self queue:nil];
    
    
    
    request=0;
    
    error_flag=0;
    
    oper_flag=0;
    oper_tagID=@"no id";
    return 0;
}






// 1. scan
- (int) findBLEPeripherals:(int) timeout {

    
    if (self->CM.state  != CBCentralManagerStatePoweredOn) {
        printf("CoreBluetooth not correctly initialized !\r\n");
        printf("State = %ld (%s)\r\n",self->CM.state,[self centralManagerStateToString:self.CM.state]);
        return -1;
    }
    
    
    self.peripherals=nil;
    self.DEBUG_peripherals=nil;
    
    
    
    
    
    
    
    
    
    //service fff0
    
    int serviceUUID= 0xFFF0;
    
    UInt16 s = [self swap:serviceUUID];
    NSData *sd = [[NSData alloc] initWithBytes:(char *)&s length:2];
    CBUUID *su = [CBUUID UUIDWithData:sd];
    
    NSArray *s_ary;
    
    s_ary=[NSArray arrayWithObjects:su,nil];
    
    
    [NSTimer scheduledTimerWithTimeInterval:timeout target:self selector:@selector(stopscan:) userInfo:nil repeats:NO];
    
    
    
    [self.CM scanForPeripheralsWithServices:s_ary options:nil]; // Start scanning
    
    return 0; // Started scanning OK !
}



-(void)stopscan:(NSTimer*)timer{

    [self.CM stopScan];

    NSLog(@"stop scan oper_flag %d",oper_flag);
    
    
    
    
    CBPeripheral *peripheral=[self.peripherals objectForKey:oper_tagID ];
    
    if(peripheral){
    
       //may compress
      switch (oper_flag){
            
            
        case 0:
            
            NSLog(@"BX---------------------------------- error");
            
            break;
            
            
            
            
        case 1:
            NSLog(@"init  %@ ",peripheral.name );
            
            [self connectPeripheral:oper_tagID];
            
            
            
            
            
            
            break;
            
            
        case 2:
            
            NSLog(@"polling  %@ ",peripheral.name);
            
                [self connectPeripheral:oper_tagID];
            
              
            break;
            
            
        case 3:
              
            NSLog(@"download  %@ ",peripheral.name);
              
               [self connectPeripheral:oper_tagID];
              
              
              break;
              
              
              

            
            
            
            
            
            
       }
    
    }
    else{
        
        switch (oper_flag){
        
                
            case 0:
                
                NSLog(@"BX-----------------------big error ");
                
                break;
            case 1:
                
                NSLog(@"error in initial connecting : %@ vs %@ ",peripheral.name,oper_tagID);

                break;
                
            case 2:
                NSLog(@"error in query : connecting");
                
                NSLog(@"query: tag don't exist");
                
                
                
                [NSTimer scheduledTimerWithTimeInterval:3 target:self selector:@selector(jump_to_next:) userInfo:nil repeats:NO];
               
                
                
                break;
        
                
            case 3:
                NSLog(@"error in download : connecting");
                
                NSLog(@"download: tag don't exist");
                
                
                
                [NSTimer scheduledTimerWithTimeInterval:3 target:self selector:@selector(jump_to_next:) userInfo:nil repeats:NO];
                
                
                
                break;
   
                
                
        
        
        }
    

    
    }

}




//scan callback
- (void)centralManager:(CBCentralManager *)central didDiscoverPeripheral:(CBPeripheral *)peripheral advertisementData:(NSDictionary *)advertisementData RSSI:(NSNumber *)RSSI {
    
   // appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    
    
    
    
    
    
    
    
    
    if(peripheral.name.length>18){
        
        if (!self.peripherals)
        {
         
            
            //debug
            self.DEBUG_peripherals = [[NSMutableArray alloc] initWithObjects:peripheral,nil];
            
            
            
            
            self.peripherals = [[NSMutableDictionary alloc] init];
        
            [self.peripherals setObject:peripheral forKey:peripheral.name];
            
             //activePeripheral=peripheral;
            
            
        

        }
        else {
            
            
            
            // may expl
            //debug
            
            
               [self.DEBUG_peripherals addObject:peripheral];

               [self.peripherals setObject:peripheral forKey:peripheral.name];
          
            
            
            
            
        }
            
    
    
       [self printPeripheralInfo:peripheral];

    }
    
    
    
    
    

    
    
    
    
    
}

//check_peripheral

-(bool)check_peripheral:(NSString*) p_name{
    

    if([self.peripherals objectForKey:p_name]!=nil)
       return true;
    
    else
        return false;

}







-(void)jump_to_next:(NSTimer*)timer{
    [info_delegate polling_value_update:@"no" tmperature:@"no"];

}

// 2.connect



- (void) connectPeripheral:(NSString*)tagID {
    
    if((self.activePeripheral=[self.peripherals objectForKey:tagID])){
       
        
        
        [CM connectPeripheral:self.activePeripheral options:nil];
        NSLog(@"connecting... activePeripheral:%@",self.activePeripheral.name);

    }
    else{
     
        NSLog(@"error in connecting...  can't not find %@",tagID);

    
    }
        
        
        
        
}





- (void)centralManager:(CBCentralManager *)central didConnectPeripheral:(CBPeripheral *)peripheral {
    
    
    if([peripheral.name isEqualToString:self.activePeripheral.name]){
        NSLog(@"Connection to peripheral with Name :%@ successfull\r\n",self.activePeripheral.name);
    
    
    
    
     self.activePeripheral.delegate=self;
     [self.activePeripheral discoverServices:nil]; // Discover all services without filter
  
    
    
    
    }
    else{
    
        
        /*
    
        switch(oper_flag){
        
            case 1:
                
                NSLog(@"initial: Tag don't exist");
                
                
                break;
        
            case 2:
                
         NSLog(@"query: tag don't exist");
         
         [info_delegate polling_value_update:@"not yet" tmperature:"not yet"];
         
                break;
        
        
        
        
        
        
        
        
        
        }
      
       */
    
    
    
    
    
    
    }
    
    
    
    
    
    
    
    /*
    NSArray *uuidArray = [NSArray arrayWithObjects:[CBUUID UUIDWithString:@"fff0"], nil];
    [self.activePeripheral discoverServices:uuidArray];
    */
    
    /*
    UInt16 s = [self swap:0xbaf0];
    UInt16 c = [self swap:0xfff1];
    NSData *sd = [[NSData alloc] initWithBytes:(char *)&s length:2];
    NSData *cd = [[NSData alloc] initWithBytes:(char *)&c length:2];
    CBUUID *su = [CBUUID UUIDWithData:sd];
    CBUUID *cu = [CBUUID UUIDWithData:cd];
    
    
    
    
    NSLog(@"act ser n: %d",peripheral.services.count);
    
    
    CBService *service =[self findServiceFromUUID:su p:activePeripheral];
    CBCharacteristic *ch =[self findCharacteristicFromUUID:cu service:service];
    
    unsigned char value[1];
    
    
    value[0]=0x12;
    
    NSData *d = [[NSData alloc] initWithBytes:value length:1];

    
    [activePeripheral writeValue:d forCharacteristic:ch type:CBCharacteristicWriteWithResponse];

    */
    
}











- (void)peripheral:(CBPeripheral *)peripheral didDiscoverServices:(NSError *)error {
 
    
    
    
    
    if([peripheral.name isEqualToString:self.activePeripheral.name]){
        
         if (!error) {
        
        
              NSLog(@"Services of peripheral with UUID : %@ found\r\n",self.activePeripheral.name);

             
                 
                 
                 // may change better
                 
                 
                 UInt16 s = [self swap:0xfff0];
                 NSData *sd = [[NSData alloc] initWithBytes:(char *)&s length:2];
                 CBUUID *su = [CBUUID UUIDWithData:sd];
                 
                 
                 
                CBService *service =[self findServiceFromUUID:su p:self.activePeripheral];
                 
                 
                [self.activePeripheral discoverCharacteristics:nil forService: service];

             
             
             
             
             
             
             
             
         }
         else {
              NSLog(@"%@  Service discovery was unsuccessfull !\r\n",self.activePeripheral.name);
             
             [self.CM cancelPeripheralConnection:peripheral];
          }

    }
}





- (void)peripheral:(CBPeripheral *)peripheral didDiscoverCharacteristicsForService:(CBService *)service error:(NSError *)error {
 
    
    if (!error) {
        printf("Characteristics of service with UUID : %s found\r\n",[self CBUUIDToString:service.UUID]);
        
        for(int i=0; i < service.characteristics.count; i++) {
            CBCharacteristic *c = [service.characteristics objectAtIndex:i];
            NSLog(@"Found characteristic %s with peripheral Name:%@ \r\n",[self CBUUIDToString:c.UUID],peripheral.name);
            CBService *s = [peripheral.services objectAtIndex:(peripheral.services.count - 1)];
            
            if([self compareCBUUID:service.UUID UUID2:s.UUID]) {
                NSLog(@"Finished discovering characteristics");
                
            }
            
        }
        
        
        
        
        //may improve
        if([self.activePeripheral.name isEqualToString:peripheral.name]){
        
          switch(oper_flag){
        
        
                
                case 1:
                
                    [self box_init];
                
                
                
                break;
                
                case 2:
                
                    [self box_query];
                
                break;
                  
                  
                case 3:
                  
                  [self box_download];
                
                  break;
                
                
                
    
        
           }
        }
    }
    
    
    else {
        
        
        printf("Characteristic discorvery unsuccessfull !\r\n");
        [self.CM cancelPeripheralConnection:peripheral];

    }
}




- (void)peripheral:(CBPeripheral *)peripheral didWriteValueForCharacteristic:(CBCharacteristic *)characteristic error:(NSError *)error {
    
    UInt16 c = [self swap:0xfff3];
    NSData *cd = [[NSData alloc] initWithBytes:(char *)&c length:2];
    CBUUID *cu = [CBUUID UUIDWithData:cd];
    
    
    
    
    
    switch (oper_flag) {
        case 1:
            
           
            if([self compareCBUUID:characteristic.UUID UUID2:cu]){
            
                [self.CM cancelPeripheralConnection:self.activePeripheral];
                NSLog(@"cancel connection with %@",peripheral.name);
            
            }
            
            break;
            
      
            
            
        default:
            break;
    }
    

    
    if(error){
        
        NSLog(@"ERROR in writing value !!!------BX %@",error);
        [self.CM cancelPeripheralConnection:peripheral];

    }
    
}









//cancel per

-(void)centralManager:(CBCentralManager*)central didDisconnectPeripheral:(CBPeripheral *)peripheral error:(NSError *)error{


    
    
    
    
    

    switch(oper_flag){
    
    
    
    
        case 1:
        
            if([self.activePeripheral.name isEqualToString:peripheral.name]){
            
                
                
                // clean position in hear is important
                oper_flag=0;
                oper_tagID=@"no id";

                
                
                
                //inform other init over
                

                [info_delegate init_box_finish:self.activePeripheral.name];

                
                
                self.activePeripheral=nil;
                NSLog(@"init : disconnect");
            
            }
            
            
        break;
    
        case 2:
            
            if([self.activePeripheral.name isEqualToString:peripheral.name]){
                
                
                // clean
                oper_flag=0;
                oper_tagID=@"no id";
                
                
                
                                //及時更新恆溫箱資訊
                [info_delegate polling_value_update:g_current_battery tmperature:g_current_temperature];
                
             
                
                self.activePeripheral=nil;
                NSLog(@"disconnect and update");
                
                
                
            }
        break;
            
        case 3:{
        
            
            if(error_flag==0){
                // clean
                oper_flag=0;
                oper_tagID=@"no id";
                
                self.activePeripheral=nil;

                NSLog(@"download finish");
                
                [info_delegate download_finish];
                
                
                
                
            }
            else if(error_flag==1){
                
                
                // clean
                oper_flag=0;
                oper_tagID=@"no id";
                
                self.activePeripheral=nil;

                NSLog(@"RESTART download");
            
                [self download:oper_tagID];
            }
                
            
            
            
            
        }
        break;
    
    
    
    
    }
    










}







// find service obj

-(CBService *) findServiceFromUUID:(CBUUID *)UUID p:(CBPeripheral *)p {
    
    NSLog(@"service n:%lu",(unsigned long)p.services.count);
    
    
    for(int i = 0; i < p.services.count; i++) {
        CBService *s = [p.services objectAtIndex:i];
        NSLog(@"NODE SERVICE:%@",s);
        if ([self compareCBUUID:s.UUID UUID2:UUID]) return s;
        
    }
    
    NSLog(@"service not found");
    return nil; //Service not found on this peripheral
}


// find char obj
-(CBCharacteristic *) findCharacteristicFromUUID:(CBUUID *)UUID service:(CBService*)service {
    for(int i=0; i < service.characteristics.count; i++) {
        CBCharacteristic *c = [service.characteristics objectAtIndex:i];
        if ([self compareCBUUID:c.UUID UUID2:UUID]) return c;
    }
    return nil; //Characteristic not found on this service
}

//help utility
-(int) compareCBUUID:(CBUUID *) UUID1 UUID2:(CBUUID *)UUID2 {
    char b1[16];
    char b2[16];
    [UUID1.data getBytes:b1];
    [UUID2.data getBytes:b2];
    if (memcmp(b1, b2, UUID1.data.length) == 0)return 1;
    else return 0;
}


//help utility
-(const char *) CBUUIDToString:(CBUUID *) UUID {
    return [[UUID.data description] cStringUsingEncoding:NSStringEncodingConversionAllowLossy];
}







//init box



-(void) initial:(NSString*)tagID time:(unsigned char*)time date:(unsigned char*)date interval:(unsigned char*)interval threshold:(int)threshold
{
  
    
        int i;
        
        
        
        //initial time
        for (i=0; i < 3; i++)
        {
            //time 16 to 10
            time[i] =  ((time[i]/10)*16)+(time[i]%10);
            printf("\n time %x ",time[i]);
            
        }
        
        for (i=0; i < 4; i++)
        {
            //date 16 to 10
            
            date[i] =  ((date[i]/10)*16)+(date[i]%10);
            printf("\n date %x ",date[i]);
            
        }
        for (i=0; i < 3; i++)
        {
            //interval 16 to 10
            
            interval[i] =  ((interval[i]/10)*16)+(interval[i]%10);
            printf("\n interval %x ",interval[i]);
            
        }
        
        printf("\n threshhold %x ",threshold);
        
        
       
        
        
        
    
                //對恆溫箱寫入時間
                init_time = [[NSData alloc] initWithBytes:time length:3];
                init_date= [[NSData alloc] initWithBytes:date length:4];
                init_theshold= [[NSData alloc] initWithBytes:&threshold length:1];
                init_interval = [[NSData alloc] initWithBytes:interval length:3];

                
    
                //init operation
                oper_flag=1;
                oper_tagID=tagID;
                [self findBLEPeripherals:1];
    
    
    
    
    
    
    
  

    
    
    
    
}



-(void)box_init{
    
    if([self.activePeripheral.name isEqualToString:oper_tagID]&&oper_flag==1){
    
        NSLog(@"ble to box: initial");
        
        
        //maybe error : too fast
        
        
    //對恆溫箱寫入時間
        [self writeValue:0xFFF0   characteristicUUID:0xFFF1   p:self.activePeripheral data:init_time];
    //對恆溫箱寫入日期
        [self writeValue:0xFFF0   characteristicUUID:0xFFF2   p:self.activePeripheral data:init_date];
    //對恆溫箱寫入溫度閥值
        [self writeValue:0xFFF0   characteristicUUID:0xFFF9   p:self.activePeripheral data:init_theshold];
    //對恆溫箱寫入感測間隔時間
        [self writeValue:0xFFF0   characteristicUUID:0xFFF3   p:self.activePeripheral data:init_interval];


    }
    
    
    
    

}







//single box query



-(void)single_query:(NSString*)tagID{


    
    
    


    oper_flag=2;
    
    oper_tagID=tagID;
    
    
    NSLog(@"====>>>%d",oper_flag);
    
    [self findBLEPeripherals:1];








}



-(void)box_query{



    char query = 0x01;
    
    NSData *d = [[NSData alloc] initWithBytes:&query length:1];
    
    
    
    
    //may error : too fast
    
    [self writeValue:0xFFF0 characteristicUUID:0xFFF4 p:self.activePeripheral data:d];

    [self notification:0xfff0  characteristicUUID:0xFFF7 p:self.activePeripheral on:YES ];




}



-(void)download:(NSString*)tagID{


    
    oper_flag=3;
    
    oper_tagID=tagID;
    
    
    
    
    [self findBLEPeripherals:1];
    





}



-(void)box_download{
    
    
    
    NSLog(@"download box : %@ ",self.activePeripheral.name);
    
    char startRead = 0x01;
    NSData *d = [[NSData alloc] initWithBytes:&startRead length:1];
    [self writeValue:0xFFF0 characteristicUUID:0xFFF6 p:self.activePeripheral data:d];
    
    
    
    [self notification:0xfff0  characteristicUUID:0xfff7 p:self.activePeripheral on:YES ];

    
    
}







// central state


- (void)centralManagerDidUpdateState:(CBCentralManager *)central {
    printf("Status of CoreBluetooth central manager changed %ld (%s)\r\n",central.state,[self centralManagerStateToString:central.state]);
}











//central operation



-(void) writeValue:(int)serviceUUID characteristicUUID:(int)characteristicUUID p:(CBPeripheral *)p data:(NSData *)data {
    UInt16 s = [self swap:serviceUUID];
    UInt16 c = [self swap:characteristicUUID];
    NSData *sd = [[NSData alloc] initWithBytes:(char *)&s length:2];
    NSData *cd = [[NSData alloc] initWithBytes:(char *)&c length:2];
    CBUUID *su = [CBUUID UUIDWithData:sd];
    CBUUID *cu = [CBUUID UUIDWithData:cd];
    CBService *service = [self findServiceFromUUID:su p:p];
    if (!service) {
        NSLog(@"writeValue Could not find service with UUID %s on peripheral with Name %@\r\n",[self CBUUIDToString:su],p.name);
        return;
    }
    CBCharacteristic *characteristic = [self findCharacteristicFromUUID:cu service:service];
    if (!characteristic) {
        NSLog(@"Could not find characteristic with UUID %s on service with UUID %s on peripheral with Name %@\r\n",[self CBUUIDToString:cu],[self CBUUIDToString:su],p.name);
        return;
        
    }
    
    //ios 7 & 6
    [p writeValue:data forCharacteristic:characteristic type:CBCharacteristicWriteWithResponse];
    
}

/*
-(void) readValue: (int)serviceUUID characteristicUUID:(int)characteristicUUID p:(CBPeripheral *)p {
    UInt16 s = [self swap:serviceUUID];
    UInt16 c = [self swap:characteristicUUID];
    NSData *sd = [[NSData alloc] initWithBytes:(char *)&s length:2];
    NSData *cd = [[NSData alloc] initWithBytes:(char *)&c length:2];
    CBUUID *su = [CBUUID UUIDWithData:sd];
    CBUUID *cu = [CBUUID UUIDWithData:cd];
    CBService *service = [self findServiceFromUUID:su p:p];
    if (!service) {
        NSLog(@"readValue Could not find service with UUID %s on peripheral with Name %@\r\n",[self CBUUIDToString:su],p.name);
        return;
    }
    CBCharacteristic *characteristic = [self findCharacteristicFromUUID:cu service:service];
    if (!characteristic) {
        NSLog(@"Could not find characteristic with UUID %s on service with UUID %s on peripheral with Name %@\r\n",[self CBUUIDToString:cu],[self CBUUIDToString:su],p.name);
        return;
    }
    [p readValueForCharacteristic:characteristic];
}

*/

-(void) notification:(int)serviceUUID characteristicUUID:(int)characteristicUUID p:(CBPeripheral *)p on:(BOOL)on {
    UInt16 s = [self swap:serviceUUID];
    UInt16 c = [self swap:characteristicUUID];
    NSData *sd = [[NSData alloc] initWithBytes:(char *)&s length:2];
    NSData *cd = [[NSData alloc] initWithBytes:(char *)&c length:2];
    CBUUID *su = [CBUUID UUIDWithData:sd];
    CBUUID *cu = [CBUUID UUIDWithData:cd];
    CBService *service = [self findServiceFromUUID:su p:p];
    if (!service) {
        NSLog(@"notification Could not find service with UUID %s on peripheral with UUID %@\r\n",[self CBUUIDToString:su],p.name);
        return;
    }
    
    CBCharacteristic *characteristic = [self findCharacteristicFromUUID:cu service:service];
    if (!characteristic) {
        NSLog(@"Could not find characteristic with UUID %s on service with UUID %s on peripheral with Name %@\r\n",[self CBUUIDToString:cu],[self CBUUIDToString:su],p.name);
        return;
    }
    [p setNotifyValue:on forCharacteristic:characteristic];
}






//notification callback

- (void)peripheral:(CBPeripheral *)peripheral didUpdateValueForCharacteristic:(CBCharacteristic *)characteristic error:(NSError *)error {
    
    
    
    UInt16 characteristicUUID = [self CBUUIDToInt:characteristic.UUID];

    
    if (!error) {
        
        
        
        
        
        
        
        
        
        
        
        
           switch(characteristicUUID){
                
                //讀取恆溫箱溫度閥值
                case 0xFFF9:
               /*
                   [characteristic.value getBytes:&tempData length:1];
                    NSLog(@"COME IN READ THRESHOLD ");
                
                    box.threshold =[NSString stringWithFormat:@"%d",tempData];
                    NSLog(@"%@ box.threshold%@ ",peripheral.name,box.threshold);
                    box.isReadThreshold = @"1";
                    [appDelegate.boxStatus setObject:box forKey:peripheral.name];
                    break;
               */
            
                
                //讀取恆溫箱資訊
                   break;
                   
               case 0xfff7:{
            
                   
                   
                   
                   
                  // reslove data
                   
                   
                   Byte *tempData = (Byte*)malloc(12);
                   
                   [characteristic.value getBytes:tempData length:12];
                   double tempValue=0.0;
                   
                   
                   
                   tempValue = tempValue + tempData[8]*10;
                   tempValue = tempValue + tempData[9]*1;
                   tempValue = tempValue + tempData[10]*0.1;
                   
                   NSString *signStr;
                   if(tempData[7]==0x00){
                       signStr = @"";
                   }else{
                       signStr = @"-";
                   }
                   
                   
                   
                   //battery
                   //如果電量超過100% 則以100%為準
                   if(tempData[11]>100) tempData[11] = 100;
                   
                   
                   
                   NSString *valueStr = [NSString stringWithFormat:@"%.1f", tempValue];
                   //Combine value and sign string
                   NSString *temperatureStr = [NSString stringWithFormat:@"%@%@", signStr,valueStr];
                   
                   
                   
                   
                   switch(oper_flag){
                           
                           
                       case 2:
                       {
                     
                           NSLog(@"polling value");

                           g_current_battery = [NSString stringWithFormat:@"%d%@",tempData[11],@"%"];
                           
                           g_current_temperature = temperatureStr;
                           
                           
                           
                           [self.CM cancelPeripheralConnection:self.activePeripheral ];
                           
                       }
                       break;
                       case 3:{
                           
                           
                           
                           
                           [info_delegate download_value_update:
                            [NSString stringWithFormat:@"%d/%d/%d/%d",tempData[3],tempData[4],tempData[5],tempData[6]]
                            tmperature:temperatureStr
                            Time:[NSString stringWithFormat:@"%d:%d:%d",tempData[0],tempData[1],tempData[2]]];
                           
                           
                           
                           
                           
                           
                           
                           if(tempData[11])
                           {
                               //BX cancel
                               
                               NSLog(@"download cancel...");
                               
                               [self.CM cancelPeripheralConnection:peripheral];

                               
                           }

                           
                           
                           
                           
                           
                           
                           
                       }
                       break;
                         

                           
                   }
                   
                   
                   
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

- (void) printKnownPeripherals {
    int i;
    printf("List of currently known peripherals : \r\n");
    for (i=0; i < self->peripherals.count; i++)
    {
        CBPeripheral *p = [self->DEBUG_peripherals objectAtIndex:i];
        CFStringRef s = CFUUIDCreateString(NULL, p.UUID);
        printf("%d  |  %s\r\n",i,CFStringGetCStringPtr(s, 0));
        [self printPeripheralInfo:p];
    }
    
    
    
}



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

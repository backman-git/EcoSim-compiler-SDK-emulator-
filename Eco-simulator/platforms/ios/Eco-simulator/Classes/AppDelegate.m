/*
 Licensed to the Apache Software Foundation (ASF) under one
 or more contributor license agreements.  See the NOTICE file
 distributed with this work for additional information
 regarding copyright ownership.  The ASF licenses this file
 to you under the Apache License, Version 2.0 (the
 "License"); you may not use this file except in compliance
 with the License.  You may obtain a copy of the License at

 http://www.apache.org/licenses/LICENSE-2.0

 Unless required by applicable law or agreed to in writing,
 software distributed under the License is distributed on an
 "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 KIND, either express or implied.  See the License for the
 specific language governing permissions and limitations
 under the License.
 */

//
//  AppDelegate.m
//  Eco-simulator
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright ___ORGANIZATIONNAME___ ___YEAR___. All rights reserved.
//

#import "AppDelegate.h"
#import "MainViewController.h"
#import "centralSpp.h"

#import <Cordova/CDVPlugin.h>

@implementation AppDelegate

@synthesize window, viewController;

- (id)init
{
    /** If you need to do any extra app-specific initialization, you can do it here
     *  -jm
     **/
    NSHTTPCookieStorage* cookieStorage = [NSHTTPCookieStorage sharedHTTPCookieStorage];

    [cookieStorage setCookieAcceptPolicy:NSHTTPCookieAcceptPolicyAlways];

    int cacheSizeMemory = 8 * 1024 * 1024; // 8MB
    int cacheSizeDisk = 32 * 1024 * 1024; // 32MB
#if __has_feature(objc_arc)
        NSURLCache* sharedCache = [[NSURLCache alloc] initWithMemoryCapacity:cacheSizeMemory diskCapacity:cacheSizeDisk diskPath:@"nsurlcache"];
#else
        NSURLCache* sharedCache = [[[NSURLCache alloc] initWithMemoryCapacity:cacheSizeMemory diskCapacity:cacheSizeDisk diskPath:@"nsurlcache"] autorelease];
#endif
    [NSURLCache setSharedURLCache:sharedCache];

    self = [super init];
    
    
    
    
    //init firmware
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(initBoard) name:@"firmwareDownload" object:nil];
    
    
    //SPP events
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(scan) name:@"SPP_INIT" object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(SPP_START) name:@"SPP_START" object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(SPP_TxSuccess) name:@"SPP_TxSuccess" object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(SPP_RX:) name:@"SPP_RX" object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(SYSTEM_START) name:@"SYSTEM_START" object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(SYSTEM_PAUSE) name:@"SYSTEM_PAUSE" object:nil];


    
    
    
    return self;
}

#pragma mark UIApplicationDelegate implementation


/**
 * This is main kick off after the app inits, the views and Settings are setup here. (preferred - iOS4 and up)
 */
- (BOOL)application:(UIApplication*)application didFinishLaunchingWithOptions:(NSDictionary*)launchOptions
{
    
    systemStatus=0;
//SPP
    sppStart=false;
    cSpp = [centralSpp GetInstance];
    [cSpp Setup];
    
    
    
//music player
    NSURL* url = [[NSURL alloc] initFileURLWithPath:[[NSBundle mainBundle] pathForResource:@"good" ofType:@"mp3"]];
    NSError* error = nil;
    myPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:&error];
    musicFlag=false;
    
    
//LED
    ledFlag=false;
    
// ACC
  [[UIAccelerometer sharedAccelerometer]setDelegate:self];
    
//EcoSimulator
    
    iii=0;
    
    debug_f1=0;
    debug_f2=0;
    
    
    
    
    ServicesN=0;
    
    AttrsDary=[NSMutableDictionary dictionary];
    
    
    
    
    ble = [BX_peripheral GetInstance];
    ble.ble_delegate=self;
    
    tl = [terminal getInstance];
   
    p2Buffer=0x0;
    
    
    
// wait spp layer finish!!!
    
     systemThread = [[NSThread alloc] initWithTarget:self selector:@selector(system_timer) object:nil];
    
    
    
    /*
    [NSTimer scheduledTimerWithTimeInterval:0.00000005
                                     target:self
                                   selector:@selector(system_timer:)
                                   userInfo:nil
                                    repeats:YES];
    
    
    
    [NSTimer scheduledTimerWithTimeInterval:0.005
                                     target:self
                                   selector:@selector(ble_timer:)
                                   userInfo:nil
                                    repeats:YES];
    */
   
    
   /*
     [NSTimer scheduledTimerWithTimeInterval:1
     target:self
     selector:@selector(uart:)
     userInfo:nil
     repeats:YES];
    */
    
    
    
    
    
    
//----cordova
    
    
    CGRect screenBounds = [[UIScreen mainScreen] bounds];

#if __has_feature(objc_arc)
        self.window = [[UIWindow alloc] initWithFrame:screenBounds];
#else
        self.window = [[[UIWindow alloc] initWithFrame:screenBounds] autorelease];
#endif
    self.window.autoresizesSubviews = YES;

#if __has_feature(objc_arc)
        self.viewController = [[MainViewController alloc] init];
#else
        self.viewController = [[[MainViewController alloc] init] autorelease];
#endif

    // Set your app's start page by setting the <content src='foo.html' /> tag in config.xml.
    // If necessary, uncomment the line below to override it.
    // self.viewController.startPage = @"index.html";

    // NOTE: To customize the view's frame size (which defaults to full screen), override
    // [self.viewController viewWillAppear:] in your view controller.

    self.window.rootViewController = self.viewController;
    [self.window makeKeyAndVisible];

    return YES;
}

//SPP callback
//0.00000003125

-(void)SPP_START{

    NSLog(@"spp connection finish!!");
    
    //[systemThread start];
    
    /*
    [NSTimer scheduledTimerWithTimeInterval:0.00000005
                                     target:self
                                   selector:@selector(system_timer:)
                                   userInfo:nil
                                    repeats:YES];
    */
    
    
    /*[NSTimer scheduledTimerWithTimeInterval:0.0005
                                     target:self
                                   selector:@selector(ble_timer:)
                                   userInfo:nil
                                    repeats:YES];
*/
    




}


-(void)initBoard{



  



}



-(void)SYSTEM_START{
    
      SoC = [cc2540 getInstance];
    
    
    NSLog(@"START");
    
    systemStatus=1;
    
    [systemThread start];
   /*
    BLETimer=[NSTimer scheduledTimerWithTimeInterval:0.0005
                                              target:self
                                            selector:@selector(ble_timer:)
                                            userInfo:nil
                                             repeats:YES];
  */
    
   
    
    BLETimer=[NSTimer scheduledTimerWithTimeInterval:0.0003125
                                              target:self
                                            selector:@selector(ble_timer:)
                                            userInfo:nil
                                             repeats:YES];
    
    
   
    /*[NSTimer scheduledTimerWithTimeInterval:3
                                     target:self
                                   selector:@selector(uart:)
                                   userInfo:nil
                                    repeats:YES];
    
    */
    
    
}




-(void)SYSTEM_RESUME{
    
    
    NSLog(@"RESUME");

    
    if(systemStatus!=1){
        
            systemThread = [[NSThread alloc] initWithTarget:self selector:@selector(system_timer) object:nil];

            [systemThread start];

        
    
        
        
        
        
        
        
        BLETimer=[NSTimer scheduledTimerWithTimeInterval:0.0005
                                     target:self
                                   selector:@selector(ble_timer:)
                                   userInfo:nil
                                    repeats:YES];
        systemStatus=1;
        NSLog(@"system resume");
    }



}





-(void)SYSTEM_PAUSE{
    
    systemStatus=2;
    
    [BLETimer invalidate];

    [systemThread cancel];
       NSLog(@"system pause");

}






-(void)SPP_TxSuccess{

  //  NSLog(@"TX finish");


    SoC.RAM[0x86]|=0x02;


}
-(void)SPP_RX:(NSNotification*) notification{
   
    
    
    //0x90 -> knob
    //not so good!  should be one line
    
    //Knob to p1
    if([notification.userInfo[@"deviceName"] isEqualToString:@"Knob"]){
        
        
        
        
        unsigned char *bytePtr = (unsigned char *)[notification.userInfo[@"rxData"] bytes];
        
        
        NSLog(@"SPP_RX: %d from %@",bytePtr[0],notification.userInfo[@"deviceName"]);
        
        SoC.RAM[0x90]=bytePtr[0];
        
    
    }
    
    
    




}

-(void)scan{
    
    
    [cSpp establishSPP:@{@"LCD":@"0xba00",@"Knob":@"0xba00",@"Bulb":@"0xba00"}];
    
    
    
    
    
}


//EcoSimulator

-(void)ble_timer:(NSTimer*)a{
    
    
   // NSLog(@"ble timer");
    
    
    
    
    
    if( SoC.RAM[0xa2]==0xff){
        SoC.RAM[0xa2]=0;
        
        if(SoC.RAM[0xa3]==0xff)
            SoC.RAM[0xa3]=0;
        else
            SoC.RAM[0xa3]++;
        
    }
    else
        SoC.RAM[0xa2]++;
    
    
    
}






-(void)system_timer{
    
    if([[NSThread currentThread] isCancelled])
        [NSThread exit];
    
while(1){
    
    [SoC decode_and_simulate];
    
  /*  iii++;
    if(iii%10000==0)
        NSLog(@"one cycle %d",iii);
    
  */
  
    if(  SoC.RAM[0x80]==0x1){
    
        debug_f1=1;
    }

    
    if(debug_f1==1&& SoC.RAM[0x80]==0x0){
       
        debug_f2=1;
      
        
    
    }
    
    
    if(debug_f2==1 && debug_f1==1){
    
          NSLog(@"GPIO off");
        debug_f1=0;
        debug_f2=0;
    
    }
    
    
    
 
    //hardware behavior
    
    // 0xa0 -> Bulb  0xc1-> LCD
    
    //bulb to p2  //should add pin configuration !!
    
   
    
    if(p2Buffer!=SoC.RAM[0xa0]){
         p2Buffer =SoC.RAM[0xa0];
        [cSpp SPP_Tx:&p2Buffer SUUID:@"0xba00" Name:@"Bulb"];
    
        
    }
    
    //uart datasheet p.160
    
    
    if(SoC.c1_line==0x01){
        
        
        SoC.RAM[0x86]&=~0x02;
        
        
        //Virtual UART to LCD : init
        
        if( (SoC.RAM[0xf1]&0x01)==0x00 && (SoC.RAM[0x86] & 0xc0)== 0xc0    ){
            
            
            NSString* tmp=[NSString stringWithFormat:@"%c",SoC.RAM[0xc1]];
            
            [cSpp SPP_Tx:[tmp UTF8String] SUUID:@"0xba00" Name:@"LCD"];
            
        }
        

        
        // UART inside
        [tl.buffer appendFormat:@"%c", SoC.RAM[0xc1]];
        SoC.RAM[0x86]|=0x02;

        
        
        SoC.c1_line=0x00;
        
        
    }
    
    /*
    //music player
    if(SoC.RAM[0xc2]==0x01){
        
        
        
        if(musicFlag==false){
            musicFlag=true;
            [myPlayer play];
        }
        
    }else{
        
        if(musicFlag==true){
            musicFlag=false;
            [myPlayer pause];
            
        }
        
        
        
        
        
    }
    
*/
    
    
    
    
    
    
    
    
    // flash LED
    
    /*
    if(SoC.RAM[0x80]==0x01){
        
        
        
        if(ledFlag==false){
            ledFlag=true;
            [self Flashlight:ledFlag ];
    
        }
    
    }else{
        
        if(ledFlag==true){
            ledFlag=false;
            [self Flashlight:ledFlag ];
            
        
        }
            
            
            
        
    
    }
    */
    //Knob
    
    
    
    
    
    
    
    
    
    
    
    
    
   //  tl_thread = [[NSThread alloc] initWithTarget:self selector:@selector(uart:) object:nil];
    // [tl_thread start];
    
    
    // hardware line;   should use thread mode!!  think more!
    
    
    
    
    
    
    // ble_ stack check
    
    
    switch(SoC.RAM[0xaa]){
            
            
            
            // start! 0x01
        case 0x01:
        {
            [ble fakeSetup];
            
            SoC.RAM[0xaa]=0x00;
            
        }
            break;
        case 0x02:
        {
            [ble startADV];
            SoC.RAM[0xaa]=0x00;
        }
            break;
        case 0x03:
        {
            
            ;//printf("Service set in ios!\n");
            
            
            // set Service Dictionary
            
            // find service addr to achieve uuid   限定 attrTlb 長度
            
            unsigned int attrTlb_P=ServicesN*12;
            
            unsigned int attrTlbAddr = (SoC.XDATA[attrTlb_P])+ (SoC.XDATA[attrTlb_P+1]<<8)+(SoC.XDATA[attrTlb_P+2]<<16) ;
            // ;//printf("%X \n",attrTlbAddr);
            
            unsigned int SerAddr =  SoC.XDATA[attrTlbAddr+7 ]+(SoC.XDATA[attrTlbAddr+7 +1]<<8)  ;
            // ;//printf("%X \n",SerAddr);
            
            
            //service uuid Addr
            unsigned int SerUUIDAddr = SoC.ROM[SerAddr+1]+(SoC.ROM[SerAddr+1+1]<<8);
            
            // ;//printf("%X \n",SerUUIDAddr);
            
            
            //service uuid
            unsigned int SerUUID=SoC.ROM[SerUUIDAddr]+(SoC.ROM[SerUUIDAddr+1]<<8);
            
            
            
            //Attrs cell
            /*
             
             typedef struct attAttribute_t
             {
             gattAttrType_t type; //!< Attribute type (2 or 16 octet UUIDs)    4 bytes
             uint8 permissions;   //!< Attribute permissions                   1 byte
             uint16 handle;       //!< Attribute handle - assigned internally by attribute server   2 bytes
             uint8* const pValue; //!< Attribute value - encoding of the octet array is defined in  3
             //!< the applicable profile. The maximum length of an attribute
             //!< value shall be 512 octets.
             } gattAttribute_t;
             
             
             */
            //using dynamic
            
            
            
            
            // size should be setting!!
            
            for(int i=0;i<5;i++){
                AttrsCell Atr;
                
                int cellAddr=attrTlbAddr+i*10;
                
                
                
                
                //uuid size;
                Atr.uuidSize= SoC.XDATA[cellAddr];
                //uuid
                Atr.uuidAddr= SoC.XDATA[cellAddr+1]+(SoC.XDATA[cellAddr+2]<<8);
                
                Atr.uuid = SoC.ROM[Atr.uuidAddr]+(SoC.ROM[Atr.uuidAddr+1]<<8);
                
                //permissions
                Atr.permission= SoC.XDATA[cellAddr+4];
                //handle
                Atr.handle=SoC.XDATA[cellAddr+5]+ (SoC.XDATA[cellAddr+6]<<8);
                //pValueAddr
                Atr.pValueAddr=SoC.XDATA[cellAddr+7]+(SoC.XDATA[cellAddr+8]<<8);
                
                Atr.initValue=SoC.ROM[Atr.pValueAddr];
                
                
                unsigned int attrUUID =SoC.ROM[Atr.uuidAddr]+(SoC.ROM[Atr.uuidAddr+1]<<8);
                
                
                
                [AttrsDary setObject: [NSValue valueWithBytes:&Atr objCType:@encode(AttrsCell)] forKey:[NSString stringWithFormat:@"0x%X",attrUUID]];
                
                
                
                
                
            }
            
            [ble SetupService:SerUUID AttTlb:AttrsDary];
            
            ServicesN++;
            
            SoC.RAM[0xaa]=0x00;
            
        }
            break;
            
            
        case 0x04:
        {
            // add length!!!!!!
            
            
            unsigned char obj=SoC.XDATA[0x74];
            
            
            
            //only support one byte
            
            
            NSData* outObj=[NSData dataWithBytes:&obj length: sizeof(obj) ];
            //sendReadReq
            
            [ble sendReadReq:outObj];
            
            
            
            
            
            
            
            
            SoC.RAM[0xaa]=0x00;
            SoC.RAM[0x8e]=0x00;
            
            
        }
            break;
            
            
        case 0x05:
        {
            
            
            [ble sendWriteFinishSig ];
            SoC.RAM[0xaa]=0x00;
            SoC.RAM[0x8e]=0x00;
            
            
            
            
            
            
        }
            break;
        default:
        {
            ;
            
        }
            break;
            
            
            
            
            
    }
    
    
    
   // [NSThread sleepForTimeInterval:0.000003];
    
    
    
    
    
    
    
    
    
}
    
    
    
    
    
    
    
}



-(void) uart:(char)c{
    
    [tl show];
    
    
}




-(void)didSetup{
    
    ;//printf("ios ble start!\n");
    
    SoC.RAM[0x8e]=0x01;
    
}

-(void)didAdv{
    
    printf("ios ble ADV!\n");
    SoC.RAM[0x8e]=0x02;
    
    
    
    
}
-(void)didAddService{
    
    ;//printf("ios ble service add!\n");
    SoC.RAM[0x8e]=0x03;
    
    
    
}
-(bool) readRequest:(CBUUID*) req offset:(NSUInteger)len{
    
    
    for(NSString* key in AttrsDary){
        
        if([ req  isEqual: [CBUUID UUIDWithString: key]]){
            
            
            
            
            
            //connHandle
            SoC.XDATA[0x65]=0x00;
            SoC.XDATA[0x66]=0x00;
            
            NSValue *v=([AttrsDary objectForKey: key]);
            
            AttrsCell atr;
            
            [v getValue:&atr];
            
            //uuidAddr
            
            SoC.XDATA[0x67]=(unsigned char)(atr.uuidAddr&0xff);
            // ;//printf(">> %X",SoC.XDATA[0x67]);
            SoC.XDATA[0x68]=(unsigned char)((atr.uuidAddr>>8)&0xff);
            // ;//printf(">> %X",SoC.XDATA[0x68]);
            SoC.XDATA[0x69]=(unsigned char)((atr.uuidAddr>>16)&0xff);
            // ;//printf(">> %X",SoC.XDATA[0x69]);
            
            //offset
            SoC.XDATA[0x72]=((int)len)&0xff;
            SoC.XDATA[0x73]=(((int)len)>>8)&0xff;
            
            //signal
            SoC.RAM[0x8e]=0x04;
            
            return true;
            
        }
        
        
        
    }
    
    
    return false;
    
    
    
}

-(bool) writeRequest:(CBUUID*) req value:(NSData*)v{
    
    
    
    
    for(NSString* key in AttrsDary){
        
        if([ req  isEqual: [CBUUID UUIDWithString: key]]){
            
            
            
            
            
            //connHandle
            SoC.XDATA[0x65]=0x00;
            SoC.XDATA[0x66]=0x00;
            
            NSValue *tmp=([AttrsDary objectForKey: key]);
            
            AttrsCell atr;
            
            [tmp getValue:&atr];
            
            //uuidAddr
            
            SoC.XDATA[0x67]=(unsigned char)(atr.uuidAddr&0xff);
            ;//printf(">> %X",SoC.XDATA[0x67]);
            SoC.XDATA[0x68]=(unsigned char)((atr.uuidAddr>>8)&0xff);
            ;//printf(">> %X",SoC.XDATA[0x68]);
            SoC.XDATA[0x69]=(unsigned char)((atr.uuidAddr>>16)&0xff);
            ;//printf(">> %X",SoC.XDATA[0x69]);
            
            
            
            unsigned int len =(unsigned int) [v length];
            
            ;//printf("\nlen :%d\n",len);
            //offset
            
            SoC.XDATA[0x72]= (unsigned char)(len&0xff);
            SoC.XDATA[0x73]= (unsigned char)((len>>8)&0xff);
            
            unsigned char *p_ary = &(SoC.XDATA[0x74]);
            
            
            memcpy(p_ary, [v bytes], len);
            
            
            
            
            
            
            
            
            //signal
            SoC.RAM[0x8e]=0x05;
            
            return true;
            
        }
        
        
        
    }
    
    
    return false;
    
    
    
}





//ACC
/*
union uint8 {
    int v;
    unsigned char hex[4];
};
*/




- (void)accelerometer:(UIAccelerometer *)accelerometer didAccelerate:(UIAcceleration *)acceleration{
   
    
    
    if(SoC!=nil&&SoC.XDATA[0x289]==0xba){
       
        char acc;
        
        
        acc=(char)(acceleration.x*100);
       // NSLog(@"%f",acceleration.x);
       // NSLog(@" --%d : %X",acc,acc);
        SoC.XDATA[0x290]=acc;
       // NSLog(@"%X",SoC.XDATA[0x290]);
        
        
        
        
        
        acc=(char)(acceleration.y*100);
        
        SoC.XDATA[0x291]=acc;
        
        
        

        
        
        acc=(char)(acceleration.z*100);
        
        SoC.XDATA[0x292]=acc;
        
        
        

        
        
        
  /*
        
    //NSLog(@"X: %x %x %x %x %x %x %x %x",tmp.u[0],tmp.u[1],tmp.u[2],tmp.u[3],tmp.u[4],tmp.u[5],tmp.u[6],tmp.u[7]   );
        
        
    SoC.XDATA[0x290]=tmp.u[4];
    SoC.XDATA[0x291]=tmp.u[5];
    SoC.XDATA[0x292]=tmp.u[6];
    SoC.XDATA[0x293]=tmp.u[7];
        
   
    tmp.d=acceleration.y;
    
     // NSLog(@"Y: %x %x %x %x %x %x %x %x",tmp.u[0],tmp.u[1],tmp.u[2],tmp.u[3],tmp.u[4],tmp.u[5],tmp.u[6],tmp.u[7]   );
    SoC.XDATA[0x294]=tmp.u[4];
    SoC.XDATA[0x295]=tmp.u[5];
    SoC.XDATA[0x296]=tmp.u[6];
    SoC.XDATA[0x297]=tmp.u[7];
    
   
    tmp.d=acceleration.z;
       // NSLog(@"Z: %x %x %x %x %x %x %x %x",tmp.u[0],tmp.u[1],tmp.u[2],tmp.u[3],tmp.u[4],tmp.u[5],tmp.u[6],tmp.u[7]   );
    SoC.XDATA[0x298]=tmp.u[4];
    SoC.XDATA[0x299]=tmp.u[5];
    SoC.XDATA[0x300]=tmp.u[6];
    SoC.XDATA[0x301]=tmp.u[7];
 
    */
      
   
    }
    
    
}





//LED


- (void)Flashlight:(bool) flag
{
    AVCaptureDevice * captDevice = [AVCaptureDevice defaultDeviceWithMediaType:AVMediaTypeVideo];
    if ([captDevice hasFlash]&&[captDevice hasTorch]) {
        if (captDevice.torchMode == AVCaptureTorchModeOff && flag==true) {
            [captDevice lockForConfiguration:nil];
            [captDevice setTorchMode:AVCaptureTorchModeOn];
            [captDevice unlockForConfiguration];
            
        }else {
            [captDevice lockForConfiguration:nil];
            [captDevice setTorchMode:AVCaptureTorchModeOff];
            [captDevice unlockForConfiguration];
            
        }
    }
}





















// this happens while we are running ( in the background, or from within our own app )
// only valid if Eco-simulator-Info.plist specifies a protocol to handle
- (BOOL)application:(UIApplication*)application openURL:(NSURL*)url sourceApplication:(NSString*)sourceApplication annotation:(id)annotation
{
    if (!url) {
        return NO;
    }

    // all plugins will get the notification, and their handlers will be called
    [[NSNotificationCenter defaultCenter] postNotification:[NSNotification notificationWithName:CDVPluginHandleOpenURLNotification object:url]];

    return YES;
}

// repost all remote and local notification using the default NSNotificationCenter so multiple plugins may respond
- (void)            application:(UIApplication*)application
    didReceiveLocalNotification:(UILocalNotification*)notification
{
    // re-post ( broadcast )
    [[NSNotificationCenter defaultCenter] postNotificationName:CDVLocalNotification object:notification];
}

#ifndef DISABLE_PUSH_NOTIFICATIONS

    - (void)                                 application:(UIApplication*)application
        didRegisterForRemoteNotificationsWithDeviceToken:(NSData*)deviceToken
    {
        // re-post ( broadcast )
        NSString* token = [[[[deviceToken description]
            stringByReplacingOccurrencesOfString:@"<" withString:@""]
            stringByReplacingOccurrencesOfString:@">" withString:@""]
            stringByReplacingOccurrencesOfString:@" " withString:@""];

        [[NSNotificationCenter defaultCenter] postNotificationName:CDVRemoteNotification object:token];
    }

    - (void)                                 application:(UIApplication*)application
        didFailToRegisterForRemoteNotificationsWithError:(NSError*)error
    {
        // re-post ( broadcast )
        [[NSNotificationCenter defaultCenter] postNotificationName:CDVRemoteNotificationError object:error];
    }
#endif

- (NSUInteger)application:(UIApplication*)application supportedInterfaceOrientationsForWindow:(UIWindow*)window
{
    // iPhone doesn't support upside down by default, while the iPad does.  Override to allow all orientations always, and let the root view controller decide what's allowed (the supported orientations mask gets intersected).
    NSUInteger supportedInterfaceOrientations = (1 << UIInterfaceOrientationPortrait) | (1 << UIInterfaceOrientationLandscapeLeft) | (1 << UIInterfaceOrientationLandscapeRight) | (1 << UIInterfaceOrientationPortraitUpsideDown);

    return supportedInterfaceOrientations;
}

- (void)applicationDidReceiveMemoryWarning:(UIApplication*)application
{
    [[NSURLCache sharedURLCache] removeAllCachedResponses];
}

@end

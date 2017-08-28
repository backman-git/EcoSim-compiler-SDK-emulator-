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
//  AppDelegate.h
//  Eco-simulator
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright ___ORGANIZATIONNAME___ ___YEAR___. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <Cordova/CDVViewController.h>
#import <AVFoundation/AVFoundation.h>
#import <AVFoundation/AVAudioPlayer.h>


#import "cc2540.h"
#import "terminal.h"
#import "BX_peripheral.h"
#import "centralSpp.h"





typedef struct{
    
    unsigned int attTlbAddr;
    
    unsigned int CbAddr;
    
    
    
}ServicesTlb;




typedef struct{
    
    int readCbAddr ;
    
    int writeCbAddr;
    
    
}CbsTlb;




typedef struct{
    
    unsigned char uuidSize;
    unsigned int uuidAddr;
    unsigned char permission;
    unsigned int handle;
    unsigned int pValueAddr;
    
    //for ios init use
    
    unsigned int uuid;
    unsigned int initValue;
    
    
    
    
}AttrsCell;








@interface AppDelegate : NSObject <UIApplicationDelegate>{

//tmp
    bool sppStart;
    
    centralSpp* cSpp;
    
    
    cc2540* SoC;
    terminal* tl;
    NSThread* tl_thread;
    BX_peripheral *ble;
    
    NSMutableDictionary *AttrsDary;
    
    int ServicesN;
    
    bool ledFlag;
    bool musicFlag;
  
    AVAudioPlayer *myPlayer;

    NSTimer *BLETimer;
    
    NSThread* systemThread;
     unsigned char p2Buffer;
    
    int systemStatus;

    
    int iii;

    int debug_f1;
    int debug_f2;
    
}

// invoke string is passed to your app on launch, this is only valid if you
// edit Eco-simulator-Info.plist to add a protocol
// a simple tutorial can be found here :
// http://iphonedevelopertips.com/cocoa/launching-your-own-application-via-a-custom-url-scheme.html

@property (nonatomic, strong) IBOutlet UIWindow* window;
@property (nonatomic, strong) IBOutlet CDVViewController* viewController;

@end

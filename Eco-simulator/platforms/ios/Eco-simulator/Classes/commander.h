//
//  commander.h
//  Eco-simulator
//
//  Created by backman on 2015/6/10.
//
//

#import <Cordova/CDV.h>

@interface commander : CDVPlugin{


    NSThread* initMCUThread;
    NSString  *filePath;
    NSFileManager *fileManager;


}


- (void)RUN:(CDVInvokedUrlCommand*)command;
- (void)DOWNLOAD:(CDVInvokedUrlCommand*)command;
- (void)CONNECT_peripheral:(CDVInvokedUrlCommand*)command;
- (void)PAUSE:(CDVInvokedUrlCommand*)command;
- (void)RESUME:(CDVInvokedUrlCommand*)command;

@end

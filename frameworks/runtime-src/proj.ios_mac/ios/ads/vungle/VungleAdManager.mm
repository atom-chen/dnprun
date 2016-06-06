//
//  DNPParticleSystemFrameQuad.cpp
//  cocos2d_tests
//
//  Created by lovejia on 14-8-29.
//
//

#import "VungleAdManager.h"
#import "CCLuaBridge.h"
#include "SimpleAudioEngine.h"

@implementation VungleAdManager


+ (VungleAdManager *) getInstance
{
    static VungleAdManager *sharedInstance;
    if(sharedInstance == nil) sharedInstance = [VungleAdManager new];
    return sharedInstance;
}


+ (void)init:(NSDictionary*) dict
{
    NSString *appID = [dict objectForKey:@"id"];
    
    VungleSDK *sdk = [VungleSDK sharedSDK];
    [VungleAdManager getInstance].sdk = sdk;
    [sdk setDelegate: [VungleAdManager getInstance]];
    [sdk attachLogger: [VungleAdManager getInstance]];
    [sdk setLoggingEnabled:true];
    
    // start vungle publisher library
    [sdk startWithAppId:appID];
    
    NSLog(@"init vungle");
    NSDictionary *d = [sdk debugInfo];
    NSLog(@"NSImage image : %@", d);
    
}
+ (void)play:(NSDictionary*) dict
{
    [[VungleAdManager getInstance] setCallbackId:[dict valueForKey:@"callback"]];
    VungleAdManager *v =[VungleAdManager getInstance];
    if ([v.sdk isAdPlayable]) {
        NSLog(@"An ad is available for play");
        
    } else {
        NSLog(@"No ad available");
        //        [[VungleAdManager getInstance] callbackLua:@"none"];
    }
    NSError *error;
    [v.sdk playAd:v.viewController error:&error];
}

+ (void)isVideoReady:(NSDictionary*) dict
{
    [[VungleAdManager getInstance] setCallbackId1:[dict valueForKey:@"callback"]];
    VungleAdManager *v =[VungleAdManager getInstance];
    if ([v.sdk isAdPlayable]) {
        [[VungleAdManager getInstance] callbackLua1:@"ready"];
        
    }else
    {
        [[VungleAdManager getInstance] callbackLua1:@"none"];
    }
    
}



#pragma mark - VungleSDK Delegate

- (void)vungleSDKAdPlayableChanged:(BOOL)isAdPlayable {
    if (isAdPlayable) {
        NSLog(@"An ad is available for playback");
    } else {
        NSLog(@"No ads currently available for playback");
    }
}

- (void)vungleSDKwillShowAd {
    NSLog(@"An ad is about to be played!");
    //Use this delegate method to pause animations, sound, etc.
    CocosDenshion::SimpleAudioEngine::getInstance()->pauseBackgroundMusic();
}

- (void) vungleSDKwillCloseAdWithViewInfo:(NSDictionary *)viewInfo willPresentProductSheet:(BOOL)willPresentProductSheet {
    if (willPresentProductSheet) {
        //In this case we don't want to resume animations and sound, the user hasn't returned to the app yet
        NSLog(@"The ad presented was tapped and the user is now being shown the App Product Sheet");
        NSLog(@"ViewInfo Dictionary:");
        for(NSString * key in [viewInfo allKeys]) {
            NSLog(@"%@ : %@", key, [[viewInfo objectForKey:key] description]);
        }
    } else {
        //In this case the user has declined to download the advertised application and is now returning fully to the main app
        //Animations / Sound / Gameplay can be resumed now
        NSLog(@"The ad presented was not tapped - the user has returned to the app");
        NSLog(@"ViewInfo Dictionary:");
        for(NSString * key in [viewInfo allKeys]) {
            NSLog(@"%@ : %@", key, [[viewInfo objectForKey:key] description]);
        }
        
        CocosDenshion::SimpleAudioEngine::getInstance()->resumeBackgroundMusic();
    }
    NSLog(@"ViewInfo Dictionary:123");
    [[VungleAdManager getInstance] callbackLua:@"complete"];
}

- (void)vungleSDKwillCloseProductSheet:(id)productSheet {
    NSLog(@"The user has downloaded an advertised application and is now returning to the main app");
    //This method can be used to resume animations, sound, etc. if a user was presented a product sheet earlier
}
#pragma mark - VungleSDK Delegate
- (void)vungleSDKLog:(NSString*)message
{
    NSLog(@"%@",message);
}
//#pragma mark - VungleSDK Load Asset Delegate
///**
// * 应该会返回一个有效的NSData，包含特定路径的镜像（原始）数据或返回nil */
//- (NSData*)vungleLoadAsset:(NSString*)path
//{
//    NSLog(@"NSData path : %@", path);
//}
//
///**
// * 应该会返回一个特定路径的有效UIImage，或者返回nil
// */
//- (UIImage*)vungleLoadImage:(NSString*)path
//{
//     NSLog(@"NSImage image : %@", path);
//}
- (id)init
{
    self = [super init];
    if (self) {
        // init code here
        
    }
    return self;
}

- (void) dealloc
{
    [super dealloc];
}



- (void) setCallbackId:(NSNumber *) callbackid
{
    //    int callbackId = self -> callbackId;
    self.callback = callbackid;
    
    cocos2d::LuaBridge::retainLuaFunctionById([callbackid intValue]);
    
}
- (void) callbackLua:(NSString*)status
{
    if(self.callback != nil) {
        
        
        int callbackid = [self.callback intValue];
        // 1. 将引用 ID 对应的 Lua function 放入 Lua stack
        cocos2d::LuaBridge::pushLuaFunctionById(callbackid);
        // 2. 将需要传递给 Lua function 的参数放入 Lua stack
        cocos2d::LuaBridge::getStack()->pushString([status UTF8String]);
        // 3. 执行 Lua function
        cocos2d::LuaBridge::getStack()->executeFunction(1);
        // 4. 释放引用 ID
        cocos2d::LuaBridge::releaseLuaFunctionById(callbackid);
        
        self.callbackId = Nil;
    }
}


- (void) setCallbackId1:(NSNumber *) callbackid
{
    //    int callbackId = self -> callbackId;
    self.callback1 = callbackid;
    
    cocos2d::LuaBridge::retainLuaFunctionById([callbackid intValue]);
    
}
- (void) callbackLua1:(NSString*)status
{
    if(self.callback1 != nil) {
        
        
        int callbackid = [self.callback1 intValue];
        // 1. 将引用 ID 对应的 Lua function 放入 Lua stack
        cocos2d::LuaBridge::pushLuaFunctionById(callbackid);
        // 2. 将需要传递给 Lua function 的参数放入 Lua stack
        cocos2d::LuaBridge::getStack()->pushString([status UTF8String]);
        // 3. 执行 Lua function
        cocos2d::LuaBridge::getStack()->executeFunction(1);
        // 4. 释放引用 ID
        cocos2d::LuaBridge::releaseLuaFunctionById(callbackid);
        
        self.callbackId1 = Nil;
    }
}


@end

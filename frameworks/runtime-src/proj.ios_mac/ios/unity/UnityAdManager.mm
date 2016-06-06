    //
//  DNPParticleSystemFrameQuad.cpp
//  cocos2d_tests
//
//  Created by lovejia on 14-8-29.
//
//

#import "UnityAdManager.h"
#import "CCLuaBridge.h"

@implementation UnityAdManager



+ (UnityAdManager *) getInstance
{
    static UnityAdManager *sharedInstance;
    if(sharedInstance == nil) sharedInstance = [UnityAdManager new];
    return sharedInstance;
}

+ (void)init:(NSDictionary*) dict
{
     CCLOG("unity ad init");
      NSString *appID = [dict objectForKey:@"id"];
    [UnityAdManager getInstance]._adsView = [[UnityAdsViewController alloc] init];
//    [[UnityAdManager getInstance]._adsView viewDidLoad];
    [[UnityAdManager getInstance]._adsView startAds:appID];
}

//+ (void)loadAd{
//    //    [[InterstitialViewController alloc] loadAd];
//    [[UnityAdManager getInstance]._adsView loadAd];
//}

+ (void)playAd:(NSDictionary*) dict
{
    CCLOG("unity ad show");
    //    [[InterstitialViewController alloc] showAd];
    [[UnityAdManager getInstance] setCallbackId:[dict valueForKey:@"callback"]];
    [[UnityAdManager getInstance]._adsView openAds];
}


+ (void)hasAd:(NSDictionary*) dict
{
    CCLOG("unity ad show");
    //    [[InterstitialViewController alloc] showAd];
    [[UnityAdManager getInstance] setCallbackId1:[dict valueForKey:@"callback"]];
    [[UnityAdManager getInstance]._adsView hasAds];
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

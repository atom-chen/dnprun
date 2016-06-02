    //
//  DNPParticleSystemFrameQuad.cpp
//  cocos2d_tests
//
//  Created by lovejia on 14-8-29.
//
//

#import "GdtAdManager.h"
#import "InterstitialViewController.h"
#import "SplashViewController.h"
#import "CCLuaBridge.h"


@implementation GdtAdManager


+ (GdtAdManager *) getInstance
{
    static GdtAdManager *sharedInstance;
    if(sharedInstance == nil) sharedInstance = [GdtAdManager new];
    return sharedInstance;
}

+ (void)init
{
    [GdtAdManager getInstance]._interstitial = [[InterstitialViewController alloc] init];
    [[GdtAdManager getInstance]._interstitial initWithAppAndPlacement];
    
    [GdtAdManager getInstance]._splash = [[SplashViewController alloc] init];
}

+ (void)loadInterAd{
//    [[InterstitialViewController alloc] loadAd];
    [[GdtAdManager getInstance]._interstitial loadAd];
}

+ (void)playInterAd
{
    CCLOG("call gdt interstitialAd to show!");
//    [[InterstitialViewController alloc] showAd];
//    [[GDTAdManager getInstance] setCallbackId:[dict valueForKey:@"callback"]];
    [[GdtAdManager getInstance]._interstitial showAd];
}


+ (void)playSplashAd{
      [[GdtAdManager getInstance]._splash showSplashAd];
}

//
//- (void) setCallbackId:(NSNumber *) callbackid
//{
//    //    int callbackId = self -> callbackId;
//    self.callback = callbackid;
//    
//    cocos2d::LuaBridge::retainLuaFunctionById([callbackid intValue]);
//    
//}
//- (void) callbackLua:(NSString*)status
//{
//    if(self.callback != nil) {
//        
//        
//        int callbackid = [self.callback intValue];
//        // 1. 将引用 ID 对应的 Lua function 放入 Lua stack
//        cocos2d::LuaBridge::pushLuaFunctionById(callbackid);
//        // 2. 将需要传递给 Lua function 的参数放入 Lua stack
//        cocos2d::LuaBridge::getStack()->pushString([status UTF8String]);
//        // 3. 执行 Lua function
//        cocos2d::LuaBridge::getStack()->executeFunction(1);
//        // 4. 释放引用 ID
//        cocos2d::LuaBridge::releaseLuaFunctionById(callbackid);
//        
//        self.callbackId = Nil;
//    }
//}



@end

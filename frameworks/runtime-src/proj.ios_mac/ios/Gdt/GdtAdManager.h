//
//  ViewController.h
//  SocialFrameworkExample
//
//  Created by Lei Jing on 9/10/12.
//  Copyright (c) 2012 com.leijing. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "InterstitialViewController.h"
#import "SplashViewController.h"
@interface GdtAdManager : NSObject


+ (GdtAdManager *) getInstance;

+ (void)loadInterAd;
+ (void)playInterAd;

+ (void)playSplashAd;

//- (void) setCallbackId:(NSNumber *) callbackid;
//- (void) callbackLua:(NSString*)status;

@property (nonatomic, readwrite, retain) InterstitialViewController* _interstitial;
@property (nonatomic, readwrite, retain) SplashViewController* _splash;
//@property (nonatomic, readwrite, retain)  NSNumber *callback;

@end
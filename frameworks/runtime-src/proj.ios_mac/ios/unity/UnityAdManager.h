//
//  ViewController.h
//  SocialFrameworkExample
//
//  Created by Lei Jing on 9/10/12.
//  Copyright (c) 2012 com.leijing. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UnityAdsViewController.h"
@interface UnityAdManager : NSObject


+ (UnityAdManager *) getInstance;
+ (void)init:(NSDictionary*) dict;
+ (void)playAd:(NSDictionary*) dict;
+ (void)hasAd:(NSDictionary*) dict;

- (void) setCallbackId:(NSNumber *) callbackid;
- (void) callbackLua:(NSString*)status;
- (void) setCallbackId1:(NSNumber *) callbackid;
- (void) callbackLua1:(NSString*)status;

@property (nonatomic, readwrite, retain) UIViewController* viewController;
@property (nonatomic, readwrite, retain) UnityAdsViewController* _adsView;
@property (nonatomic, readwrite, retain)  NSNumber *callback;
@property (nonatomic, readwrite, retain)  NSNumber *callback1;
@end
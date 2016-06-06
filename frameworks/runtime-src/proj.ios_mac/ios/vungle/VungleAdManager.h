//
//  ViewController.h
//  SocialFrameworkExample
//
//  Created by Lei Jing on 9/10/12.
//  Copyright (c) 2012 com.leijing. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <VungleSDK/VungleSDK.h>
@interface VungleAdManager : NSObject<VungleSDKDelegate,VungleSDKLogger>

+ (VungleAdManager *) getInstance;
+ (void)init:(NSDictionary*) dict;
+ (void)play:(NSDictionary*) dict;
+ (void)isVideoReady:(NSDictionary*) dict;


@property (nonatomic, readwrite, retain) UIViewController* viewController;
@property (nonatomic, readwrite, retain) VungleSDK* sdk;
@property (nonatomic, readwrite, retain)  NSNumber *callback;
@property (nonatomic, readwrite, retain)  NSNumber *callback1;
@end
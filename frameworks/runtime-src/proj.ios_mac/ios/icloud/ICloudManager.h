//
//  GameCenter.h
//  Template
//
//  Created by sniu on 4/20/15.
//
//

#ifndef ICloudManager_h
#define ICloudManager_h


@interface ICloudManager : NSObject
{
    NSNumber *callbackId;
}

+ (ICloudManager*) getInstance;
+ (void)insertRecord:(NSDictionary*) dict;
+ (void)selectRecord:(NSDictionary*) dict;
+ (void)updateRecord:(NSDictionary*) dict;



+ (void) init:(NSDictionary*) dict;

- (void) selectCallLua:(NSString*)status;

@property (nonatomic, readwrite, retain)  NSNumber *selectCall;

@end

#endif

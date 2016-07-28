/*
 GameCenterHelper.mm
 
 Copyright 2014 Adrian Dawid
 
 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at
 
 http://www.apache.org/licenses/LICENSE-2.0
 
 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
 
 
 Created by Adrian Dawid on 17.08.14.
 
 */

#import "ICloudManager.h"
#import "CloudKit/CloudKit.h"
#import "CCLuaBridge.h"
#include <string>

@implementation ICloudManager

+(ICloudManager *)getInstance
{
    static ICloudManager *sharedInstance;
    if(sharedInstance == nil) sharedInstance = [ICloudManager new];
    return sharedInstance;
}

- (id)init
{
    self = [super init];
    if (self) {
        return self;
    }
    return nil;
}


+(void) insertRecord:(NSDictionary *) dict
{
    NSString* recordId = [dict valueForKey:@"id"];
    NSString* recordName = [dict valueForKey:@"name"];
    NSString* recirdKeys = [dict valueForKey:@"keys"];
    NSString* recirdValues = [dict valueForKey:@"values"];
    
    
    //创建一条记录的ID并指定一个唯一的名字
    CKRecordID *olRecordID = [[CKRecordID alloc] initWithRecordName:recordId];
    
    //创建一个记录对象
    CKRecord *olRecord = [[CKRecord alloc] initWithRecordType: recordName recordID:olRecordID ];
    
     NSArray *keys = [recirdKeys componentsSeparatedByString:@";"];
     NSArray *values = [recirdValues componentsSeparatedByString:@";"];
    
    for( int i=0; i<keys.count; i++){
        NSString *rcdKey = [keys objectAtIndex:i];
         NSString *rcdValue = [values objectAtIndex:i];
        olRecord[rcdKey] = rcdValue;
    }
    
    CKContainer *myContainer = [CKContainer defaultContainer];
        CKDatabase *publicDatabase = [myContainer publicCloudDatabase];
    
        [publicDatabase saveRecord:olRecord completionHandler:^(CKRecord *artworkRecord, NSError *error){
            if (!error) {
    
                NSLog(@"icloud 保存成功");
            }
            else {
                NSLog(@"icloud 保存失败%@",error);
            }
        }];
    
}

+(void) selectRecord:(NSDictionary *) dict
{
    NSString* recordId = [dict valueForKey:@"id"];
    NSString* recordName = [dict valueForKey:@"name"];
    NSString* recirdKeys = [dict valueForKey:@"keys"];
    NSNumber* callbackId = [dict valueForKey:@"callback"];
    [ICloudManager getInstance].selectCall = callbackId;
    cocos2d::LuaBridge::retainLuaFunctionById([callbackId intValue]);
    
    NSArray *keys = [recirdKeys componentsSeparatedByString:@";"];
    
    //1.创建容器
    CKDatabase *publicDatabase = [[CKContainer defaultContainer] publicCloudDatabase];
    //2.创建记录ID
    CKRecordID *artworkRecordID = [[CKRecordID alloc] initWithRecordName:recordId];
    //3.查询
    [publicDatabase fetchRecordWithID:artworkRecordID completionHandler:^(CKRecord *artworkRecord, NSError *error) {
        if (error) {
            
            NSLog(@"获取失败：%@",error);
            [[ICloudManager getInstance] selectCallLua:@"none"];
        }
        else {
            NSLog(@"获取成功！%lu",keys.count);
            std::string values = "";
            for( int i=0; i<keys.count; i++){
                NSString *rcdKey = [keys objectAtIndex:i];
                NSString *value = artworkRecord[rcdKey];
                if (i<keys.count-1) {
                    values = values + [value UTF8String] + ";";
                }
                else
                {
                   values = values + [value UTF8String];
                }
            }
            
            [[ICloudManager getInstance] selectCallLua:[NSString stringWithUTF8String: values.c_str()]];
        }

    }];
}


+(void) updateRecord:(NSDictionary *) dict
{
    NSString* recordId = [dict valueForKey:@"id"];
    NSString* recordName = [dict valueForKey:@"name"];
    NSString* recirdKeys = [dict valueForKey:@"keys"];
    NSString* recirdValues = [dict valueForKey:@"values"];
    
    NSArray *keys = [recirdKeys componentsSeparatedByString:@";"];
    NSArray *values = [recirdValues componentsSeparatedByString:@";"];
    //1.获取数据库
    CKDatabase *publicDatabase = [[CKContainer defaultContainer]
                                  publicCloudDatabase];
    //2.记录ID
    CKRecordID *artworkRecordID = [[CKRecordID alloc] initWithRecordName:recordId];
    
    //3.查询
    [publicDatabase fetchRecordWithID:artworkRecordID completionHandler:^(CKRecord
                                                                          *artworkRecord, NSError *error) {
        if (error) {
            //处理错误
            
        }else {
            
            // 修改数据库中的记录。。。your code
            for( int i=0; i<keys.count; i++){
                NSString *rcdKey = [keys objectAtIndex:i];
                NSString *rcdValue = [values objectAtIndex:i];
                artworkRecord[rcdKey] = rcdValue;
            }
            //保存
            [publicDatabase saveRecord:artworkRecord completionHandler:^(CKRecord
                                                                         *savedRecord, NSError *saveError) {
                //处理错误
            }];
        } }];
}


- (void) selectCallLua:(NSString*)status
{
    if(self.selectCall != nil) {
        
        int callbackid = [self.selectCall intValue];
        // 1. 将引用 ID 对应的 Lua function 放入 Lua stack
        cocos2d::LuaBridge::pushLuaFunctionById(callbackid);
        // 2. 将需要传递给 Lua function 的参数放入 Lua stack
        cocos2d::LuaBridge::getStack()->pushString([status UTF8String]);
        // 3. 执行 Lua function
        cocos2d::LuaBridge::getStack()->executeFunction(1);
        // 4. 释放引用 ID
        cocos2d::LuaBridge::releaseLuaFunctionById(callbackid);
        
        self.selectCall = Nil;
    }
}


@end

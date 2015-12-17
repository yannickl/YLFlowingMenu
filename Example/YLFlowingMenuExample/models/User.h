//
//  User.h
//  YLFlowingMenuExample
//
//  Created by Yannick LORIOT on 17/12/15.
//  Copyright © 2015 Yannick LORIOT. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface User : NSObject
@property (assign, readonly, nonatomic) NSInteger identifier;
@property (strong, readonly, nonatomic) NSString * _Nonnull firstname;
@property (strong, readonly, nonatomic) NSString * _Nonnull lastname;
@property (assign, readonly, nonatomic) BOOL newMessage;

- (nonnull id)initWithId:(NSInteger)identifier firstname:(NSString * _Nonnull)firstname lastname:(NSString * _Nonnull)lastname newMessage:(BOOL)newMessage;
- (NSString * _Nonnull)displayName;
- (nullable UIImage *)avatarImage;
+ (nonnull NSArray<User *> *)dummyUsers;

@end

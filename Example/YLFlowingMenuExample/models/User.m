//
//  User.m
//  YLFlowingMenuExample
//
//  Created by Yannick LORIOT on 17/12/15.
//  Copyright © 2015 Yannick LORIOT. All rights reserved.
//

#import "User.h"

@implementation User

- (id)initWithId:(NSInteger)identifier firstname:(NSString *)firstname lastname:(NSString *)lastname newMessage:(BOOL)newMessage {
  if ((self = [super init])) {
    _identifier = identifier;
    _firstname  = firstname;
    _lastname   = lastname;
    _newMessage = newMessage;
  }
  return self;
}

- (NSString *)displayName {
  return [NSString stringWithFormat:@"%@ %@", _firstname, _lastname];
}

- (UIImage *)avatarImage {
  return [UIImage imageNamed:[NSString stringWithFormat:@"%ld.jpg", (long)_identifier]];
}

// Data taken from https://randomuser.me/
+ (NSArray<User *> *)dummyUsers {
  return @[
           [[User alloc] initWithId:79 firstname:@"Noelia" lastname:@"Marin" newMessage:YES],
           [[User alloc] initWithId:1 firstname:@"Enrique" lastname:@"Santos" newMessage:YES],
           [[User alloc] initWithId:63 firstname:@"Roberto" lastname:@"Crespo" newMessage: YES],
           [[User alloc] initWithId:52 firstname:@"Veronica" lastname:@"Cortes" newMessage: YES],
           [[User alloc] initWithId:47 firstname:@"Nerea" lastname:@"Alonso" newMessage:NO],
           [[User alloc] initWithId:27 firstname:@"Silvia" lastname:@"Herrero" newMessage:NO],
           [[User alloc] initWithId:4 firstname:@"Susana" lastname:@"Aguilar" newMessage:NO],
           [[User alloc] initWithId:89 firstname:@"Alejandro" lastname:@"Moya" newMessage:NO],
           [[User alloc] initWithId:5 firstname:@"Inmaculada" lastname:@"Cortes" newMessage:NO],
           [[User alloc] initWithId:15 firstname:@"Teresa" lastname:@"Saez" newMessage:NO],
           [[User alloc] initWithId:37 firstname:@"Lorenzo" lastname:@"Vicente" newMessage:NO],
           [[User alloc] initWithId:92 firstname:@"Joel" lastname:@"Mattila" newMessage:NO]
           ];
}

@end

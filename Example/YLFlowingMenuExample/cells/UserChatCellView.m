//
//  UserChatCellView.m
//  YLFlowingMenuExample
//
//  Created by Yannick LORIOT on 17/12/15.
//  Copyright © 2015 Yannick LORIOT. All rights reserved.
//

#import "UserChatCellView.h"

@implementation UserChatCellView

- (void)layoutSubviews {
  [super layoutSubviews];

  _avatarImageView.layer.masksToBounds = true;
  _statusView.layer.masksToBounds      = true;

  _avatarImageView.layer.cornerRadius = _avatarImageView.bounds.size.width / 2;
  _statusView.layer.cornerRadius      = _statusView.bounds.size.width / 2;
}

@end

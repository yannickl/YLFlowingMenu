//
//  UserContactCellView.m
//  YLFlowingMenuExample
//
//  Created by Yannick LORIOT on 17/12/15.
//  Copyright © 2015 Yannick LORIOT. All rights reserved.
//

#import "UserContactCellView.h"

@implementation UserContactCellView

- (void)layoutSubviews {
  [super layoutSubviews];

  _avatarImageView.layer.masksToBounds = true;
  _avatarImageView.layer.cornerRadius  = _avatarImageView.bounds.size.width / 2;
}

@end

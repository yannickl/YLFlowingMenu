//
//  UIColor+HexInt.m
//  YLFlowingMenuExample
//
//  Created by Yannick LORIOT on 17/12/15.
//  Copyright © 2015 Yannick LORIOT. All rights reserved.
//

#import "UIColor+HexInt.h"

@implementation UIColor (HexInt)

+ (instancetype)colorWithHex:(UInt32)hex {
  UInt32 mask = 0x000000FF;

  UInt32 r = (hex >> 16) & mask;
  UInt32 g = (hex >> 8) & mask;
  UInt32 b = (hex) & mask;

  CGFloat red   = (CGFloat)r / 255;
  CGFloat green = (CGFloat)g / 255;
  CGFloat blue  = (CGFloat)b / 255;

  return [[self alloc] initWithRed:red green:green blue:blue alpha:1];
}

@end

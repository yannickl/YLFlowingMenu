//
//  MenuViewController.m
//  YLFlowingMenuExample
//
//  Created by Yannick LORIOT on 17/12/15.
//  Copyright © 2015 Yannick LORIOT. All rights reserved.
//

#import "MenuViewController.h"
#import "User.h"
#import "UIColor+HexInt.h"
#import "UserChatCellView.h"

static NSString *CellName = @"UserChatCell";

@interface MenuViewController ()
@property (nonatomic, strong) NSArray<User *> *users;
@property (nonatomic, strong) UIColor *mainColor;

@end

@implementation MenuViewController

- (void)viewDidLoad {
  [super viewDidLoad];

  _users          = [User dummyUsers];
  _mainColor      = [UIColor colorWithHex:0xC4ABAA];

  _topBar.tintColor              = [UIColor blackColor];
  _topBar.barTintColor           = _mainColor;
  _topBar.titleTextAttributes    = @{
                                     NSFontAttributeName: [UIFont fontWithName: @"HelveticaNeue-Light" size: 22],
                                     NSForegroundColorAttributeName: [UIColor blackColor]
                                     };
  _userTableView.backgroundColor = _mainColor;
  self.view.backgroundColor      = _mainColor;
}

#pragma mark - Managing the Status Bar

- (UIStatusBarStyle)preferredStatusBarStyle {
  return UIStatusBarStyleLightContent;
}

#pragma mark - UITableView DataSource Methods

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
  return _users.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
  UserChatCellView *cell = (UserChatCellView *)[tableView dequeueReusableCellWithIdentifier:CellName];

  User *user = _users[indexPath.row];

  cell.displayNameLabel.text = [user displayName];
  cell.avatarImageView.image = [user avatarImage];
  cell.statusView.hidden     = [user newMessage];

  cell.contentView.backgroundColor = _mainColor;

  return cell;
}

@end

//
//  ViewController.m
//  YLFlowingMenuExample
//
//  Created by Yannick LORIOT on 17/12/15.
//  Copyright © 2015 Yannick LORIOT. All rights reserved.
//

#import "ViewController.h"
#import "User.h"
#import "UIColor+HexInt.h"
#import "UserContactCellView.h"

static NSString *PresentSegueName = @"PresentMenuSegue";
static NSString *DismissSegueName = @"DismissMenuSegue";
static NSString *CellName         = @"UserContactCell";

@interface ViewController ()
@property (nonatomic, strong) NSArray<User *> *users;
@property (nonatomic, strong) UIColor *mainColor;
@property (nonatomic, strong) UIColor *derivatedColor;

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];

  _users          = [User dummyUsers];
  _mainColor      = [UIColor colorWithHex:0x804C5F];
  _derivatedColor = [UIColor colorWithHex: 0x794759];

  _topBar.tintColor              = [UIColor whiteColor];
  _topBar.barTintColor           = _mainColor;
  _topBar.titleTextAttributes    = @{
                                     NSFontAttributeName: [UIFont fontWithName: @"HelveticaNeue-Light" size: 22],
                                     NSForegroundColorAttributeName: [UIColor whiteColor]
                                     };
  _userTableView.backgroundColor = _mainColor;
  self.view.backgroundColor      = _mainColor;
}

#pragma mark - Interacting with Storyboards and Segues

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {

}

#pragma mark - Action Methods

- (IBAction)unwindToMainViewController:(UIStoryboardSegue *)segue {

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
  UserContactCellView *cell = (UserContactCellView *)[tableView dequeueReusableCellWithIdentifier:CellName];

  User *user = _users[indexPath.row];

  cell.displayNameLabel.text = [user displayName];
  cell.avatarImageView.image = [user avatarImage];

  cell.contentView.backgroundColor = indexPath.row % 2 == 0 ? _derivatedColor : _mainColor;

  return cell;
}

@end

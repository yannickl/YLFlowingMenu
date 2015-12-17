//
//  MenuViewController.h
//  YLFlowingMenuExample
//
//  Created by Yannick LORIOT on 17/12/15.
//  Copyright © 2015 Yannick LORIOT. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MenuViewController : UIViewController<UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UINavigationBar *topBar;
@property (weak, nonatomic) IBOutlet UITableView *userTableView;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *backButtonItem;

#pragma mark - Action Methods

@end

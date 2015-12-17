//
//  ViewController.h
//  YLFlowingMenuExample
//
//  Created by Yannick LORIOT on 17/12/15.
//  Copyright © 2015 Yannick LORIOT. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "FlowingMenuTransitionManager.h"

@interface ViewController : UIViewController<UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UINavigationBar *topBar;
@property (weak, nonatomic) UITableView *userTableView;
@property (strong, nonatomic) FlowingMenuTransitionManager *flowingMenuTransitionManager;

#pragma mark - Action Methods

- (IBAction)unwindToMainViewController:(UIStoryboardSegue *)segue;

@end


//
//  LBZViewController.m
//  VerifyName
//
//  Created by laobizhai on 08/14/2019.
//  Copyright (c) 2019 laobizhai. All rights reserved.
//

#import "LBZViewController.h"
#import <LBZVerifyName.h>
@interface LBZViewController ()

@end

@implementation LBZViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    BOOL isYes = [[LBZVerifyName alloc] isVaildRealName:@"发哥"];
    if (isYes == YES) {
        NSLog(@"姓名符合规则");
    } else {
        NSLog(@"姓名不符合规则");
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

//
//  LBZViewController.m
//  VerifyName
//
//  Created by laobizhai on 08/14/2019.
//  Copyright (c) 2019 laobizhai. All rights reserved.
//

#import "LBZViewController.h"
#import <LBZVerifyName.h>
#import <LBZPhoneNumVerify.h>
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
    
    BOOL isNo = [[LBZPhoneNumVerify alloc] validateContactNumber:@"1538211268"];
    if (isNo == YES) {
        NSLog(@"手机号不符合规则");
    } else {
        NSLog(@"手机号符合规则");
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

//
//  WCViewController.m
//  WCLib
//
//  Created by 394771176 on 02/24/2021.
//  Copyright (c) 2021 394771176. All rights reserved.
//

#import "WCViewController.h"
#import <WCLib/WXApi.h>

@interface WCViewController ()

@end

@implementation WCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [WXApi version];
//    [WXApi registerApp:@""];
    [WXApi registerApp:@"" universalLink:@""];
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

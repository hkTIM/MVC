//
//  ViewController.m
//  Framework
//
//  Created by 黄坤 on 2017/8/24.
//  Copyright © 2017年 Tim. All rights reserved.
//

#import "ViewController.h"
#import "MVCController.h"
#import "MVPController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self showMVP];
    });
    // Do any additional setup after loading the view, typically from a nib.
}
-(void)showMVC
{
    MVCController *mvc=[MVCController new];
    [self presentViewController:mvc animated:true completion:nil];
    
}

-(void)showMVP
{
    MVPController *mvc=[MVPController new];
    [self presentViewController:mvc animated:true completion:nil];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

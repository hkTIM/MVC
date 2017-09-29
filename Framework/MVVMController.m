//
//  MVVMController.m
//  Framework
//
//  Created by 黄坤 on 2017/8/24.
//  Copyright © 2017年 Tim. All rights reserved.
//

#import "MVVMController.h"
#import "MVVMView.h"
#import "MVVMViewModel.h"
#import "MVVMPaper.h"
@interface MVVMController ()
@property(strong ,nonatomic) MVVMPaper *paper;
@property(strong ,nonatomic) MVVMView   *mvvmView;
@property(strong ,nonatomic) MVVMViewModel  *mvvmModel;
@end

@implementation MVVMController

- (void)viewDidLoad {
    [super viewDidLoad]; 

    
    self.paper=[MVVMPaper new];
    _paper.content=@"line 0";
    self.mvvmView=[MVVMView new];
    self.mvvmView.frame=self.view.bounds;
    [self.view addSubview:self.mvvmView];
    
    self.mvvmModel=[MVVMViewModel new];

    

    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

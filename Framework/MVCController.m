//
//  MVCController.m
//  Framework
//
//  Created by 黄坤 on 2017/8/24.
//  Copyright © 2017年 Tim. All rights reserved.
//

#import "MVCController.h"
#import "MVCView.h"
#import "MVCModel.h"

@interface MVCController ()<MVCViewDelegate>
@property (strong, nonatomic) MVCView *myView;
@property (strong, nonatomic) MVCModel *myModel;

@end

@implementation MVCController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.myView=[MVCView new];
    self.myView.delegate=self;
    self.myView.frame=self.view.bounds;
    [self.view addSubview:_myView];
    
    self.myModel =[MVCModel new];
    self.myModel.content=@"line 0";
    [self printPaper];
    // Do any additional setup after loading the view.
}

-(void)printPaper
{
    [self.myView printOnView:self.myModel];
}
-(void)onPrintBtnChick
{
    int rand=arc4random()%15;
    _myModel.content=[NSString stringWithFormat:@"line %d",rand];
    [_myView printOnView:_myModel];
    
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

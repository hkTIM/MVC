//
//  MVPController.m
//  Framework
//
//  Created by 黄坤 on 2017/8/24.
//  Copyright © 2017年 Tim. All rights reserved.
//

#import "MVPController.h"
#import "Presenter.h"
#import "MVPView.h"
#import "MVPModel.h"
@interface MVPController ()
@property(strong ,nonatomic) Presenter *present;
@property(strong ,nonatomic) MVPView   *mvpView;
@property(strong ,nonatomic) MVPModel  *mvpModel;
@end

@implementation MVPController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.present=[Presenter new];
    self.mvpView=[MVPView new];
    self.mvpView.frame=self.view.bounds;
    [self.view addSubview:self.mvpView];
    self.mvpModel=[MVPModel new];
    self.mvpModel.content=@"mvp line 0";
    
    _present.model=_mvpModel;
    _present.view=_mvpView;
    
    _mvpView.delegate=_present;
    
    [_present printTask];
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

//
//  MVCView.m
//  Framework
//
//  Created by 黄坤 on 2017/8/24.
//  Copyright © 2017年 Tim. All rights reserved.
//

#import "MVCView.h"

@interface MVCView ()
@property (strong ,nonatomic) UIButton *btnPrint;
@end

@implementation MVCView
-(instancetype)init
{
    self =[super init];
    if (self) {
        self.backgroundColor=[UIColor lightGrayColor];
        
        self.btnPrint=[UIButton new];
        _btnPrint.frame=CGRectMake(100, 100, 100, 30);
        [_btnPrint setTitle:@"btnPrint" forState:UIControlStateNormal];
        [_btnPrint addTarget:self action:@selector(onPrintChick) forControlEvents:UIControlEventTouchDown];
        
        [self addSubview:self.btnPrint];
    }
    return  self;
}
-(void)printOnView:(MVCModel *)model
{
    NSLog(@"print model content : %@",model.content);
}

-(void)onPrintChick
{
    if (_delegate) {
        [_delegate onPrintBtnChick];
    }
}

@end

//
//  MVPView.m
//  Framework
//
//  Created by 黄坤 on 2017/8/24.
//  Copyright © 2017年 Tim. All rights reserved.
//

#import "MVPView.h"

@interface MVPView ()

@property (nonatomic ,strong) UILabel *contentLab;
@property (strong ,nonatomic) UIButton *btnPrint;

@end

@implementation MVPView

-(instancetype)init
{
    self = [super init];
    if (self) {
        
        self.backgroundColor=[UIColor lightGrayColor];
        self.contentLab=[UILabel new];
        [self addSubview:self.contentLab];
        _contentLab.frame=CGRectMake(0, 100, 300, 30);
        _contentLab.textAlignment=NSTextAlignmentCenter;
        _contentLab.textColor=[UIColor blackColor];
        
        
        
        self.btnPrint=[UIButton new];
        _btnPrint.frame=CGRectMake(100, 200, 100, 30);
        [_btnPrint setTitle:@"btnPrint" forState:UIControlStateNormal];
        [_btnPrint addTarget:self action:@selector(onPrintChick) forControlEvents:UIControlEventTouchDown];
        [self addSubview:self.btnPrint];
        
    }
    return  self;
}
-(void)printOnView:(NSString *)content
{
    self.contentLab.text=content;
}

-(void)onPrintChick
{
    if (_delegate) {
        [_delegate onPrintBtnChick];
    }
}
@end

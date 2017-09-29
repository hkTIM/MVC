//
//  MVVMView.m
//  Framework
//
//  Created by 黄坤 on 2017/8/24.
//  Copyright © 2017年 Tim. All rights reserved.
//

#import "MVVMView.h"

@interface MVVMView ()

@property (nonatomic ,strong) UILabel *contentLab;
@property (strong ,nonatomic) UIButton *btnPrint;

@end
@implementation MVVMView


-(instancetype)init
{
    self = [super init];
    if (self) {
        
        self.backgroundColor=[UIColor lightGrayColor];
        
        self.contentLab=[UILabel new];
        [self addSubview:self.contentLab];
        _contentLab.frame=CGRectMake(0, 100, 300, 30);
        _contentLab.textAlignment=NSTextAlignmentCenter;
        _contentLab.font=[UIFont systemFontOfSize:20];
        _contentLab.textColor=[UIColor blackColor];
    }
    return self;
}


@end

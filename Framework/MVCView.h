//
//  MVCView.h
//  Framework
//
//  Created by 黄坤 on 2017/8/24.
//  Copyright © 2017年 Tim. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MVCModel.h"

@protocol MVCViewDelegate <NSObject>

-(void)onPrintBtnChick;


@end

@interface MVCView : UIView
-(void)printOnView:(MVCModel *)model;

@property (weak ,nonatomic) id<MVCViewDelegate>   delegate;

@end

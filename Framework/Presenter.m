//
//  Presenter.m
//  Framework
//
//  Created by 黄坤 on 2017/8/24.
//  Copyright © 2017年 Tim. All rights reserved.
//

#import "Presenter.h"

@interface Presenter ()<MVPViewDelegate>

@end

@implementation Presenter
-(void)printTask
{
    
    NSString *printContent=_model.content;
    [_view printOnView:printContent];
    
}

-(void)onPrintBtnChick
{
    int rand=arc4random()%15;
     _model.content=[NSString stringWithFormat:@"mvp line %d",rand];
    [_view printOnView:_model.content];
    
}
@end

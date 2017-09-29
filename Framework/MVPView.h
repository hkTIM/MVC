//
//  MVPView.h
//  Framework
//
//  Created by 黄坤 on 2017/8/24.
//  Copyright © 2017年 Tim. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol MVPViewDelegate <NSObject>

-(void)onPrintBtnChick;


@end
@interface MVPView : UIView
-(void)printOnView:(NSString *)content;
@property (weak ,nonatomic) id<MVPViewDelegate>   delegate;
@end

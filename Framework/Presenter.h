//
//  Presenter.h
//  Framework
//
//  Created by 黄坤 on 2017/8/24.
//  Copyright © 2017年 Tim. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MVPModel.h"
#import "MVPView.h"
@interface Presenter : NSObject
@property (strong ,nonatomic)MVPModel *model;
@property (strong ,nonatomic)MVPView *view;
-(void)printTask;
@end

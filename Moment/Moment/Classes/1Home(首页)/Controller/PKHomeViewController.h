//
//  PKHomeViewController.h
//  01-片刻
//
//  Created by qianfeng on 15-4-23.
//  Copyright (c) 2015年 Jason Ding. All rights reserved.
//

#import <UIKit/UIKit.h>
@class PKHomeRightView;

@interface PKHomeViewController : UIViewController

@property (nonatomic, weak)PKHomeRightView * rightView;


+ (PKHomeViewController *)sharedInstance;

@end

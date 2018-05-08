//
//  UIViewController+KCNavigationTransition.h
//  KCNavigationTransition
//
//  Created by Erica on 2018/5/7.
//  Copyright © 2018年 Erica. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (KCTransition)

@property (nonatomic,assign) CGFloat kc_navigationBarBackgroundAlpha;

@property (nonatomic,strong) UIColor *kc_navigationBarBackgroundColor;

@property (nonatomic,strong) UIColor *kc_navigationBarTintColor;

@end

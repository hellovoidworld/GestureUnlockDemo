//
//  HVWLockView.h
//  HVWLockView
//
//  Created by hellovoidworld on 15/1/12.
//  Copyright (c) 2015年 hellovoidworld. All rights reserved.
//

#import <UIKit/UIKit.h>

@class HVWLockView;
@protocol HVWLockViewDelegate <NSObject>

/** 结束手势解锁代理事件 */
@optional
- (void) hvwLockView:(HVWLockView *) hvwLockView didFinishedWithPath:(NSString *) path;

@end

@interface HVWLockView : UIView

/** 代理 */
@property(nonatomic, weak) IBOutlet id<HVWLockViewDelegate> delegate;

@end

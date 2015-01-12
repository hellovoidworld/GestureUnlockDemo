//
//  HVWLockButton.m
//  HVWLockView
//
//  Created by hellovoidworld on 15/1/12.
//  Copyright (c) 2015年 hellovoidworld. All rights reserved.
//

#import "HVWLockButton.h"

@implementation HVWLockButton

/** 使用文件创建会调用 */
- (id)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
        [self initLockButton];
    }
    return self;
}

/** 使用代码创建会调用 */
- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self initLockButton];
    }
    return self;
}

/** 初始化 */
- (void) initLockButton {
    // 取消交互事件（点击）
    self.userInteractionEnabled = NO;
    
    // 设置普通状态图片
    [self setBackgroundImage:[UIImage imageNamed:@"gesture_node_normal"] forState:UIControlStateNormal];
    
    // 设置选中状态图片
    [self setBackgroundImage:[UIImage imageNamed:@"gesture_node_highlighted"] forState:UIControlStateSelected];
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    // 可触碰范围
    CGFloat touchWidth = 24;
    CGFloat touchHeight = 24;
    CGFloat touchX = self.center.x - touchWidth/2;
    CGFloat touchY = self.center.y - touchHeight/2;
    self.touchFrame = CGRectMake(touchX, touchY, 24, 24);
}

@end

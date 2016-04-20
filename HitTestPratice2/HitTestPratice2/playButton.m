//
//  playButton.m
//  HitTestPratice2
//
//  Created by  江苏 on 16/4/20.
//  Copyright © 2016年 jiangsu. All rights reserved.
//

#import "playButton.h"

@interface playButton ()

@end
@implementation playButton

-(UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event{
    CGPoint childP=[self convertPoint:point toView:self.btn];
    
    UIView* fitView=[self.btn hitTest:childP withEvent:event];
    
    if (fitView) {
        return fitView;
    }
    
    return self;
}
@end

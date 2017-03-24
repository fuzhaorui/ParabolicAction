//
//  ParabolicAction.m
//  Parabolic
//
//  Created by IOS-开发机 on 15/12/8.
//  Copyright © 2015年 IOS-开发机. All rights reserved.
//

#import "ParabolicAction.h"

@interface ParabolicAction ()<CAAnimationDelegate>


@end

@implementation ParabolicAction

-(void)parabolicActionView:(UIView *)view andStartPoint:(CGPoint)startPoint andEndPoint:(CGPoint)endPoint andMiddlePoint:(CGPoint)middlePoint
{
    
    
    UIBezierPath  *_path = [UIBezierPath bezierPath];
    [_path moveToPoint:startPoint];
    //三点曲线
    [_path addCurveToPoint:endPoint
             controlPoint1:startPoint
             controlPoint2:middlePoint];
    
    
    CALayer * _dotLayer = [CALayer layer];
    _dotLayer.backgroundColor = [UIColor redColor].CGColor;
    _dotLayer.frame = CGRectMake(0, 0, 15, 15);
    _dotLayer.cornerRadius = _dotLayer.frame.size.height/2;
    [view.layer addSublayer:_dotLayer];
    

    CAKeyframeAnimation *animation = [CAKeyframeAnimation animationWithKeyPath:@"position"];
    animation.path = _path.CGPath;
    animation.rotationMode = kCAAnimationRotateAuto;
    
    
    CABasicAnimation *alphaAnimation = [CABasicAnimation animationWithKeyPath:@"alpha"];
    alphaAnimation.duration = 0.5f;
    alphaAnimation.fromValue = [NSNumber numberWithFloat:1.0];
    alphaAnimation.toValue = [NSNumber numberWithFloat:0.1];
    alphaAnimation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];

    
    CAAnimationGroup *groups = [CAAnimationGroup animation];
    groups.animations = @[animation,alphaAnimation];
    groups.duration = 0.8f;
    groups.removedOnCompletion = NO;
    groups.fillMode = kCAFillModeForwards;
    groups.delegate = self;
    [groups setValue:@"groupsAnimation" forKey:@"animationName"];
    [_dotLayer addAnimation:groups forKey:nil];
    
    
    [self performSelector:@selector(removeFromLayer:) withObject:_dotLayer afterDelay:0.8f];
}


- (void)removeFromLayer:(CALayer *)layerAnimation{
    
    [layerAnimation removeFromSuperlayer];
}
@end

//
//  ParabolicAction.h
//  Parabolic
//
//  Created by IOS-开发机 on 15/12/8.
//  Copyright © 2015年 IOS-开发机. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ParabolicAction : NSObject

/*
 抛物动画画板view 起始点 startPoint  结束点 endPoint  中间点（不是经过的点，而是同时向中间点和结束抛，中间点这是方向) middlePoint
 */

-(void)parabolicActionView:(UIView *)view andStartPoint:(CGPoint)startPoint andEndPoint:(CGPoint)endPoint andMiddlePoint:(CGPoint)middlePoint;
@end

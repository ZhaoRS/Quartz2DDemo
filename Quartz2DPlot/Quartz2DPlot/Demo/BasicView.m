//
//  BasicView.m
//  Quartz2DPlot
//
//  Created by 赵瑞生 on 2017/6/30.
//  Copyright © 2017年 赵瑞生. All rights reserved.
//

#import "BasicView.h"


@implementation BasicView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
    //1.获取图形上下文
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    //2.创建路径
    CGMutablePathRef pathM = CGPathCreateMutable();
    //3.设置起点
    CGPathMoveToPoint(pathM, NULL, 50, 50);
    //加线
    CGPathAddLineToPoint(pathM, NULL, 200, 200);
    //把路径添加到图形上下文
    CGContextAddPath(ctx, pathM);
    
    //3.渲染
    CGContextStrokePath(ctx);
    CFRelease(pathM);
    
    
    /*绘制三角形*/
    CGContextRef traginCtx = UIGraphicsGetCurrentContext();
    CGContextMoveToPoint(traginCtx, 70, 70);
    //创建两条线段的终点
    CGContextAddLineToPoint(traginCtx, 70, 100);
    CGContextAddLineToPoint(traginCtx, 100, 100);
    //闭合path， 让他自动回到原点
    CGContextClosePath(traginCtx);
    CGContextStrokePath(traginCtx);
    
    /*绘制四边形*/
    CGContextRef quadCtx = UIGraphicsGetCurrentContext();
    CGContextAddRect(quadCtx, CGRectMake(100, 100, 50, 50));
    CGContextStrokePath(quadCtx);
    
    /*绘制椭圆形*/
    CGContextRef ovalCtx = UIGraphicsGetCurrentContext();
    CGContextAddEllipseInRect(ovalCtx, CGRectMake(200, 200, 80, 50));
    CGContextStrokePath(ovalCtx);
    
    /*绘制圆弧*/
    CGContextRef arcCtx = UIGraphicsGetCurrentContext();
    CGContextAddArc(arcCtx, 20, 300, 20, M_PI_4, M_PI, 1);
    CGContextClosePath(arcCtx);
    CGContextStrokePath(arcCtx);
    
    /*画线段*/
    CGContextRef lineCtx = UIGraphicsGetCurrentContext();
    CGContextMoveToPoint(lineCtx, 80, 300);
    CGContextAddLineToPoint(lineCtx, 200, 380);
    CGContextStrokePath(lineCtx);
    
    
    
    
}

@end

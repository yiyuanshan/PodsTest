//
//  YDBaseCell.m
//  YDMerchant_iPhone
//
//  Created by shanyiyuan on 16/2/25.
//  Copyright © 2016年 苏州联康网络有限公司. All rights reserved.
//

#import "YDBaseCell.h"

@interface YDBaseCell()
{
    BOOL bShowTopLine;
    BOOL bShowBottomLine;
}
@property (assign, nonatomic) BOOL bShowTopLine;
@property (assign, nonatomic) BOOL bShowBottomLine;
@end

@implementation YDBaseCell

@synthesize bShowTopLine;
@synthesize bShowBottomLine;

- (void)drawRect:(CGRect)rect
{
    [super drawRect:rect];
    
    if (!IOS_8) {
        self.backgroundColor = [UIColor clearColor];
    }else{
        self.tintColor = [UIColor clearColor];
    }
    
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextSetStrokeColorWithColor(ctx, ColorWithLine.CGColor);
    CGContextSetLineWidth(ctx, 1.f);
    
    if (self.bShowTopLine) {
        CGPoint leftPoint = CGPointMake(0,0);
        CGPoint rightPoint = CGPointMake(self.frame.size.width, 0);
        CGContextMoveToPoint(ctx, leftPoint.x, leftPoint.y);
        CGContextAddLineToPoint(ctx, rightPoint.x, rightPoint.y);
        CGContextStrokePath(ctx);
    }
    if (self.bShowBottomLine) {
        CGPoint leftPoint = CGPointMake(0,self.frame.size.height);
        CGPoint rightPoint = CGPointMake(self.frame.size.width, self.frame.size.height);
        CGContextMoveToPoint(ctx, leftPoint.x, leftPoint.y);
        CGContextAddLineToPoint(ctx, rightPoint.x, rightPoint.y);
        CGContextStrokePath(ctx);
    }
    
}
- (void)awakeFromNib
{
    
}
-(void)setLineWithTopLine:(BOOL)topLine showBottomLine:(BOOL)bottomLine
{
    self.bShowTopLine = topLine;
    self.bShowBottomLine = bottomLine;
    [self setNeedsDisplay];
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
}

@end

//
//  UIButton+ZNStyle.m
//  ZNButtonDemo
//
//  Created by Sniper on 10/12/2017.
//  Copyright © 2017 Sniper. All rights reserved.
//

#import "UIButton+ZNStyle.h"

@implementation UIButton (ZNStyle)

- (void)setImage:(UIImage *)image
       withTitle:(NSString *)title
   withTitleFont:(UIFont *)font
    withBtnStyle:(ZNButtonStyle)btnStyle
        forState:(UIControlState)state {
    
    self.titleLabel.font = font;
    CGSize textSize = [title sizeWithAttributes:@{NSFontAttributeName : self.titleLabel.font}];
    switch (btnStyle) {
        case ZNButtonImgUpStyle:
            [self setImage:image forState:state];
            [self setImageEdgeInsets:UIEdgeInsetsMake(10, 0, 10 + textSize.height, -textSize.width)];
            [self setTitle:title forState:state];
            [self setTitleEdgeInsets:UIEdgeInsetsMake(image.size.height + 10, -image.size.width, 10, 0)];
            break;
        case ZNButtonImgRightStyle:
            [self setTitle:title forState:state];
            [self setTitleEdgeInsets:UIEdgeInsetsMake(10, -2 * image.size.width, 10, 10)];
            [self setImage:image forState:state];
            [self setImageEdgeInsets:UIEdgeInsetsMake(10, 10, 10, -2 * textSize.width)];
            break;
        case ZNButtonImgDownStyle:
            [self setImage:image forState:state];
            [self setImageEdgeInsets:UIEdgeInsetsMake(10 + textSize.height, 0, 10, -textSize.width)];
            [self setTitle:title forState:state];
            [self setTitleEdgeInsets:UIEdgeInsetsMake(10, -image.size.width, 10 + image.size.height, 0)];
            break;
        default:
            [self setImage:image forState:state];
            [self setTitleEdgeInsets:UIEdgeInsetsMake(0, 0, 0, 10)];
            [self setTitle:title forState:state];
            [self setTitleEdgeInsets:UIEdgeInsetsMake(0, 10, 0, 0)];
            break;
    }
}

@end

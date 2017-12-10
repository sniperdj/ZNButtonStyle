//
//  UIButton+ZNStyle.h
//  ZNButtonDemo
//
//  Created by Sniper on 10/12/2017.
//  Copyright © 2017 Sniper. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, ZNButtonStyle) {
    ZNButtonImgDefaultStyle,
    ZNButtonImgUpStyle,
    ZNButtonImgRightStyle,
    ZNButtonImgDownStyle
};

@interface UIButton (ZNStyle)

- (void)setImage:(UIImage *)image
       withTitle:(NSString *)title
   withTitleFont:(UIFont *)font
    withBtnStyle:(ZNButtonStyle)btnStyle
        forState:(UIControlState)state;

@end

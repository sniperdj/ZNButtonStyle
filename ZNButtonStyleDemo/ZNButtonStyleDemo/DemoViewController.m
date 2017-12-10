//
//  DemoViewController.m
//  ZNButtonDemo
//
//  Created by Sniper on 10/12/2017.
//  Copyright © 2017 Sniper. All rights reserved.
//

#import "DemoViewController.h"
#import "UIButton+ZNStyle.h"

@interface DemoViewController ()

@end

@implementation DemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self createBtnWithStyle:ZNButtonImgUpStyle withImgName:@"btnImage" withFrame:CGRectMake(40, 40, 100, 100)];
    [self createBtnWithStyle:ZNButtonImgRightStyle withImgName:@"detailIcon" withFrame:CGRectMake(40, 180, 100, 40)];
    [self createBtnWithStyle:ZNButtonImgDownStyle withImgName:@"btnImage" withFrame:CGRectMake(40, 320, 100, 100)];
    [self createBtnWithStyle:ZNButtonImgDefaultStyle withImgName:@"detailIcon" withFrame:CGRectMake(40, 460, 100, 40)];
    
}

- (UIButton *)createBtnWithStyle:(ZNButtonStyle)style withImgName:(NSString *)imgName withFrame:(CGRect)frame {
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:btn];
    btn.frame = frame;
    UIImage *btn3Img = [UIImage imageNamed:imgName];
    // How to use
    [btn setImage:btn3Img withTitle:@"btnName" withTitleFont:[UIFont systemFontOfSize:16] withBtnStyle:style forState:UIControlStateNormal];
    [btn setBackgroundColor:[UIColor yellowColor]];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    return btn;
}

@end

# ZNButtonStyle
UIButtonStyle

Hot to use

```
#import "UIButton+ZNStyle.h"

UIImage *btn3Img = [UIImage imageNamed:imgName];
[btn setImage:btn3Img withTitle:@"btnName" withTitleFont:[UIFont systemFontOfSize:16] withBtnStyle:ZNButtonImgUpStyle forState:UIControlStateNormal];
```

There are four styles 

```
typedef NS_ENUM(NSUInteger, ZNButtonStyle) {
    ZNButtonImgDefaultStyle, // image left  title right
    ZNButtonImgUpStyle,      // image up    title down
    ZNButtonImgRightStyle,   // image right title left
    ZNButtonImgDownStyle     // image down  title up
};
```

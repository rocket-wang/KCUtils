//
//  UIDevice+KCUtils.m
//  AFNetworking
//
//  Created by WangLei on 2020/7/26.
//

#import "UIDevice+KCUtils.h"

@implementation UIDevice (KCUtils)

+ (CGFloat)heightForNavigationBar{
    if (IPHONE_X) {
        return (44+40);
    }
    return 44+20;
}

+ (CGFloat)heightForTabBar{
    if (IPHONE_X) {
        return (49+34);
    }
    return 49;
}
@end

//
//  UIControl+KCUtils.m
//  AFNetworking
//
//  Created by WangLei on 2020/7/27.
//

#import "UIControl+KCUtils.h"
#import <objc/runtime.h>

@implementation UIControl (KCUtils)

- (KCControlTouchUpinside)touchUpinside{
    return objc_getAssociatedObject(self, @selector(touchUpinside));
}

- (void)setTouchUpinside:(KCControlTouchUpinside)touchUpinside{
    if (!self.touchUpinside) {
        objc_setAssociatedObject(self, @selector(touchUpinside), touchUpinside, OBJC_ASSOCIATION_COPY_NONATOMIC);
        [self addTarget:self action:@selector(onclick) forControlEvents:UIControlEventTouchUpInside];
    }
}

- (void)onclick{
    !self.touchUpinside?:self.touchUpinside(self);
}
@end

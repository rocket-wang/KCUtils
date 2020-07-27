//
//  UIControl+KCUtils.h
//  AFNetworking
//
//  Created by WangLei on 2020/7/27.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef void (^KCControlTouchUpinside)(UIControl *sender);

@interface UIControl (KCUtils)

@property (nonatomic, copy) KCControlTouchUpinside touchUpinside;

@end

NS_ASSUME_NONNULL_END

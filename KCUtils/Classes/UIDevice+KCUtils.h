//
//  UIDevice+KCUtils.h
//  AFNetworking
//
//  Created by WangLei on 2020/7/26.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

#define IPHONE_X \
({BOOL isPhoneX = NO;\
if (@available(iOS 11.0, *)) {\
isPhoneX = [UIApplication sharedApplication].windows[0].safeAreaInsets.bottom > 0.0;\
}\
(isPhoneX);})

@interface UIDevice (KCUtils)

+ (CGFloat)heightForNavigationBar;

+ (CGFloat)heightForTabBar;
@end

NS_ASSUME_NONNULL_END

//
//  CustomPersion.h
//  testApp
//
//  Created by 陈小明 on 2021/8/19.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CustomPersion : UIView

+ (CustomPersion*)makeCustomPersion:(void(^)(CustomPersion *custom))block;

// viewFrame 实际是个block的get方法
- (CustomPersion*(^)(CGRect rect))viewFrame;

- (CustomPersion*(^)(UIColor *color))viewColor;


@end

NS_ASSUME_NONNULL_END

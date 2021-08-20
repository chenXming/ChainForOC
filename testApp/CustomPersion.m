//
//  CustomPersion.m
//  testApp
//
//  Created by 陈小明 on 2021/8/19.
//

#import "CustomPersion.h"

@implementation CustomPersion

+ (CustomPersion*)makeCustomPersion:(void(^)(CustomPersion *custom))block{

    CustomPersion *persion = [[CustomPersion alloc] init];
    
    if(block){
        // block 入参是个实例对象
        block(persion);
    }
    
    return persion;
}

- (CustomPersion*(^)(CGRect rect))viewFrame{
    
    return ^(CGRect rect){
        self.frame = rect;
        return  self;
    };
}

- (CustomPersion*(^)(UIColor *color))viewColor{
    
    return ^(UIColor *color){
        self.backgroundColor = color;
        return self;
    };
}

@end

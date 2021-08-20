//
//  ViewController.m
//  testApp
//
//  Created by 陈小明 on 2021/8/19.
//

#import "ViewController.h"
#import "CustomPersion.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor redColor];
     // 1. 链式调用的核心是 get 方法，只有get 方法才可以使用.语法调用
    // 2. 如何传参数，传递参数是通过实现 block 的get 方法实现的，这个block 要返回一个示例（方便继续用.语法调用后续方法），还要有参数，这个参数就是我们要对内部实例做的事情。这里 viewFrame() 就是掉用这个Block。
    CustomPersion* persion =  [CustomPersion makeCustomPersion:^(CustomPersion * _Nonnull custom) {
        custom.viewFrame(CGRectMake(100, 100, 300, 300)).viewColor(UIColor.brownColor);
    }];
        
//    CustomPersion *persion = [[CustomPersion alloc] init];
//    [persion setFrame:CGRectMake(0, 0, 100, 100)];
//    persion.backgroundColor = [UIColor cyanColor];
    [self.view addSubview:persion];
}


@end

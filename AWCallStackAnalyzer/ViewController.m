//
//  ViewController.m
//  AWCallStackAnalyzer
//
//  Created by lei-wen on 2019/4/19.
//  Copyright © 2019 lei-wen. All rights reserved.
//

#import "ViewController.h"
#import "AWCallStack.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)foo {
    [self bar];
}

- (void)bar {
    while (true) {
        ;
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0), ^{
        
        // 打印主线程调用栈， BSLOG 打印当前线程，BSLOG_ALL 打印所有线程
        AWLOG_Callstack_MAIN
        
//        调用 [AWCallStack aw_backtraceOfCurrentThread] 这一系列的方法可以获取字符串，然后选择上传服务器或者其他处理。
//        [AWCallStack aw_backtraceOfCurrentThread];

    });
    [self foo];
}


@end

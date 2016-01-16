//
//  main.m
//  单例(Singleton)模式
//
//  Created by SpiColorPendra on 16/1/16.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SingletonModel.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 单例模式 :
        //   保证程序该类只有一个实例
        // 判断两次获取的实例是否相等  相等返回 1
        NSLog(@"%d",[SingletonModel instance] == [SingletonModel instance]);
        //2016-01-16 15:54:25.095 *单例(Singleton)模式[2731:97864] 1
    }
    return 0;
}

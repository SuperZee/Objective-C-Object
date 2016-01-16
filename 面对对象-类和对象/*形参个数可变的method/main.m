//
//  main.m
//  *形参个数可变的method
//
//  Created by SpiColorPendra on 16/1/16.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "VarArgs.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        id v = [[VarArgs alloc]init];
        [v argsTest:@"小明",@"你好",@"今天是:2016年01月16日14:58:55"];
        /*
         2016-01-16 14:59:16.162 *形参个数可变的method[1834:67173] 小明
         2016-01-16 14:59:16.163 *形参个数可变的method[1834:67173] 你好
         2016-01-16 14:59:16.163 *形参个数可变的method[1834:67173] 今天是:2016年01月16日14:58:55
         */
    }
    return 0;
}

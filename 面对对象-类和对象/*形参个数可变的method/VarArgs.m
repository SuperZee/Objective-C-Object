//
//  VarArgs.m
//  面对对象-类和对象
//
//  Created by SpiColorPendra on 16/1/16.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import "VarArgs.h"

@implementation VarArgs
- (void) argsTest:(NSString *)name, ...
{
    // 使用va_list 定义一个argList指针变量，该指针变量指向可变参数列表
    va_list argList;
    //首先判断name是否存在
    if (name) {
        //存在就处理name这个形参
        NSLog(@"%@",name);
        //让argList 指向第一个可变参数列表中的第一个参数，开始提取可变参数列表的参数
        va_start(argList, name);
        // va_arg 用于提取argList指针当前指向的参数，并将指针移动到下一个参数
        // arg 变量用于保存当前获取的参数,如果参数不为nil，则进入循环体
        NSString *arg = va_arg(argList, id);
        while (arg) {
            //打印每一个参数,并将指针移动到下一个指向的参数
            NSLog(@"%@",arg);
            arg = va_arg(argList, id);
        }
        // 释放指针
        va_end(argList);
        
    }
}
@end

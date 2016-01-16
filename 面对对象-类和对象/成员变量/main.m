//
//  main.m
//  成员变量
//
//  Created by SpiColorPendra on 16/1/16.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dog.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Dog *d1 = [[Dog alloc]init];
        // 成员变量基本类型会被初始化为 0  指针类型初始化为 nil
        id d2 = [[Dog alloc]init];
        d1->_age = 10;
        d1->_name = @"旺财";
        // 下面这条语句是错误的
        //d2->_age = 20;
        //错误信息 :Member reference base type 'id' is not a structure or union
    }
    return 0;
}

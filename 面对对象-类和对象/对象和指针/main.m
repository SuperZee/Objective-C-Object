//
//  main.m
//  对象和指针
//
//  Created by SpiColorPendra on 16/1/16.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
    //  当定义一个对象时  Person *p的数据(_name,_age,...)被保存在 堆(heap)中
    //  stack栈 中保存的是 Person *p  p的地址
    //  注意:
    //  如果堆内存里的对象没有任何变量指向该对象,那么程序将会永远无法再访问该对象,
    //  Objective-C要求程序员释放该对象所占用的内存  否则就会造成内存泄露
    //  oc没有提供Java一样的垃圾回收机制  需要手动回收
    //  随着Xcode4.2 发布 xcode引入了自动引用计数(Automatic Reference Counting, 简称ARC)
        
    }
    return 0;
}

//
//  main.m
//  initBasicClass
//
//  Created by SpiColorPendra on 16/1/17.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Cat.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //init方法可以初始化  但是只是最基本的初始化
        // 比较像C的无参  Java空参构造函数一样  所有整型初始化为0  浮点0.0 Bool No  指针对象 nil
        //所以我们可以提供自己的init方法(重写父类init方法)
        Cat *c = [[Cat alloc]init];
        NSLog(@"name=%@ , age =%d , food =%@ ",c.name,c.age,c.food);
        
    }
    return 0;
}

//
//  main.m
//  self keyword
//
//  Created by SpiColorPendra on 16/1/16.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dog.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Dog *d = [[Dog alloc]init];
        [d dogEat];
        [d dogRun];
        [d dogEatandRun];
        // 谁在调用这个方法 谁就是这个self
        // self也可以用来强行区分 局部变量和重名的成员变量
        // self->name  =  name;
        // 不过一般成员变量都加上下划线来区分,
        // _name = name;
        
        // 也可以 return self  返回调用该方法的对象
    }
    return 0;
}

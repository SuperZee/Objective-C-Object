//
//  main.m
//  id type
//
//  Created by SpiColorPendra on 16/1/16.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dog.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // oc提供了一个id类型  id类型可以代表所有对象的类型
        //也就是说任意的对象都可以赋值给id类型
        // 通过id类型来调用方法时  oc会执行动态绑定
        // 所谓动态绑定是指:
        //   oc将会跟踪对象所属的类,它会在(运行时)判断该对象所属的类 并在运行时确定需要动态调用的方法，而不是在(编译时)确定要调用的方法
        id d = [[Dog alloc]init];
        [d dogEat];
    }
    return 0;
}

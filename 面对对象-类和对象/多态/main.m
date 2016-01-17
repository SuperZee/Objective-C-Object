//
//  main.m
//  多态
//
//  Created by SpiColorPendra on 16/1/17.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SubClass.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // OC指针类型的变量有两个： 一个是编译时的类型,一个是运行的类型
        // 编译时的类型由声明该变量时使用的类型决定，运行时的类型由实际赋给该变量的对象决定，如果编译时类型和运行时类型不一致，就可能出现多态(Polymorphism)
        //下面的编译时类型和运行时类型完全一样，所以没有多态
        Base *b = [[Base alloc]init];
        //下面两次调用Base方法
        [b base];
        [b test];
        //下面的编译时类型和运行时类型完全一样，所以没有多态
        SubClass *s = [[SubClass alloc]init];
        //下面调用从父类继承的base方法
        [s base];
        //下面调用子类重写的test方法
        [s test];
        //下面地阿勇子类定义的sub方法
        [s sub];
        //下面的编译时类型和运行时类型不一样，发生多态
        Base *ploymophicBc = [[SubClass alloc]init];
        //下面调用从父类继承过来的base方法
        [ploymophicBc base];
        //下面将执行子类重写的test方法
        [ploymophicBc test];
        //因为ploymophicBc的变异类型是Base
        //而Base没有提供sub方法 所以下面的代码将会发生报错
//      [ploymophicBc sub];
        ///错误信息 : No visible @interface for 'Base' declares the selector 'sub'
        //可将任何类型的指针变量赋值给id类型的变量
        id dyna = ploymophicBc;
        [dyna sub];

        
    }
    return 0;
}

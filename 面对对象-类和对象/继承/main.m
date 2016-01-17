//
//  main.m
//  继承
//
//  Created by SpiColorPendra on 16/1/17.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MaQue.h"
#import "Ostrich.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // OC具有单继承的特点，每个子类只有一个父类
        //  子类 extends 父类  从父类的角度看  父类 派生(derive)了子类  也就是说 扩展和派生 所描述的是同一个动作，只是观察角度不同而已
        NSLog(@"MaQue继承了Bird");
        MaQue *m = [[MaQue alloc]init];
        // MaQue自己的方法 eat
        [m eat:@"大米"];
        // MaQue 继承父类的方法
        [m fly];
        Ostrich *o = [[Ostrich alloc]init];
        // 鸵鸟重写的父类 fly方法
        [o fly];
        // 鸵鸟访问 父类的fly方法
        [o callOverridedFly];
    }
    return 0;
}

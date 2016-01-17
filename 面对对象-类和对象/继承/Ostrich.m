//
//  Ostrich.m
//  面对对象-类和对象
//
//  Created by SpiColorPendra on 16/1/17.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import "Ostrich.h"

@implementation Ostrich
//重写Bird fly方法
int a;
// 当子类的实现部分定义了父类声明部分的变量 就会隐藏父类的声明变量
// 只能通过 super.a 来调用被隐藏的成员变量
- (void) fly
{
    NSLog(@"很遗憾..我只能在陆地上奔跑");
}
// 如果覆盖了fly还想调用父类的方法怎么办?  Super关键字可以解决
- (void) callOverridedFly
{
    [super fly];
}
@end

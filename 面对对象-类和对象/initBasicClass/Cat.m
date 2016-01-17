//
//  Cat.m
//  面对对象-类和对象
//
//  Created by SpiColorPendra on 16/1/17.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import "Cat.h"

@implementation Cat

-(id) init
{
    NSLog(@"正在调用Cat的init方法");
    //调用父类init执行初始化，将初始化得到的对象赋值给self对象
    //如果self不为nil，则初始化成功
    if (self = [super init]) {
        //为self对象赋值
        self.name = @"宝宝";
        self.age = 1;
        self.food = @"鱼";
    }

    return [super init];
}
@end

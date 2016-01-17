//
//  Dog.m
//  面对对象-类和对象
//
//  Created by SpiColorPendra on 16/1/17.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import "Dog.h"

@implementation Dog

- (id) initWithFood:(NSString *)food
{
    NSLog(@"正在Dog的初始化initWithFood方法中");
    if (self = [super init]) {
        self.name = @"闷墩";
        self.food = food;
    }
    return self;
}

-(id) initWithFoodAndAge:(NSString *)food withAge:(int)age
{
    NSLog(@"正在Dog的initWithFoodAndAge方法中");
    if (self = [self initWithFood:food]) {
        self.name = @"gogo";
        self.age = age;
    }
    return self;
}
@end

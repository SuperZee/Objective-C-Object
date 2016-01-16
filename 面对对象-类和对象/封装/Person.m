//
//  Person.m
//  面对对象-类和对象
//
//  Created by SpiColorPendra on 16/1/16.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import "Person.h"
@implementation Person

- (void)setAge:(int)age
{
    if (age >= 150 || age <= 0) {
        NSLog(@"设置的年龄有误");
    } else {
        _age = age;
    }
}

- (void)setName:(NSString *)name
{
    if (([name length] > 6) || ([name length] < 1)) {
        NSLog(@"设置的姓名有误");
    } else {
        _name = name;
    }
}

- (int)age
{
    return _age;
}

- (NSString *)name
{
    return _name;
}

@end
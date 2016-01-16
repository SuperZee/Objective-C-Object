//
//  Person.m
//  面对对象-类和对象
//
//  Created by SpiColorPendra on 16/1/16.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import "Person.h"

static NSString * nation = nil;

@implementation Person
//添加一个全局变量


+(NSString *)nation
{
    return nation;
}
+(void)setNation:(NSString *)newNation
{
    nation = newNation;
}
@end

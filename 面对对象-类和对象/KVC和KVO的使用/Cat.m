//
//  Cat.m
//  面对对象-类和对象
//
//  Created by SpiColorPendra on 16/1/16.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import "Cat.h"

@implementation Cat
// oc不存在绝对隐藏的方法，即使只在类实现定义，不在声明定义。
// 程序依然可以通过NSObject提供的performSelector 或者 performSelector:withObject:方法调用到该objective-c对象的方法
// 如果你尝试的key不存在  那么将会调用下面这个方法来进行控制
- (void) setValue:(id) value forUndefinedKey:(id)key
{
    NSLog(@"你尝试设置的 %@ key不存在,",key);
    NSLog(@"你尝试设置的value是 %@ ",value);
}

- (void) setNilValueForKey:(NSString *)key
{
    
}
@end

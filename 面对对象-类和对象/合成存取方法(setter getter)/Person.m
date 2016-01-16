//
//  Person.m
//  面对对象-类和对象
//
//  Created by SpiColorPendra on 16/1/16.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import "Person.h"

@implementation Person
//@property是在头文件.h中声明一个变量的setter和getter方法
// Xcode 4.4后面可以不用写 @synthesize xxx了
// 编译期会自动帮你生成
// 不用写，用_name就好了，@synthesize这个很老的代码了
// 因为我们使用@property定义属性之后，如果我们想修改这个属性的名称，就可以使用@synthesize关键字来对属性名称进行修改
@synthesize age = _agea;
@synthesize name = _name;
/*
- (void) setAge:(int)age
{
    _age = age;
}
*/
@end

//
//  Person.h
//  面对对象-类和对象
//
//  Created by SpiColorPendra on 16/1/16.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
//使用@property来定义成员变量
// 可以自动合成getter setter方法
//@property是在头文件.h中声明一个变量的setter和getter方法
@property int age;
@property NSString * name;
@end

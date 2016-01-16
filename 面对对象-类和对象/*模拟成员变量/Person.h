//
//  Person.h
//  面对对象-类和对象
//
//  Created by SpiColorPendra on 16/1/16.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
// 获取模拟类变量
+ (NSString *) nation;
// 设置模拟类变量
+ (void) setNation: (NSString *) newNation;

@end

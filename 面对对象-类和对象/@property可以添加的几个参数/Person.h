//
//  Person.h
//  面对对象-类和对象
//
//  Created by SpiColorPendra on 16/1/16.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
//可以添加  例如 retain atomic noaatomic copy assign readwrite readonly ...
@property(nonatomic,readwrite,getter=aaa,setter=bbb:) NSString* name;
// 未启用ARC机制的情况下，retain很有用：
// 当一个对象的引用计数大于1，表示该对象不被回收，启动ARC后，一般较少使用retain
@end

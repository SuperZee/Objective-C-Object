//
//  SingletonModel.m
//  面对对象-类和对象
//
//  Created by SpiColorPendra on 16/1/16.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import "SingletonModel.h"
//定义一个全局变量
static id instance = nil;
@implementation SingletonModel
+(id) instance
{
    if (!instance) {
        //如果为空 创建一个Singleton实例，并将该实例赋值给instance全局变量
        instance = [[super alloc]init];
    }
    return instance;
}
@end

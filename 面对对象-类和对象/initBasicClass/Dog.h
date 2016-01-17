//
//  Dog.h
//  面对对象-类和对象
//
//  Created by SpiColorPendra on 16/1/17.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Animal.h"
@interface Dog : Animal
@property(nonatomic) NSString *food;
@property int age;

//定义一些更便利的初始化方法
- (id) initWithFood:(NSString *)food;
- (id) initWithFoodAndAge:(NSString *)food withAge:(int)age;
@end

//
//  Cat.h
//  面对对象-类和对象
//
//  Created by SpiColorPendra on 16/1/17.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Animal.h"
@interface Cat : Animal
@property(nonatomic) NSString *food;
@property(nonatomic) int age;

-(id) init;
@end

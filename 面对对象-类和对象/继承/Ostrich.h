//
//  Ostrich.h
//  面对对象-类和对象
//
//  Created by SpiColorPendra on 16/1/17.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Bird.h"
@interface Ostrich : Bird
// 鸵鸟也是鸟，但是鸵鸟并不会飞
// 所以需要重写父类的方法
- (void) fly;
@end

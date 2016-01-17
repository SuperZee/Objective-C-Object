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
{
    @private
    // a是在父类声明部分定义变量
    //int a;
    // b是在父类实现部分定义的变量
    int b;
    /// 错误信息 : Duplicate member 'a'
    // 这里的 变量a在父类的声明中已经定义了 子类不能重复定义
    //   而 变量b不受影响
}

// 所以需要重写父类的方法
- (void) fly;
- (void) callOverridedFly;
@end
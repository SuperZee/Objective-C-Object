//
//  Dog.m
//  面对对象-类和对象
//
//  Created by SpiColorPendra on 16/1/16.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import "Dog.h"

@implementation Dog
- (void) dogRun
{
    NSLog(@"狗会跑");
}
- (void) dogEat
{
    NSLog(@"狗吃饭");
}
- (void) dogEatandRun
{
    NSLog(@"狗又跑又吃饭");
    /*
    Dog *d = [[dog alloc]init];
    [d dogEat];
     */
    //使用self 可以代替上面的两句话 效果相同
    [self dogEat];
    [self dogRun];

}
@end

//
//  Dog.h
//  面对对象-类和对象
//
//  Created by SpiColorPendra on 16/1/16.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dog : NSObject
//strong,weak , unsafe_unretained
/*

strong属性指的是对这个对象强烈的占有！不管别人对它做过什么，反正你就是占有着！它对于你随叫随到。weak指的是对这个对象弱弱的保持着联系，每次使用的时候你弱弱的问它一句“还在吗”，如果没人回应（变成nil），就说明它已经离开你了（大概是被系统残忍的回收了吧）。
 
 unsafe_unretained 没有weak好（容易造成程序崩溃） 几乎不用了
 */
@property(retain,nonatomic,strong) NSString* name;
@end

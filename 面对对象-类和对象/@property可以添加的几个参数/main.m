//
//  main.m
//  @property可以添加的几个参数
//
//  Created by SpiColorPendra on 16/1/16.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //name是NSString类型 而NSString有一个子类  NSMutableString
        //当我们把一个NSMutableString对象赋值给Person的name之后。
        //NSMutableString 对象可能被修改
        //被修改后会影响 Person name的值
        Person *p = [[Person alloc]init];
        NSMutableString *nsms = [NSMutableString stringWithFormat:@"黄小明"];
        [p bbb:nsms];
        NSLog(@"p name = %@",[p aaa]);
        // p name = 黄小明
        [nsms appendString:@" 丑小鸭"];
        NSLog(@"p name = %@",[p aaa]);
        //p name = 黄小明 丑小鸭
        // 在name属性@property 添加 copy 即可解决
    
    }
    return 0;
}

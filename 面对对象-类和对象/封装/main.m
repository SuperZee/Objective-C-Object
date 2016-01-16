//
//  main.m
//  封装
//
//  Created by SpiColorPendra on 16/1/16.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 封装  Encapsulation
        Person *p = [[Person alloc]init];
        //下面这种访问方式已经不能访问了
        //p->_age
        
        p.age = 200;
        p.age = 50;
        p.name = @"你好我的名字很长";
        p.name = @"小明";
    }
    return 0;
}

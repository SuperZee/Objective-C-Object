//
//  main.m
//  合成存取方法(setter getter)
//
//  Created by SpiColorPendra on 16/1/16.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [[Person alloc]init];
        [p setAge:10];
        int age = [p age];
        NSLog(@"age = %d",age);
        
        // 也可以使用更简洁的点语法
        NSLog(@"name = %@",p.name = @"小明");
    }
    return 0;
}

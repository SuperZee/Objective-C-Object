//
//  main.m
//  *模拟成员变量
//
//  Created by SpiColorPendra on 16/1/16.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // oc不支持像Java一样真正的类变量
        // 但是可以模拟变量
        [Person setNation:@"Chinese"];
        //访问类变量
        NSLog(@"模拟类变量Nation: %@",[Person nation]);
        
    }
    return 0;
}

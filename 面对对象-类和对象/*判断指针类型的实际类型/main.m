//
//  main.m
//  *判断指针类型的实际类型
//
//  Created by SpiColorPendra on 16/1/17.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // -(BOOL) isKindOfClass:clazz 判断该对象是否为clazz或其子类的实例
        // -(BOOL) isSubclassOfClass:clazz 判断该对象是否为clazz的子类的实例
        NSObject *hello = @"Hello";
        NSLog(@"字符串是否是NSObject类的实例:%d"
              ,([hello isKindOfClass:[NSObject class]]));
        // true
        NSLog(@"字符串是否是NSString类的实例:%d"
              ,([hello isKindOfClass:[NSString class] ]));
        // true
        NSLog(@"字符串类型是否是NSData类的实例:%d",
              ([hello isKindOfClass:[NSData class]]));
        // false
        NSString *a = @"iOS";
        NSLog(@"a是否是NSData类的实例:%d"
              ,([a isKindOfClass:[NSData class]]));
        //false

    }
    return 0;
}

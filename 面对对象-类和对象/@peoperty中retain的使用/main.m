//
//  main.m
//  @peoperty中retain的使用
//
//  Created by SpiColorPendra on 16/1/16.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dog.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Dog *d = [[Dog alloc]init];
        NSLog(@"retain = %ld",d.retainCount);
        //retain = 1
        [d retain];
        NSLog(@"retain = %ld",d.retainCount);
        [d release];
        NSLog(@"retain = %ld",d.retainCount);
        [d release];
        //[d release];
        // 当 retain = 0 时 再次访问 就会出现如下错误:
        //Dog object 0x100100800 overreleased while already deallocating; break on objc_overrelease_during_dealloc_error to
        //NSLog(@"retain = %ld",d.retainCount);
    }
    return 0;
}

//
//  main.m
//  *指针变量的强制类型转换
//
//  Created by SpiColorPendra on 16/1/17.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSObject *obj = @"Hello";
        //由于obj变量所指向的对象是NSString对象，所以运行时可以通过
        NSString* objStr = (NSString*)obj;
        NSLog(@"%@",objStr);
        //定义一个obj2变量,编译类型为NSObject，实际类型变量是NSString
        NSObject *obj2 = @"iOS";
        //尝试将obj2强转为NSDate，这行代码没有问题
        //但程序只是定义一个NSData类型的指针 该指针与obj2指向同一个对象
        NSData* data = (NSData*)obj2;
        //程序调用data的isEqualToData方法
        //由于data的编译时类型是NSData，因此编译时没有问题
        //由于data实际指向的是NSString 因此程序执行时会引发错误
        NSLog(@"%d",[data isEqualToData:[NSData data]]);
    /*
     unrecognized selector sent to instance 0x100001090
      *** Terminating app due to uncaught exception 'NSInvalidArgumentException', reason: '-[__NSCFConstantString isEqualToData:]: unrecognized selector sent to instance 0x100001090'
     */

    }
    return 0;
}

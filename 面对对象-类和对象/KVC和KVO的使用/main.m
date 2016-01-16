//
//  main.m
//  KVC和KVO的使用
//
//  Created by SpiColorPendra on 16/1/16.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Cat.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // KVC 键值编码  类似于键值对的形式
        //  通过  setValue:属性值 forKey:属性名  为制定属性设置值
        //        valueForKey:属性名   来获取属性的值
        Cat *cat = [[Cat alloc]init];
        [cat setValue:@"宝宝" forKey:@"name"];
        [cat setValue:[[NSData alloc]init] forKey:@"birthday"];
        NSLog(@"猫的名字： %@ ",[cat valueForKey:@"name"]);
        NSLog(@"猫的生日： %@ ",[cat valueForKey:@"birthday"]);
        
        
        //Key路径  复合属性  forKeyPath
        [cat setValue:[[Animal alloc]init] forKeyPath:@"animal"];
        [cat setValue:@"fish" forKeyPath:@"animal.food"];
        NSLog(@"cat eat: %@",[cat valueForKeyPath:@"animal.food"]);
    }
    return 0;
}

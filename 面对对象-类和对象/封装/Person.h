//
//  Person.h
//  面对对象-类和对象
//
//  Created by SpiColorPendra on 16/1/16.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
@private
    int _age;
    NSString * _name;
}
- (void)setAge: (int)age;
- (void)setName: (NSString *)name;
- (int)age;
- (NSString*)name;
@end

//
//  Cat.h
//  面对对象-类和对象
//
//  Created by SpiColorPendra on 16/1/16.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Animal.h"
@interface Cat : NSObject
@property(nonatomic,copy) NSString *name;
@property(nonatomic,copy) NSData* birthday;
@property(nonatomic,strong) Animal* animal;
@end

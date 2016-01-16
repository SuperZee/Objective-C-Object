//
//  ItemView.h
//  面对对象-类和对象
//
//  Created by SpiColorPendra on 16/1/16.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Item.h"
@interface ItemView : NSObject
@property(nonatomic,weak) Item *item;
//用于显示模型状态
-(void) showItemInfo;
@end

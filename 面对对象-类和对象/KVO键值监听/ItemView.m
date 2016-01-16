//
//  ItemView.m
//  面对对象-类和对象
//
//  Created by SpiColorPendra on 16/1/16.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import "ItemView.h"

@implementation ItemView
//输出item信息
//@synthesize item = _item;
-(void) showItemInfo
{
    NSLog(@"item物品名称:%@,物品价格:%d",self.item.name,self.item.price);
}
//自定义setItem方法
- (void) setItem:(Item *)item
{
    _item = item;
    //为item添加监听器  监听属性name的改变
    [self.item addObserver:self forKeyPath:@"name" options:NSKeyValueObservingOptionNew context:nil];
    //为item添加监听器  监听属性price的改变
    [self.item addObserver:self forKeyPath:@"price" options:NSKeyValueObservingOptionNew context:nil];
}
- (void) observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSString *,id> *)change context:(void *)context
{
    NSLog(@"--observeValueForKeyPath方法被调用");
    //获取修改时所设置的数据
    NSLog(@"被修改的keyPath为:%@",keyPath);
    NSLog(@"被修改的对象%@",object);
    NSLog(@"新被修改的属性值为%@",[change objectForKey:@"new"]);
    NSLog(@"被修改的上下文是:%@",context);
}

- (void) dealloc
{
    //删除监听器
    NSLog(@"删除监听器");
    [self.item removeObserver:self forKeyPath:@"name"];
    [self.item removeObserver:self forKeyPath:@"price"];
}

@end

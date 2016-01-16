//
//  main.m
//  KVO键值监听
//
//  Created by SpiColorPendra on 16/1/16.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ItemView.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 如果数据组件数据状态发生了更新，那么要求视图组件能动态更新自己，以及显示更新后的数据
        //解决 数据组件 和 视图组件 同步更新的问题
        //  1. 让数据组件拥有视图组件的引用 ，当发生改变的时候，数据组件回调视图组件的方法，视图组件通过该回调方法来更新自己
        //  2. 利用iOS提供的消息中心(NSNotification Center)来解决
        //  让数据模型组件作为消息的生产者  每当数据模型组件内部发生变化时，数据模型组件向消息中心发送消息，该消息将会激发视图组件来消费这条消息，在视图组件消费该消息时，视图组件可以动态更新自己
        // 注意:
        //**************************
        // 第一种方案的不足:
        //      对于数据模型组件和视图组件之间的关系,因为视图组件需要调用数据模型组件的数据，很明显应该是视图组件依赖于数据模型组件，这样就形成了双依赖关系 这在软件上是一种糟糕的设计
        // 第二种方案的不足:
        //      虽然避免的双向耦合，但是数据模型组件和视图组件都要依赖于iOS的消息中心，都与消息中心耦合，而且每当数据模型组件发生改变的时候，都要向iOS消息中心发送消息，真是一件令人沮丧的事.
        
        //  更加优秀的解决方案，:  KVO 键值监听
        // KVO机制需要NSKeyValueObserving协议提供支持
        // NSObject遵循该协议,所以继承NSObject的子类都遵循该协议
        // 该协议包含如下方法用于注册监听器:
        //      1.addObserver:forKeyPath:options:context:  注册一个监听器用于监听指定的key路径
        //     2.removeObserver:forKeyPath:  为Key路径删除指定的监听器
        //     3.removeObserver:forKeyPath:context: 为Key路径删除指定的监听器，只是多了一个context参数
        // 对于上面的需求，很容易想到可以让视图组件来监听数据模型组件的改变
        // 当数据模型组件的key路径对于的属性值发生改变的时候,作为监听器的视图组件将会激发，激发时就回调监听器自身的方法.
        //  方法如下：
        //     observerValueForKeyPath:ofObject:change:context:
        //  所以需要重写上面这个方法  来使用最新数据更新试图组件的现实
        
        // 使用很简单
        //    1.为被监听对象(通常是数据模型组件) 注册监听器
        //    2.重写监听器的observerValueForKeyPath:ofObject:change:context: 方法
        
        // 创建Item对象
        Item *item = [[Item alloc]init];
        //设置item属性
        item.name = @"糖醋小排";
        item.price = 998;
        //创建一个ItemView对象
        ItemView *itemView = [[ItemView alloc]init];
        //设置ItemView的属性item为item
        itemView.item = item;
        [itemView showItemInfo];
        //再次改变item对象的属性将会激发监听其方法
        item.name = @"红烧小排";
        item.price = 500;
        [itemView showItemInfo];
        
        
    }
    return 0;
}

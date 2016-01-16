//
//  main.m
//  面对对象-类和对象
//
//  Created by SpiColorPendra on 16/1/15.
//  Copyright © 2016年 SpiColorPendra. All rights reserved.
//

#import <Foundation/Foundation.h>
// 类的定义与实现
//定义性别枚举
typedef enum _psex
{
    man,
    woman
}_psex;
// 人类的声明
@interface Person : NSObject
{
    @public
    NSString *_name;
    int _age;
    _psex _sex;
    
}
- (void) setName :(NSString *)name;
- (void) setAge :(int) age;
- (void) setSex :(_psex) sex;

- (NSString *) getName;
@end
// 人类的实现
@implementation Person
// 成员属性的set方法
- (void) setName:(NSString *)name
{
    _name = name;
}
- (void) setAge:(int)age
{
    _age = age;
}
-(void) setSex:(_psex)sex
{
    _sex = sex;
}
// 成员get方法
-(NSString *)getName
{
    return _name;
}
// 没有声明而实现的方法
+(void) printPerson:(Person *)p
{
    NSLog(@"通过类名调用类方法p:name = %@ , age = %d ,sex = %d",p->_name,p->_age,p->_sex);
}
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"你好");
        NSLog(@"Hello, World!");
        //实例化一个Person类
        Person *p = [[Person alloc]init];
        // alloc关键字 负责为该类分配内存空间  创建对象.
        NSLog(@"p:name = %@ , age = %d ,sex = %d",p->_name,p->_age,p->_sex);
        //p:name = (null) , age = 0 ,sex = 0
        // 刚初始化的成员变量都是没有被赋值的 当然可以通过初始化方法赋值
        // 给成员变量赋值
        p->_name = @"小明";
        p->_age = 19;
        p->_sex = 1;
        NSLog(@"p:name = %@ , age = %d ,sex = %d",p->_name,p->_age,p->_sex);
        //通过getName方法得到名字
        NSLog(@"p:name = %@ , age = %d ,sex = %d",[p getName],p->_age,p->_sex);
        //调用类名调用类方法
        [Person printPerson:p];
    }
    return 0;
}

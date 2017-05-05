//
//  IMapFactory.m
//  MapDemo
//
//  Created by 康鹏鹏 on 2017/4/27.
//  Copyright © 2017年 dhcc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IMapView.h"

@protocol IMapFactory <NSObject>

// 需要定义什么样规范
// 第一个：基本地图MapView
// OOP思想（面向对象编程）（父类引用（指针））指向子类的实例对象
- (id<IMapView>)getMapView:(CGRect)frame;

@end

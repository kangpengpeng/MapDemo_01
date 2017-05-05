//
//  IMapView.h
//  MapDemo
//
//  Created by 康鹏鹏 on 2017/4/27.
//  Copyright © 2017年 dhcc. All rights reserved.
//

#import <UIKit/UIKit.h>

// 地图协议（标准）
@protocol IMapView <NSObject>

// 具体的标准
// OOP（面向对象）：父类的引用（指针）指向子类的实例对象（多态）
- (UIView *)getView;

// 需要指定地图的大小
- (instancetype)initWithFrame:(CGRect)frame;

@end

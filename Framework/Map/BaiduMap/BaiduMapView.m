//
//  BaiduMapView.m
//  MapDemo
//
//  Created by 康鹏鹏 on 2017/4/27.
//  Copyright © 2017年 dhcc. All rights reserved.
//

#import "BaiduMapView.h"
#import <BaiduMapAPI_Base/BMKBaseComponent.h>//引入base相关所有的头文件
#import <BaiduMapAPI_Map/BMKMapComponent.h>//引入地图功能所有的头文件

@interface BaiduMapView ()
@property (nonatomic) BMKMapView *mapView;
@end

@implementation BaiduMapView
// 初始化地图
- (instancetype)initWithFrame:(CGRect)frame {
    self = [super init];
    if (self) {
        // 初始化百度地图
        _mapView = [[BMKMapView alloc] initWithFrame:frame];
    }
    return self;
}
// 返回地图
- (UIView *)getView {
    return _mapView;
}

@end

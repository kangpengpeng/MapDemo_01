//
//  BaiduMapFactory.m
//  MapDemo
//
//  Created by 康鹏鹏 on 2017/4/27.
//  Copyright © 2017年 dhcc. All rights reserved.
//

#import "BaiduMapFactory.h"
#import "BaiduMapView.h"

@implementation BaiduMapFactory

- (id<IMapView>)getMapView:(CGRect)frame {
    // 返回具体的实现类
    return [[BaiduMapView alloc] initWithFrame:frame];
}

@end

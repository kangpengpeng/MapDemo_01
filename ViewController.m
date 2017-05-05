//
//  ViewController.m
//  MapDemo
//
//  Created by 康鹏鹏 on 2017/4/27.
//  Copyright © 2017年 dhcc. All rights reserved.
//

#import "ViewController.h"
#import "BaiduMapView.h"
//#import <BaiduMapAPI_Base/BMKBaseComponent.h>//引入base相关所有的头文件
//#import <BaiduMapAPI_Map/BMKMapComponent.h>//引入地图功能所有的头文件

//#import "BaiduMapFactory.h"

#import "MapEngine.h"

@interface ViewController () <NSXMLParserDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    /*
    // 创建百度地图
    BMKMapView *mapView = [[BMKMapView alloc] initWithFrame:self.view.frame];
    // 添加绑定
    [self.view addSubview:mapView];
     */
    
    
    /*
    id<IMapView> mapView = [[BaiduMapView alloc] initWithFrame:self.view.frame];
    [self.view addSubview:[mapView getView]];
     */
    
    
    /*
    // 创建工厂
    id<IMapFactory> factory = [[BaiduMapFactory alloc] init];
    // 创建MapView
    id<IMapView> mapView = [factory getMapView:self.view.frame];
    // 绑定
    [self.view addSubview:[mapView getView]];
     */
    
    
    
    // 地图引擎（只关心功能和API即可，解耦和）
    MapEngine *engine = [[MapEngine alloc] init];
    id<IMapFactory> factory = [engine getFactory];
    // 创建MapView
    id<IMapView> mapView = [factory getMapView:self.view.frame];
    //绑定
    [self.view addSubview:[mapView getView]];
     
    
    
}



@end

































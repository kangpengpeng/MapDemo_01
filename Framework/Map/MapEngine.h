//
//  MapEngine.h
//  MapDemo
//
//  Created by 康鹏鹏 on 2017/4/27.
//  Copyright © 2017年 dhcc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IMapFactory.h"

// 地图引擎类
@interface MapEngine : NSObject
// 定义规范
- (id<IMapFactory>)getFactory;
@end

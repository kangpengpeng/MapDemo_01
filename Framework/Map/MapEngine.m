//
//  MapEngine.m
//  MapDemo
//
//  Created by 康鹏鹏 on 2017/4/27.
//  Copyright © 2017年 dhcc. All rights reserved.
//

#import "MapEngine.h"
#import "BaiduMapFactory.h"
#import "PlatformXmlParser.h"
#import "Platform.h"

@implementation MapEngine {
    id<IMapFactory> _fac;
}

- (void)initMap{
    PlatformXmlParser* parser = [[PlatformXmlParser alloc] init];
    NSMutableArray *array = [parser parser];
    //动态创建实例对象(Runtime动态创建)
    for (Platform *model in array) {
        if ([model.isOpen isEqualToString:@"YES"]) {
            Class c = NSClassFromString(model.factoryName);
            _fac = [[c alloc] init];
        }
    }
}

- (id<IMapFactory>)getFactory {
    [self initMap];
    // 返回具体工厂
    return _fac;
}

@end

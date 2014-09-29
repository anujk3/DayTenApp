//
//  MySingleton.m
//  DayTenApp
//
//  Created by Anuj Katiyal on 29/09/14.
//  Copyright (c) 2014 Katiyals. All rights reserved.
//

#import "MySingleton.h"

@interface MySingleton () {
    NSString *info;
}

@end

@implementation MySingleton

static MySingleton *singletonInstance; // why use the word static, keeps the scope of this variable limited to this file only like in C

+ (MySingleton *)getInstance{
    if (singletonInstance == nil){
        singletonInstance = [[MySingleton alloc]init];
    }
    return singletonInstance;
}

-(void)doSomethingWithString:(NSString*)parameter {
    info = parameter;
}

-(NSString*)getInfo {
    return info;
}

@end

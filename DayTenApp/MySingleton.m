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

static MySingleton *singletonInstance; //Further details at http://stackoverflow.com/questions/4965048/static-variables-in-objective-c-what-do-they-do

/*
In both C and Objective-C, a static variable is a variable that is allocated for the entire lifetime of a program. This is in contrast to automatic variables, whose lifetime exists during a single function call; and dynamically-allocated variables like objects, which can be released from memory when no longer used. More simply put, a static variable's value is maintained throughout all function/method calls. When declared outside of a function, a static variable is visible to everything within the file in which it is declared; when declared inside a function or method, it is visible only within that function or method, but the value is retained between calls.
*/

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

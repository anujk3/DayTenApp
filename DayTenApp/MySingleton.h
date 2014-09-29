//
//  MySingleton.h
//  DayTenApp
//
//  Created by Anuj Katiyal on 29/09/14.
//  Copyright (c) 2014 Katiyals. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MySingleton : NSObject

+(MySingleton *)getInstance;

-(void)doSomethingWithString:(NSString*)parameter;
-(NSString*)getInfo;

@end

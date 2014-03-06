//
//  TestClass.m
//  TestPersons
//
//  Created by Alexander on 06.03.14.
//  Copyright (c) 2014 Alexander. All rights reserved.
//

#import "TestClass.h"



@implementation TestClass

+ (id)sharedInstance
{
    static TestClass *result;
    if(!result){
        result = [[TestClass alloc] init];
    }
    return result;
}

+ (id)sharedInstance2
{
    static TestClass *result;
    if(!result){
        result = [[TestClass alloc] init];
    }
    return result;
}

@end

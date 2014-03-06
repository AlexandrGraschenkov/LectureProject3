//
//  Group.m
//  TestPersons
//
//  Created by Alexander on 06.03.14.
//  Copyright (c) 2014 Alexander. All rights reserved.
//

#import "Group.h"



@implementation NSString (NSString_Group)

- (Group*)groupWithName
{
    return [[Group alloc] initWithName:self];
}

- (int)lengthSquared
{
    return self.length * self.length;
}

@end





@interface Group ()
{
    NSMutableArray *arr;
}
@end


@implementation Group

+ (id)groupWithName:(NSString*)name
{
    return [[self alloc] initWithName:name];
}

- (id)initWithName:(NSString*)name
{
    self = [self init];
    if(self){
        self.name = name;
    }
    return self;
}

- (id)init
{
    self = [super init];
    if(self){
        arr = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)addStudent:(Student*)student
{
    [arr addObject:student];
}
- (void)removeStudent:(Student*)student
{
    [arr removeObject:student];
}

- (int)studentsCount
{
    return arr.count;
}

@end

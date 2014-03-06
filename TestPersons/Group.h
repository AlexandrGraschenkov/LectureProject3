//
//  Group.h
//  TestPersons
//
//  Created by Alexander on 06.03.14.
//  Copyright (c) 2014 Alexander. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"

@class Group;

@interface NSString (NSString_Group)
@property (nonatomic, assign, readonly) int lengthSquared;
- (Group*)groupWithName;
@end


@interface Group : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) int studentsCount;

- (id)initWithName:(NSString*)name;
+ (id)groupWithName:(NSString*)name;

- (void)addStudent:(Student*)student;
- (void)removeStudent:(Student*)student;

@end

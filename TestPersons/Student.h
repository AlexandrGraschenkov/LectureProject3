//
//  Student.h
//  TestPersons
//
//  Created by Alexander on 06.03.14.
//  Copyright (c) 2014 Alexander. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject

@property (nonatomic, strong) NSString *firstName;
@property (nonatomic, strong) NSString *lastName;
@property (nonatomic, strong, readonly) NSString *fullName;
@property (nonatomic, strong) NSNumber *ages;

@end

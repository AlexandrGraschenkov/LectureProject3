//
//  TestClass.h
//  TestPersons
//
//  Created by Alexander on 06.03.14.
//  Copyright (c) 2014 Alexander. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol RandomProtocol <NSObject>
@optional
- (int)getRandomValue;
- (int)getRandomValueFrom:(int)fromVal :(int)toVal;
@end

@interface TestClass : NSObject <RandomProtocol>

@property (nonatomic, strong) NSString *str;
+ (TestClass*)sharedInstance;
+ (TestClass*)sharedInstance2;

@end

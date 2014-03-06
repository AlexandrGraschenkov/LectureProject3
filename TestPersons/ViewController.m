//
//  ViewController.m
//  TestPersons
//
//  Created by Alexander on 05.03.14.
//  Copyright (c) 2014 Alexander. All rights reserved.
//

#import "ViewController.h"
#import "Group.h"
#import "TestClass.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    Group *newGroup = [Group new];
    Student *student1 = [Student new];
    student1.firstName = @"Alex";
    student1.lastName = @"Sidorov";
    [newGroup addStudent:student1];
    
    Group *secondGroup = [@"191" groupWithName];
    [secondGroup addStudent:student1];
    
    NSLog(@"Students count: %d", newGroup.studentsCount);
    NSLog(@"Full name: %@", student1.fullName);
    NSLog(@"Group name: %@", secondGroup.name);
    
    
    // category and selectors
    
    NSLog(@"%d", @"qqq".lengthSquared);
    TestClass *test = [TestClass new];
    if([test respondsToSelector:@selector(getRandomValue)])
        NSLog(@"%d", [test getRandomValue]);
    else
        NSLog(@"Not implemented");
    
    
    if([test respondsToSelector:@selector(getRandomValueFrom::)])
        NSLog(@"%d", [test getRandomValueFrom:1000 :2000]);
    else
        NSLog(@"Not implemented");
    
    
    // singleton example
    
    [TestClass sharedInstance].str = @"123";
    [TestClass sharedInstance2].str = @"qwerty";
    
    NSLog(@"%@", [TestClass sharedInstance].str);
    
    SEL selector = @selector(str);
    NSString *str = [[TestClass sharedInstance] performSelector:selector];
    NSLog(@"%@", str);
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

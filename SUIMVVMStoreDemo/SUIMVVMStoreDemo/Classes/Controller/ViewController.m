//
//  ViewController.m
//  SUIMVVMStore
//
//  Created by yuantao on 16/3/2.
//  Copyright © 2016年 momo. All rights reserved.
//

#import "ViewController.h"
#import "MVVMStore.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSArray *arr = @[@"Hello", @"Welcome", @"to", @"use", @"MVVMStore"];
    NSString *tableName = @"mvvm";
    
    MVVMStore *store = [MVVMStore sharedStore];
    [store db_initWithDBName:@"mvvm.sqlite" tableName:tableName];
    [store db_putObject:arr withId:@"isID" intoTable:tableName];
    
    NSLog(@"%@",[store db_getDBPath]);
    
}


@end

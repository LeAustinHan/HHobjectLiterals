//
//  HHViewController.
//  HHobjectLiterals
//
//  Created by LeAustinHan on 14-2-7.
//  Copyright (c) 2014年 hanhan. All rights reserved.
//

#import "HHViewController.h"

@interface HHViewController ()

@end

@implementation HHViewController

@synthesize testString= _testString;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [self objectLiterals];
    
}

- (void)objectLiterals
{
    //test commit 
    NSNumber *number = @1;
    NSArray *arr = @[@"first",@"second"]; //array 的方法，不是mutable的
    NSDictionary *dic = @{@"firstKey": @"firstObject",@"secondKey": @"secondObject"}; //dictionary 的方法，不是mutable的
    
    [dic enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
        if ([(NSString *)key isEqualToString:@"firstKey"]) {
            NSLog(@"find firstObject :%@",obj);
        }
    }];
    
    NSNumber *numA = @42;
    NSNumber *numB = @42L;
    NSNumber *numC = @42U;
    NSNumber *numD = @42LL;
    NSNumber *numE = @42.1;
    NSNumber *numF = @42.1F;
    
    NSNumber *numG = @YES;
    
    NSArray *arrNil = @[];
    NSDictionary *dicNil = @{};
    
    
    NSMutableArray *mArray = [NSMutableArray arrayWithArray:arr];
    mArray[0] = @"replaceObject";

    NSMutableDictionary *mDic = [NSMutableDictionary dictionaryWithDictionary:dic];
    //替换的新方式
    mDic[@"firstKey"] = @"replaceObject";
    
    NSLog(@"print mArray = %@ \n mDic = %@",mArray,mDic);
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

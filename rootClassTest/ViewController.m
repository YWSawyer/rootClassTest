//
//  ViewController.m
//  rootClassTest
//
//  Created by wei.yuan on 21/02/2018.
//  Copyright © 2018 wei.yuan. All rights reserved.
//

#import "ViewController.h"
#import <objc/runtime.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSArray *arr = [NSArray array];
    Class cls = [arr class];
    int i = 0;
    
    while (1) {
        NSLog(@"%d---cls:%p---nsobject:%p", i, cls, objc_getMetaClass("NSObject"));
        
        i++;
        if (cls == objc_getMetaClass("NSObject")) break;
        
        cls = object_getClass(cls);
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

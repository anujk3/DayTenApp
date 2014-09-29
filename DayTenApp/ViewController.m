//
//  ViewController.m
//  DayTenApp
//
//  Created by Anuj Katiyal on 29/09/14.
//  Copyright (c) 2014 Katiyals. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
#import "MySingleton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)tappedSaveData:(id)sender {
//    AppDelegate *delegate = [UIApplication sharedApplication].delegate;
//    [delegate doSomethingWithString:@"Some Text"];
    MySingleton* singleton = [MySingleton getInstance];
    [singleton doSomethingWithString:@"some text"];
}

- (IBAction)tappedFetchData:(id)sender {
//    AppDelegate *delegate = [UIApplication sharedApplication].delegate;
//    [self.lblInfo setText:[delegate getInfo]];
    MySingleton* singleton = [MySingleton getInstance];
    [self.lblInfo setText:[singleton getInfo]];
}
@end

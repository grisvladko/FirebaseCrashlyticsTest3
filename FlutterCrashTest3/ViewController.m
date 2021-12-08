//
//  ViewController.m
//  FlutterCrashTest3
//
//  Created by vladislav grisko on 31/10/2021.
//

#import "ViewController.h"
#import "FlutterVC.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = UIColor.blueColor;
    // Make a button to call the showFlutter function when pressed.
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button addTarget:self
               action:@selector(showFlutter)
     forControlEvents:UIControlEventTouchUpInside];
    [button setTitle:@"Go To Show Flutter!" forState:UIControlStateNormal];
    button.backgroundColor = UIColor.blueColor;
    button.frame = CGRectMake(80.0, 210.0, 160.0, 40.0);
    [self.view addSubview:button];
    
}

- (void)showFlutter {
    FlutterVC* vc = [[FlutterVC alloc] init];
    [self presentViewController:vc animated:true completion:nil];
}


@end

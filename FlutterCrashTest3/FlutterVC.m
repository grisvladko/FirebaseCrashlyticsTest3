//
//  FlutterVC.m
//  FlutterCrashTest3
//
//  Created by vladislav grisko on 31/10/2021.
//

#import "AppDelegate.h"
#import "FlutterVC.h"

@interface FlutterVC ()

@end

@implementation FlutterVC

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = UIColor.greenColor;
    // Make a button to call the showFlutter function when pressed.
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button addTarget:self
               action:@selector(showFlutter)
     forControlEvents:UIControlEventTouchUpInside];
    [button setTitle:@"Show Flutter!" forState:UIControlStateNormal];
    button.backgroundColor = UIColor.blueColor;
    button.frame = CGRectMake(80.0, 210.0, 160.0, 40.0);
    [self.view addSubview:button];
}

- (void)showFlutter {
    FlutterEngine *flutterEngine =
        ((AppDelegate *)UIApplication.sharedApplication.delegate).flutterEngine;
    FlutterViewController *flutterViewController =
        [[FlutterViewController alloc] initWithEngine:flutterEngine nibName:nil bundle:nil];
    [self presentViewController:flutterViewController animated:YES completion:nil];
}

@end

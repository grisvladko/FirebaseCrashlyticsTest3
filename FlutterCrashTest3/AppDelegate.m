//
//  AppDelegate.m
//  FlutterCrashTest3
//
//  Created by vladislav grisko on 31/10/2021.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import <FlutterPluginRegistrant/GeneratedPluginRegistrant.h>

@interface AppDelegate () 

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    [FIRApp configure];
    
    self.flutterEngine = [[FlutterEngine alloc] initWithName:@"my flutter engine"];
      // Runs the default Dart entrypoint with a default Flutter route.
    [self.flutterEngine run];
      // Used to connect plugins (only if you have plugins with iOS platform code).
    [GeneratedPluginRegistrant registerWithRegistry:self.flutterEngine];
    
    self.window = [[UIWindow alloc] initWithFrame: UIScreen.mainScreen.bounds];
    self.window.backgroundColor = UIColor.whiteColor;
    ViewController* vc = [[ViewController alloc] init];
    self.window.rootViewController = vc;
    [self.window makeKeyAndVisible];
    
    return [super application:application didFinishLaunchingWithOptions:launchOptions];
}

@end

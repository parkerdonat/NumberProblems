//
//  AppDelegate.h
//  NumberProblems-Objc
//
//  Created by Joshua Howland on 8/14/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;


- (void)iterateCount:(int)count;
- (int)multiplied:(int)argument;
- (float)divided:(int)argument;


@end


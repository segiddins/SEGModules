//
//  SEGAppDelegate.h
//  SEGModules
//
//  Created by Samuel E. Giddins on 1/24/14.
//  Copyright (c) 2014 Samuel E. Giddins. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol SEGApp <NSObject>

- (NSString *)foo;

@end

@interface SEGAppDelegate : UIResponder <UIApplicationDelegate>

@property(strong, nonatomic) UIWindow *window;

@end

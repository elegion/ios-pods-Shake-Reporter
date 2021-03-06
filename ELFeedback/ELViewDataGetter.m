//
//  ELViewDataGetter.m
//  ELFeedbackApp
//
//  Created by Ivan Afanasyev on 16/04/14.
//  Copyright (c) 2014 e-legion. All rights reserved.
//

#import "ELViewDataGetter.h"
#import "UIViewController+Stack.h"

@implementation ELViewDataGetter


+(NSDictionary *)el_getMainInfoAboutViewController
{
    return @{@"name": NSStringFromClass([UIViewController topViewController].class),
             @"navigationStack": [UIViewController navigationStackForViewController],
             @"view": [UIViewController topViewController].view};
}


+ (NSDictionary *)el_getSubviews
{
    return [self getMainInfoForView:[UIViewController topViewController].view];
}


+ (NSDictionary *)getMainInfoForView:(UIView *)view
{
    return @{@"subviews": [view subviews]};
}


@end

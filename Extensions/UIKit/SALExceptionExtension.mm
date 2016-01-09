//
//  SALExceptionExtension.m
//  JSPatchDemo
//
//  Created by Zuyang Kou on 1/9/16.
//  Copyright © 2016 bang. All rights reserved.
//

#import "SALExceptionExtension.h"

@implementation SALExceptionExtension

+ (void)main:(JSContext *)context
{
    context[@"ignoreException"] = ^void(JSValue *func) {
        @try {
            [func callWithArguments:nil];
        }
        @catch (NSException *exception) {
            // Just ignore it
        }
    };
}

@end

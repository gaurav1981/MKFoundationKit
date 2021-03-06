//
//  NSMutableArray+MK_Misc_Tests.m
//  MKFoundation
//
//  Created by Michal Konturek on 25/10/2013.
//  Copyright (c) 2013 Michal Konturek. All rights reserved.
//

#import <XCTest/XCTest.h>

#define HC_SHORTHAND
#import <OCHamcrest.h>

#import "BaseTest.h"

@interface NSMutableArray_MK_Misc_Tests : XCTestCase

@end

@implementation NSMutableArray_MK_Misc_Tests

- (void)test_safeAddObject {
    NSMutableArray *result = [NSMutableArray array];
    [result mk_safeAddObject:nil];
    assertThat(result, hasCountOf(0));
}

@end

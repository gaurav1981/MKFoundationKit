//
//  NSNumber+MK_Fraction_Tests.m
//  MKFoundation
//
//  Created by Michal Konturek on 23/10/2013.
//  Copyright (c) 2013 Michal Konturek. All rights reserved.
//

#import <XCTest/XCTest.h>

#define HC_SHORTHAND
#import <OCHamcrest.h>

#import "BaseTest.h"

@interface NSNumber_MK_Fraction_Tests : XCTestCase

@end

@implementation NSNumber_MK_Fraction_Tests

- (void)setUp {
    [super setUp];
}

- (void)tearDown {
    [super tearDown];
}

- (void)test_integralPart_when_fraction {
    NSNumber *input = @1.1;
    NSNumber *result = [input mk_integralPart];
    assertThat(result, equalToInteger(1));
}

- (void)test_integralPart_when_integer {
    NSNumber *input = @1;
    NSNumber *result = [input mk_integralPart];
    assertThat(result, equalToInteger(1));
}

- (void)test_fractionalPart_when_fraction {
    NSNumber *input = @1.1;
    NSNumber *result = [input mk_fractionalPart];
    assertThat(result, equalToDouble(0.1));
}

- (void)test_fractionalPart_when_integer {
    NSNumber *input = @1;
    NSNumber *result = [input mk_fractionalPart];
    assertThat(result, equalToDouble(0));
}

- (void)test_isInteger_returns_true {
    NSNumber *input = @1;
    BOOL result = [input mk_isInteger];
    assertThatBool(result, equalToBool(YES));
}

- (void)test_isInteger_returns_false {
    NSNumber *input = @1.1;
    BOOL result = [input mk_isInteger];
    assertThatBool(result, equalToBool(NO));
}

- (void)test_isFractional_returns_true {
    NSNumber *input = @1.1;
    BOOL result = [input mk_isFraction];
    assertThatBool(result, equalToBool(YES));
}

- (void)test_isFractional_returns_false {
    NSNumber *input = @1;
    BOOL result = [input mk_isFraction];
    assertThatBool(result, equalToBool(NO));
}

@end

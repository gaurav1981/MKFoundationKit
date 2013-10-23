//
//  NSDate+MK_Formatting.h
//  MKFoundation
//
//  Created by Michal Konturek on 22/10/2013.
//  Copyright (c) 2013 Michal Konturek. All rights reserved.
//

#import "NSString+MK.h"

@interface NSDate (MK_Formatting)

+ (NSString *)dateFormatCCCCDDMMMYYYY;
+ (NSString *)dateFormatCCCCDDMMMMYYYY;
+ (NSString *)dateFormatDDMMYYYYSlashed;
+ (NSString *)dateFormatDDMMMYYYYSlashed;
+ (NSString *)dateFormatMMMDDYYYY;
+ (NSString *)dateFormatYYYYMMDDDashed;

- (NSString *)formattedString;
- (NSString *)formattedStringUsingFormat:(NSString *)dateFormat;

@end
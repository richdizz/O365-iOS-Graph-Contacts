/*******************************************************************************
**NOTE** This code was generated by a tool and will occasionally be
overwritten. We welcome comments and issues regarding this code; they will be
addressed in the generation tool. If you wish to submit pull requests, please
do so for the templates in that tool.

This code was generated by Vipr (https://github.com/microsoft/vipr) using
the T4TemplateWriter (https://github.com/msopentech/vipr-t4templatewriter).

Copyright (c) Microsoft Corporation. All Rights Reserved.
Licensed under the Apache License 2.0; see LICENSE in the source repository
root for authoritative license information.﻿
******************************************************************************/



#import "MSGraphServiceRecurrencePatternType.h"

@implementation MSGraphServiceRecurrencePatternTypeSerializer

+(MSGraphServiceRecurrencePatternType) fromString:(NSString *) string {

    static NSDictionary *stringMappings=nil;
    
    if(stringMappings==nil)
    {
        stringMappings=[[NSDictionary alloc] initWithObjectsAndKeys:
         [NSNumber numberWithInt:MSGraphServiceRecurrencePatternTypeDaily], @"daily", [NSNumber numberWithInt:MSGraphServiceRecurrencePatternTypeWeekly], @"weekly", [NSNumber numberWithInt:MSGraphServiceRecurrencePatternTypeAbsoluteMonthly], @"absoluteMonthly", [NSNumber numberWithInt:MSGraphServiceRecurrencePatternTypeRelativeMonthly], @"relativeMonthly", [NSNumber numberWithInt:MSGraphServiceRecurrencePatternTypeAbsoluteYearly], @"absoluteYearly", [NSNumber numberWithInt:MSGraphServiceRecurrencePatternTypeRelativeYearly], @"relativeYearly",
            nil        
        ];
    }
    
    return [stringMappings[string] intValue];

}

+(NSString *) toString: (MSGraphServiceRecurrencePatternType) value {

    static NSDictionary *stringMappings=nil;
    
    if(stringMappings==nil)
    {
        stringMappings=[[NSDictionary alloc] initWithObjectsAndKeys:
         @"daily", [NSNumber numberWithInt:MSGraphServiceRecurrencePatternTypeDaily], @"weekly", [NSNumber numberWithInt:MSGraphServiceRecurrencePatternTypeWeekly], @"absoluteMonthly", [NSNumber numberWithInt:MSGraphServiceRecurrencePatternTypeAbsoluteMonthly], @"relativeMonthly", [NSNumber numberWithInt:MSGraphServiceRecurrencePatternTypeRelativeMonthly], @"absoluteYearly", [NSNumber numberWithInt:MSGraphServiceRecurrencePatternTypeAbsoluteYearly], @"relativeYearly", [NSNumber numberWithInt:MSGraphServiceRecurrencePatternTypeRelativeYearly],
            nil        
        ];
    }
    
    return stringMappings[[NSNumber numberWithInt:value]];
}

@end


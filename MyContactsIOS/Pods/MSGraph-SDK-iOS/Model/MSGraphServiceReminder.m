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



#import "MSGraphServiceModels.h"
#import "core/MSOrcObjectizer.h"


/** Implementation for MSGraphServiceReminder
 *
 */
@implementation MSGraphServiceReminder


@synthesize odataType = _odataType;

+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 

        if(_$$$_$$$propertiesNamesMappings==nil) {
    
        _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"eventId", @"eventId", @"eventStartTime", @"eventStartTime", @"eventEndTime", @"eventEndTime", @"changeKey", @"changeKey", @"eventSubject", @"eventSubject", @"eventLocation", @"eventLocation", @"eventWebLink", @"eventWebLink", @"reminderFireTime", @"reminderFireTime", nil];
        
    }
    
    return _$$$_$$$propertiesNamesMappings;
}


- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#microsoft.graph.reminder";

    }

	return self;
}


- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
        if(dic!=nil) {
		_eventId = (![dic objectForKey: @"eventId"] || [ [dic objectForKey: @"eventId"] isKindOfClass:[NSNull class]] )?_eventId:[[dic objectForKey: @"eventId"] copy];
		_eventStartTime = (![dic objectForKey: @"eventStartTime"] || [ [dic objectForKey: @"eventStartTime"] isKindOfClass:[NSNull class]] )?_eventStartTime:[[MSGraphServiceDateTimeTimeZone alloc] initWithDictionary: [dic objectForKey: @"eventStartTime"]];
		_eventEndTime = (![dic objectForKey: @"eventEndTime"] || [ [dic objectForKey: @"eventEndTime"] isKindOfClass:[NSNull class]] )?_eventEndTime:[[MSGraphServiceDateTimeTimeZone alloc] initWithDictionary: [dic objectForKey: @"eventEndTime"]];
		_changeKey = (![dic objectForKey: @"changeKey"] || [ [dic objectForKey: @"changeKey"] isKindOfClass:[NSNull class]] )?_changeKey:[[dic objectForKey: @"changeKey"] copy];
		_eventSubject = (![dic objectForKey: @"eventSubject"] || [ [dic objectForKey: @"eventSubject"] isKindOfClass:[NSNull class]] )?_eventSubject:[[dic objectForKey: @"eventSubject"] copy];
		_eventLocation = (![dic objectForKey: @"eventLocation"] || [ [dic objectForKey: @"eventLocation"] isKindOfClass:[NSNull class]] )?_eventLocation:[[MSGraphServiceLocation alloc] initWithDictionary: [dic objectForKey: @"eventLocation"]];
		_eventWebLink = (![dic objectForKey: @"eventWebLink"] || [ [dic objectForKey: @"eventWebLink"] isKindOfClass:[NSNull class]] )?_eventWebLink:[[dic objectForKey: @"eventWebLink"] copy];
		_reminderFireTime = (![dic objectForKey: @"reminderFireTime"] || [ [dic objectForKey: @"reminderFireTime"] isKindOfClass:[NSNull class]] )?_reminderFireTime:[[MSGraphServiceDateTimeTimeZone alloc] initWithDictionary: [dic objectForKey: @"reminderFireTime"]];
    }
    [self.updatedValues removeAllObjects];
    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = [self.eventId copy];if (curVal!=nil) [dic setValue: curVal forKey: @"eventId"];}
	{id curVal = [self.eventStartTime toDictionary];if (curVal!=nil) [dic setValue: curVal forKey: @"eventStartTime"];}
	{id curVal = [self.eventEndTime toDictionary];if (curVal!=nil) [dic setValue: curVal forKey: @"eventEndTime"];}
	{id curVal = [self.changeKey copy];if (curVal!=nil) [dic setValue: curVal forKey: @"changeKey"];}
	{id curVal = [self.eventSubject copy];if (curVal!=nil) [dic setValue: curVal forKey: @"eventSubject"];}
	{id curVal = [self.eventLocation toDictionary];if (curVal!=nil) [dic setValue: curVal forKey: @"eventLocation"];}
	{id curVal = [self.eventWebLink copy];if (curVal!=nil) [dic setValue: curVal forKey: @"eventWebLink"];}
	{id curVal = [self.reminderFireTime toDictionary];if (curVal!=nil) [dic setValue: curVal forKey: @"reminderFireTime"];}
    [dic setValue: @"#microsoft.graph.reminder" forKey: @"@odata.type"];

    return dic;
}

- (NSDictionary *) toUpdatedValuesDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = self.eventId;
    if([self.updatedValues containsObject:@"eventId"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"eventId"];
            }
    }
	{id curVal = self.eventStartTime;
    if([self.updatedValues containsObject:@"eventStartTime"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"eventStartTime"];
            }
        else
    {
                
        NSDictionary *updatedDic=[curVal toUpdatedValuesDictionary];
        
            if(updatedDic!=nil && [updatedDic count]>0)
            {
                [dic setValue: [curVal toDictionary] forKey: @"eventStartTime"];
            }
        
            }}
	{id curVal = self.eventEndTime;
    if([self.updatedValues containsObject:@"eventEndTime"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"eventEndTime"];
            }
        else
    {
                
        NSDictionary *updatedDic=[curVal toUpdatedValuesDictionary];
        
            if(updatedDic!=nil && [updatedDic count]>0)
            {
                [dic setValue: [curVal toDictionary] forKey: @"eventEndTime"];
            }
        
            }}
	{id curVal = self.changeKey;
    if([self.updatedValues containsObject:@"changeKey"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"changeKey"];
            }
    }
	{id curVal = self.eventSubject;
    if([self.updatedValues containsObject:@"eventSubject"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"eventSubject"];
            }
    }
	{id curVal = self.eventLocation;
    if([self.updatedValues containsObject:@"eventLocation"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"eventLocation"];
            }
        else
    {
                
        NSDictionary *updatedDic=[curVal toUpdatedValuesDictionary];
        
            if(updatedDic!=nil && [updatedDic count]>0)
            {
                [dic setValue: [curVal toDictionary] forKey: @"eventLocation"];
            }
        
            }}
	{id curVal = self.eventWebLink;
    if([self.updatedValues containsObject:@"eventWebLink"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"eventWebLink"];
            }
    }
	{id curVal = self.reminderFireTime;
    if([self.updatedValues containsObject:@"reminderFireTime"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"reminderFireTime"];
            }
        else
    {
                
        NSDictionary *updatedDic=[curVal toUpdatedValuesDictionary];
        
            if(updatedDic!=nil && [updatedDic count]>0)
            {
                [dic setValue: [curVal toDictionary] forKey: @"reminderFireTime"];
            }
        
            }}
    return dic;
}


/** Setter implementation for property eventId
 *
 */
- (void) setEventId: (NSString *) value {
    _eventId = value;
    [self valueChangedFor:@"eventId"];
}
       
/** Setter implementation for property eventStartTime
 *
 */
- (void) setEventStartTime: (MSGraphServiceDateTimeTimeZone *) value {
    _eventStartTime = value;
    [self valueChangedFor:@"eventStartTime"];
}
       
/** Setter implementation for property eventEndTime
 *
 */
- (void) setEventEndTime: (MSGraphServiceDateTimeTimeZone *) value {
    _eventEndTime = value;
    [self valueChangedFor:@"eventEndTime"];
}
       
/** Setter implementation for property changeKey
 *
 */
- (void) setChangeKey: (NSString *) value {
    _changeKey = value;
    [self valueChangedFor:@"changeKey"];
}
       
/** Setter implementation for property eventSubject
 *
 */
- (void) setEventSubject: (NSString *) value {
    _eventSubject = value;
    [self valueChangedFor:@"eventSubject"];
}
       
/** Setter implementation for property eventLocation
 *
 */
- (void) setEventLocation: (MSGraphServiceLocation *) value {
    _eventLocation = value;
    [self valueChangedFor:@"eventLocation"];
}
       
/** Setter implementation for property eventWebLink
 *
 */
- (void) setEventWebLink: (NSString *) value {
    _eventWebLink = value;
    [self valueChangedFor:@"eventWebLink"];
}
       
/** Setter implementation for property reminderFireTime
 *
 */
- (void) setReminderFireTime: (MSGraphServiceDateTimeTimeZone *) value {
    _reminderFireTime = value;
    [self valueChangedFor:@"reminderFireTime"];
}
       

@end

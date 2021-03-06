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


#import "MSGraphServiceFetchers.h"
#import "core/core.h"

@implementation MSGraphServiceGroupFetcher

@synthesize operations = _operations;

- (instancetype)initWithUrl:(NSString *)urlComponent parent:(id<MSOrcExecutable>)parent {

    if (self = [super initWithUrl:urlComponent parent:parent asClass:[MSGraphServiceGroup class]]) {

		_operations = [[MSGraphServiceGroupOperations alloc] initOperationWithUrl:urlComponent parent:parent];
    }

    return self;
}

- (void)update:(id)entity callback:(void (^)(MSGraphServiceGroup *group, MSOrcError *e))callback {

	return [super update:entity callback:callback];
}

- (void)delete:(void (^)(int status, MSOrcError *e))callback {

	return [super deleteWithCallback:callback];
}

- (MSGraphServiceGroupFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value {
    [super addCustomParametersWithName:name value:value];
    
    return self;
}

- (MSGraphServiceGroupFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value {
    [super addCustomHeaderWithName:name value:value];
    
    return self;
}

- (MSGraphServiceGroupFetcher *)select:(NSString *)params {
    [super select:params];
    
    return self;
}

- (MSGraphServiceGroupFetcher *)expand:(NSString *)value {
    [super expand:value];
    
    return self;
}

- (void) readWithCallback:(void (^)(MSGraphServiceGroup *group, MSOrcError *error))callback {
    [super readWithCallback:^(id response, MSOrcError *error) {
        callback(response, error);
    }];
}

- (MSGraphServiceDirectoryObjectCollectionFetcher *)members {

    return [[MSGraphServiceDirectoryObjectCollectionFetcher alloc] initWithUrl:@"members" parent:self asClass:[MSGraphServiceDirectoryObject class]];
}

- (MSGraphServiceDirectoryObjectFetcher *)membersById:(NSString *)identifier {

    return [[[MSGraphServiceDirectoryObjectCollectionFetcher alloc] initWithUrl:@"members" parent:self asClass:[MSGraphServiceDirectoryObject class]] getById:identifier];

}

- (MSGraphServiceDirectoryObjectCollectionFetcher *)memberOf {

    return [[MSGraphServiceDirectoryObjectCollectionFetcher alloc] initWithUrl:@"memberOf" parent:self asClass:[MSGraphServiceDirectoryObject class]];
}

- (MSGraphServiceDirectoryObjectFetcher *)memberOfById:(NSString *)identifier {

    return [[[MSGraphServiceDirectoryObjectCollectionFetcher alloc] initWithUrl:@"memberOf" parent:self asClass:[MSGraphServiceDirectoryObject class]] getById:identifier];

}

- (MSGraphServiceDirectoryObjectFetcher *)createdOnBehalfOf {

	 return [[MSGraphServiceDirectoryObjectFetcher alloc] initWithUrl:@"createdOnBehalfOf" parent:self asClass:[MSGraphServiceDirectoryObject class]];
}

- (MSGraphServiceDirectoryObjectCollectionFetcher *)owners {

    return [[MSGraphServiceDirectoryObjectCollectionFetcher alloc] initWithUrl:@"owners" parent:self asClass:[MSGraphServiceDirectoryObject class]];
}

- (MSGraphServiceDirectoryObjectFetcher *)ownersById:(NSString *)identifier {

    return [[[MSGraphServiceDirectoryObjectCollectionFetcher alloc] initWithUrl:@"owners" parent:self asClass:[MSGraphServiceDirectoryObject class]] getById:identifier];

}

- (MSGraphServiceConversationThreadCollectionFetcher *)threads {

    return [[MSGraphServiceConversationThreadCollectionFetcher alloc] initWithUrl:@"threads" parent:self asClass:[MSGraphServiceConversationThread class]];
}

- (MSGraphServiceConversationThreadFetcher *)threadsById:(NSString *)identifier {

    return [[[MSGraphServiceConversationThreadCollectionFetcher alloc] initWithUrl:@"threads" parent:self asClass:[MSGraphServiceConversationThread class]] getById:identifier];

}

- (MSGraphServiceCalendarFetcher *)calendar {

	 return [[MSGraphServiceCalendarFetcher alloc] initWithUrl:@"calendar" parent:self asClass:[MSGraphServiceCalendar class]];
}

- (MSGraphServiceEventCollectionFetcher *)calendarView {

    return [[MSGraphServiceEventCollectionFetcher alloc] initWithUrl:@"calendarView" parent:self asClass:[MSGraphServiceEvent class]];
}

- (MSGraphServiceEventFetcher *)calendarViewById:(NSString *)identifier {

    return [[[MSGraphServiceEventCollectionFetcher alloc] initWithUrl:@"calendarView" parent:self asClass:[MSGraphServiceEvent class]] getById:identifier];

}

- (MSGraphServiceEventCollectionFetcher *)events {

    return [[MSGraphServiceEventCollectionFetcher alloc] initWithUrl:@"events" parent:self asClass:[MSGraphServiceEvent class]];
}

- (MSGraphServiceEventFetcher *)eventsById:(NSString *)identifier {

    return [[[MSGraphServiceEventCollectionFetcher alloc] initWithUrl:@"events" parent:self asClass:[MSGraphServiceEvent class]] getById:identifier];

}

- (MSGraphServiceConversationCollectionFetcher *)conversations {

    return [[MSGraphServiceConversationCollectionFetcher alloc] initWithUrl:@"conversations" parent:self asClass:[MSGraphServiceConversation class]];
}

- (MSGraphServiceConversationFetcher *)conversationsById:(NSString *)identifier {

    return [[[MSGraphServiceConversationCollectionFetcher alloc] initWithUrl:@"conversations" parent:self asClass:[MSGraphServiceConversation class]] getById:identifier];

}

- (MSGraphServiceProfilePhotoFetcher *)photo {

	 return [[MSGraphServiceProfilePhotoFetcher alloc] initWithUrl:@"photo" parent:self asClass:[MSGraphServiceProfilePhoto class]];
}

- (MSGraphServiceDirectoryObjectCollectionFetcher *)acceptedSenders {

    return [[MSGraphServiceDirectoryObjectCollectionFetcher alloc] initWithUrl:@"acceptedSenders" parent:self asClass:[MSGraphServiceDirectoryObject class]];
}

- (MSGraphServiceDirectoryObjectFetcher *)acceptedSendersById:(NSString *)identifier {

    return [[[MSGraphServiceDirectoryObjectCollectionFetcher alloc] initWithUrl:@"acceptedSenders" parent:self asClass:[MSGraphServiceDirectoryObject class]] getById:identifier];

}

- (MSGraphServiceDirectoryObjectCollectionFetcher *)rejectedSenders {

    return [[MSGraphServiceDirectoryObjectCollectionFetcher alloc] initWithUrl:@"rejectedSenders" parent:self asClass:[MSGraphServiceDirectoryObject class]];
}

- (MSGraphServiceDirectoryObjectFetcher *)rejectedSendersById:(NSString *)identifier {

    return [[[MSGraphServiceDirectoryObjectCollectionFetcher alloc] initWithUrl:@"rejectedSenders" parent:self asClass:[MSGraphServiceDirectoryObject class]] getById:identifier];

}

- (MSGraphServiceDriveFetcher *)drive {

	 return [[MSGraphServiceDriveFetcher alloc] initWithUrl:@"drive" parent:self asClass:[MSGraphServiceDrive class]];
}

@end

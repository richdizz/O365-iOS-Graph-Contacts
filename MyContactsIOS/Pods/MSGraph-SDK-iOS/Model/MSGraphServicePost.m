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


/** Implementation for MSGraphServicePost
 *
 */
@implementation MSGraphServicePost


@synthesize odataType = _odataType;


+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 
    
        if(_$$$_$$$propertiesNamesMappings==nil) {
    
        _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"body", @"body", @"receivedDateTime", @"receivedDateTime", @"hasAttachments", @"hasAttachments", @"from", @"from", @"sender", @"sender", @"conversationThreadId", @"conversationThreadId", @"newParticipants", @"newParticipants", @"conversationId", @"conversationId", @"inReplyTo", @"inReplyTo", @"attachments", @"attachments", @"createdDateTime", @"createdDateTime", @"lastModifiedDateTime", @"lastModifiedDateTime", @"changeKey", @"changeKey", @"categories", @"categories", @"id", @"_id", nil];
        
    }
    
    return _$$$_$$$propertiesNamesMappings;
}

- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#microsoft.graph.post";
        
    }

	return self;
}



- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
        if(dic!=nil) {
		_body = (![dic objectForKey: @"body"] || [ [dic objectForKey: @"body"] isKindOfClass:[NSNull class]] )?_body:[[MSGraphServiceItemBody alloc] initWithDictionary: [dic objectForKey: @"body"]];
		_receivedDateTime = (![dic objectForKey: @"receivedDateTime"] || [ [dic objectForKey: @"receivedDateTime"] isKindOfClass:[NSNull class]] )?_receivedDateTime:[MSOrcObjectizer dateFromString:[dic objectForKey: @"receivedDateTime"]];
		_hasAttachments = (![dic objectForKey: @"hasAttachments"] || [ [dic objectForKey: @"hasAttachments"] isKindOfClass:[NSNull class]] )?_hasAttachments:[[dic objectForKey: @"hasAttachments"] boolValue];
		_from = (![dic objectForKey: @"from"] || [ [dic objectForKey: @"from"] isKindOfClass:[NSNull class]] )?_from:[[MSGraphServiceRecipient alloc] initWithDictionary: [dic objectForKey: @"from"]];
		_sender = (![dic objectForKey: @"sender"] || [ [dic objectForKey: @"sender"] isKindOfClass:[NSNull class]] )?_sender:[[MSGraphServiceRecipient alloc] initWithDictionary: [dic objectForKey: @"sender"]];
		_conversationThreadId = (![dic objectForKey: @"conversationThreadId"] || [ [dic objectForKey: @"conversationThreadId"] isKindOfClass:[NSNull class]] )?_conversationThreadId:[[dic objectForKey: @"conversationThreadId"] copy];

        if([dic objectForKey: @"newParticipants"] != [NSNull null]){
            _newParticipants = [[MSOrcChangesTrackingArray alloc] init];
            
            for (id object in [dic objectForKey: @"newParticipants"]) {
                [_newParticipants addObject:[[MSGraphServiceRecipient alloc] initWithDictionary: object]];
            }
            
            [(MSOrcChangesTrackingArray *)_newParticipants resetChangedFlag];
        }
        
		_conversationId = (![dic objectForKey: @"conversationId"] || [ [dic objectForKey: @"conversationId"] isKindOfClass:[NSNull class]] )?_conversationId:[[dic objectForKey: @"conversationId"] copy];
		_inReplyTo = (![dic objectForKey: @"inReplyTo"] || [ [dic objectForKey: @"inReplyTo"] isKindOfClass:[NSNull class]] )?_inReplyTo:[[MSGraphServicePost alloc] initWithDictionary: [dic objectForKey: @"inReplyTo"]];

        if([dic objectForKey: @"attachments"] != [NSNull null]){
            _attachments = [[MSOrcChangesTrackingArray alloc] init];
            
            for (id object in [dic objectForKey: @"attachments"]) {
                [_attachments addObject:[[MSGraphServiceAttachment alloc] initWithDictionary: object]];
            }
            
            [(MSOrcChangesTrackingArray *)_attachments resetChangedFlag];
        }
        
		self.createdDateTime = (![dic objectForKey: @"createdDateTime"] || [ [dic objectForKey: @"createdDateTime"] isKindOfClass:[NSNull class]] )?self.createdDateTime:[MSOrcObjectizer dateFromString:[dic objectForKey: @"createdDateTime"]];
		self.lastModifiedDateTime = (![dic objectForKey: @"lastModifiedDateTime"] || [ [dic objectForKey: @"lastModifiedDateTime"] isKindOfClass:[NSNull class]] )?self.lastModifiedDateTime:[MSOrcObjectizer dateFromString:[dic objectForKey: @"lastModifiedDateTime"]];
		self.changeKey = (![dic objectForKey: @"changeKey"] || [ [dic objectForKey: @"changeKey"] isKindOfClass:[NSNull class]] )?self.changeKey:[[dic objectForKey: @"changeKey"] copy];

        if([dic objectForKey: @"categories"] != [NSNull null]){
            self.categories = [[MSOrcChangesTrackingArray alloc] init];
            
            for (id object in [dic objectForKey: @"categories"]) {
                [self.categories addObject:[object copy]];
            }
            
            [(MSOrcChangesTrackingArray *)self.categories resetChangedFlag];
        }
        
		self._id = (![dic objectForKey: @"id"] || [ [dic objectForKey: @"id"] isKindOfClass:[NSNull class]] )?self._id:[[dic objectForKey: @"id"] copy];
    }
    [self.updatedValues removeAllObjects];
    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = [self.body toDictionary];if (curVal!=nil) [dic setValue: curVal forKey: @"body"];}
	{id curVal = [MSOrcObjectizer stringFromDate:self.receivedDateTime];if (curVal!=nil) [dic setValue: curVal forKey: @"receivedDateTime"];}
	{[dic setValue: (self.hasAttachments?@"true":@"false") forKey: @"hasAttachments"];}
	{id curVal = [self.from toDictionary];if (curVal!=nil) [dic setValue: curVal forKey: @"from"];}
	{id curVal = [self.sender toDictionary];if (curVal!=nil) [dic setValue: curVal forKey: @"sender"];}
	{id curVal = [self.conversationThreadId copy];if (curVal!=nil) [dic setValue: curVal forKey: @"conversationThreadId"];}
	{    NSMutableArray *curVal = [[NSMutableArray alloc] init];
    
    for(id obj in self.newParticipants) {
       [curVal addObject:[obj toDictionary]];
    }
    
    if([curVal count]==0) curVal=nil;
if (curVal!=nil) [dic setValue: curVal forKey: @"newParticipants"];}
	{id curVal = [self.conversationId copy];if (curVal!=nil) [dic setValue: curVal forKey: @"conversationId"];}
	{id curVal = [self.inReplyTo toDictionary];if (curVal!=nil) [dic setValue: curVal forKey: @"inReplyTo"];}
	{    NSMutableArray *curVal = [[NSMutableArray alloc] init];
    
    for(id obj in self.attachments) {
       [curVal addObject:[obj toDictionary]];
    }
    
    if([curVal count]==0) curVal=nil;
if (curVal!=nil) [dic setValue: curVal forKey: @"attachments"];}
	{id curVal = [MSOrcObjectizer stringFromDate:self.createdDateTime];if (curVal!=nil) [dic setValue: curVal forKey: @"createdDateTime"];}
	{id curVal = [MSOrcObjectizer stringFromDate:self.lastModifiedDateTime];if (curVal!=nil) [dic setValue: curVal forKey: @"lastModifiedDateTime"];}
	{id curVal = [self.changeKey copy];if (curVal!=nil) [dic setValue: curVal forKey: @"changeKey"];}
	{    NSMutableArray *curVal = [[NSMutableArray alloc] init];
    
    for(id obj in self.categories) {
       [curVal addObject:[obj copy]];
    }
    
    if([curVal count]==0) curVal=nil;
if (curVal!=nil) [dic setValue: curVal forKey: @"categories"];}
	{id curVal = [self._id copy];if (curVal!=nil) [dic setValue: curVal forKey: @"id"];}
    [dic setValue: @"#microsoft.graph.post" forKey: @"@odata.type"];

    return dic;
}

- (NSDictionary *) toUpdatedValuesDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = self.body;
    if([self.updatedValues containsObject:@"body"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"body"];
            }
        else
    {
                
        NSDictionary *updatedDic=[curVal toUpdatedValuesDictionary];
        
            if(updatedDic!=nil && [updatedDic count]>0)
            {
                [dic setValue: [curVal toDictionary] forKey: @"body"];
            }
        
            }}
	{id curVal = self.receivedDateTime;
    if([self.updatedValues containsObject:@"receivedDateTime"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[MSOrcObjectizer stringFromDate:curVal] forKey: @"receivedDateTime"];
            }
    }
 if([self.updatedValues containsObject:@"hasAttachments"])
            { [dic setValue: (self.hasAttachments?@"true":@"false") forKey: @"hasAttachments"];
}	{id curVal = self.from;
    if([self.updatedValues containsObject:@"from"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"from"];
            }
        else
    {
                
        NSDictionary *updatedDic=[curVal toUpdatedValuesDictionary];
        
            if(updatedDic!=nil && [updatedDic count]>0)
            {
                [dic setValue: [curVal toDictionary] forKey: @"from"];
            }
        
            }}
	{id curVal = self.sender;
    if([self.updatedValues containsObject:@"sender"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"sender"];
            }
        else
    {
                
        NSDictionary *updatedDic=[curVal toUpdatedValuesDictionary];
        
            if(updatedDic!=nil && [updatedDic count]>0)
            {
                [dic setValue: [curVal toDictionary] forKey: @"sender"];
            }
        
            }}
	{id curVal = self.conversationThreadId;
    if([self.updatedValues containsObject:@"conversationThreadId"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"conversationThreadId"];
            }
    }
	{id curVal = self.newParticipants;
    if([self.updatedValues containsObject:@"newParticipants"])
    {
            NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in curVal) {
       [curArray addObject:[obj toDictionary]];
    }
    
            [dic setValue: curArray forKey: @"newParticipants"];
            }
        else
    {
                
        if(![curVal isKindOfClass:[MSOrcChangesTrackingArray class]] || [(MSOrcChangesTrackingArray *)curVal hasChanged])
        {
                NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in self.newParticipants) {
       [curArray addObject:[obj toDictionary]];
    }
    
                 [dic setValue: curArray forKey: @"newParticipants"];
        }
        
            }}
	{id curVal = self.conversationId;
    if([self.updatedValues containsObject:@"conversationId"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"conversationId"];
            }
    }
	{id curVal = self.inReplyTo;
    if([self.updatedValues containsObject:@"inReplyTo"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"inReplyTo"];
            }
        else
    {
                
        NSDictionary *updatedDic=[curVal toUpdatedValuesDictionary];
        
            if(updatedDic!=nil && [updatedDic count]>0)
            {
                [dic setValue: [curVal toDictionary] forKey: @"inReplyTo"];
            }
        
            }}
	{id curVal = self.attachments;
    if([self.updatedValues containsObject:@"attachments"])
    {
            NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in curVal) {
       [curArray addObject:[obj toDictionary]];
    }
    
            [dic setValue: curArray forKey: @"attachments"];
            }
        else
    {
                
        if(![curVal isKindOfClass:[MSOrcChangesTrackingArray class]] || [(MSOrcChangesTrackingArray *)curVal hasChanged])
        {
                NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in self.attachments) {
       [curArray addObject:[obj toDictionary]];
    }
    
                 [dic setValue: curArray forKey: @"attachments"];
        }
        
            }}
	{id curVal = self.createdDateTime;
    if([self.updatedValues containsObject:@"createdDateTime"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[MSOrcObjectizer stringFromDate:curVal] forKey: @"createdDateTime"];
            }
    }
	{id curVal = self.lastModifiedDateTime;
    if([self.updatedValues containsObject:@"lastModifiedDateTime"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[MSOrcObjectizer stringFromDate:curVal] forKey: @"lastModifiedDateTime"];
            }
    }
	{id curVal = self.changeKey;
    if([self.updatedValues containsObject:@"changeKey"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"changeKey"];
            }
    }
	{id curVal = self.categories;
    if([self.updatedValues containsObject:@"categories"])
    {
            NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in curVal) {
       [curArray addObject:[obj copy]];
    }
    
            [dic setValue: curArray forKey: @"categories"];
            }
        else
    {
                
        if(![curVal isKindOfClass:[MSOrcChangesTrackingArray class]] || [(MSOrcChangesTrackingArray *)curVal hasChanged])
        {
                NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in self.categories) {
       [curArray addObject:[obj copy]];
    }
    
                 [dic setValue: curArray forKey: @"categories"];
        }
        
            }}
	{id curVal = self._id;
    if([self.updatedValues containsObject:@"id"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"id"];
            }
    }
    return dic;
}


/** Setter implementation for property body
 *
 */
- (void) setBody: (MSGraphServiceItemBody *) value {
    _body = value;
    [self valueChangedFor:@"body"];
}
       
/** Setter implementation for property receivedDateTime
 *
 */
- (void) setReceivedDateTime: (NSDate *) value {
    _receivedDateTime = value;
    [self valueChangedFor:@"receivedDateTime"];
}
       
/** Setter implementation for property hasAttachments
 *
 */
- (void) setHasAttachments: (bool) value {
    _hasAttachments = value;
    [self valueChangedFor:@"hasAttachments"];
}
       
/** Setter implementation for property from
 *
 */
- (void) setFrom: (MSGraphServiceRecipient *) value {
    _from = value;
    [self valueChangedFor:@"from"];
}
       
/** Setter implementation for property sender
 *
 */
- (void) setSender: (MSGraphServiceRecipient *) value {
    _sender = value;
    [self valueChangedFor:@"sender"];
}
       
/** Setter implementation for property conversationThreadId
 *
 */
- (void) setConversationThreadId: (NSString *) value {
    _conversationThreadId = value;
    [self valueChangedFor:@"conversationThreadId"];
}
       
/** Setter implementation for property newParticipants
 *
 */
- (void) setNewParticipants: (NSMutableArray *) value {
    _newParticipants = value;
    [self valueChangedFor:@"newParticipants"];
}
       
/** Setter implementation for property conversationId
 *
 */
- (void) setConversationId: (NSString *) value {
    _conversationId = value;
    [self valueChangedFor:@"conversationId"];
}
       
/** Setter implementation for property inReplyTo
 *
 */
- (void) setInReplyTo: (MSGraphServicePost *) value {
    _inReplyTo = value;
    [self valueChangedFor:@"inReplyTo"];
}
       
/** Setter implementation for property attachments
 *
 */
- (void) setAttachments: (NSMutableArray *) value {
    _attachments = value;
    [self valueChangedFor:@"attachments"];
}
       

@end

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


/** Implementation for MSGraphServiceSubscribedSku
 *
 */
@implementation MSGraphServiceSubscribedSku


@synthesize odataType = _odataType;


+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 
    
        if(_$$$_$$$propertiesNamesMappings==nil) {
    
        _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"capabilityStatus", @"capabilityStatus", @"consumedUnits", @"consumedUnits", @"prepaidUnits", @"prepaidUnits", @"servicePlans", @"servicePlans", @"skuId", @"skuId", @"skuPartNumber", @"skuPartNumber", @"appliesTo", @"appliesTo", @"id", @"_id", nil];
        
    }
    
    return _$$$_$$$propertiesNamesMappings;
}

- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#microsoft.graph.subscribedSku";
        
    }

	return self;
}



- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
        if(dic!=nil) {
		_capabilityStatus = (![dic objectForKey: @"capabilityStatus"] || [ [dic objectForKey: @"capabilityStatus"] isKindOfClass:[NSNull class]] )?_capabilityStatus:[[dic objectForKey: @"capabilityStatus"] copy];
		_consumedUnits = (![dic objectForKey: @"consumedUnits"] || [ [dic objectForKey: @"consumedUnits"] isKindOfClass:[NSNull class]] )?_consumedUnits:[[dic objectForKey: @"consumedUnits"] intValue];
		_prepaidUnits = (![dic objectForKey: @"prepaidUnits"] || [ [dic objectForKey: @"prepaidUnits"] isKindOfClass:[NSNull class]] )?_prepaidUnits:[[MSGraphServiceLicenseUnitsDetail alloc] initWithDictionary: [dic objectForKey: @"prepaidUnits"]];

        if([dic objectForKey: @"servicePlans"] != [NSNull null]){
            _servicePlans = [[MSOrcChangesTrackingArray alloc] init];
            
            for (id object in [dic objectForKey: @"servicePlans"]) {
                [_servicePlans addObject:[[MSGraphServiceServicePlanInfo alloc] initWithDictionary: object]];
            }
            
            [(MSOrcChangesTrackingArray *)_servicePlans resetChangedFlag];
        }
        
		_skuId = (![dic objectForKey: @"skuId"] || [ [dic objectForKey: @"skuId"] isKindOfClass:[NSNull class]] )?_skuId:[[dic objectForKey: @"skuId"] copy];
		_skuPartNumber = (![dic objectForKey: @"skuPartNumber"] || [ [dic objectForKey: @"skuPartNumber"] isKindOfClass:[NSNull class]] )?_skuPartNumber:[[dic objectForKey: @"skuPartNumber"] copy];
		_appliesTo = (![dic objectForKey: @"appliesTo"] || [ [dic objectForKey: @"appliesTo"] isKindOfClass:[NSNull class]] )?_appliesTo:[[dic objectForKey: @"appliesTo"] copy];
		self._id = (![dic objectForKey: @"id"] || [ [dic objectForKey: @"id"] isKindOfClass:[NSNull class]] )?self._id:[[dic objectForKey: @"id"] copy];
    }
    [self.updatedValues removeAllObjects];
    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = [self.capabilityStatus copy];if (curVal!=nil) [dic setValue: curVal forKey: @"capabilityStatus"];}
	{[dic setValue: [NSNumber numberWithInt: self.consumedUnits] forKey: @"consumedUnits"];}
	{id curVal = [self.prepaidUnits toDictionary];if (curVal!=nil) [dic setValue: curVal forKey: @"prepaidUnits"];}
	{    NSMutableArray *curVal = [[NSMutableArray alloc] init];
    
    for(id obj in self.servicePlans) {
       [curVal addObject:[obj toDictionary]];
    }
    
    if([curVal count]==0) curVal=nil;
if (curVal!=nil) [dic setValue: curVal forKey: @"servicePlans"];}
	{id curVal = [self.skuId copy];if (curVal!=nil) [dic setValue: curVal forKey: @"skuId"];}
	{id curVal = [self.skuPartNumber copy];if (curVal!=nil) [dic setValue: curVal forKey: @"skuPartNumber"];}
	{id curVal = [self.appliesTo copy];if (curVal!=nil) [dic setValue: curVal forKey: @"appliesTo"];}
	{id curVal = [self._id copy];if (curVal!=nil) [dic setValue: curVal forKey: @"id"];}
    [dic setValue: @"#microsoft.graph.subscribedSku" forKey: @"@odata.type"];

    return dic;
}

- (NSDictionary *) toUpdatedValuesDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = self.capabilityStatus;
    if([self.updatedValues containsObject:@"capabilityStatus"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"capabilityStatus"];
            }
    }
 if([self.updatedValues containsObject:@"consumedUnits"])
            { [dic setValue: [NSNumber numberWithInt: self.consumedUnits] forKey: @"consumedUnits"];
}	{id curVal = self.prepaidUnits;
    if([self.updatedValues containsObject:@"prepaidUnits"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"prepaidUnits"];
            }
        else
    {
                
        NSDictionary *updatedDic=[curVal toUpdatedValuesDictionary];
        
            if(updatedDic!=nil && [updatedDic count]>0)
            {
                [dic setValue: [curVal toDictionary] forKey: @"prepaidUnits"];
            }
        
            }}
	{id curVal = self.servicePlans;
    if([self.updatedValues containsObject:@"servicePlans"])
    {
            NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in curVal) {
       [curArray addObject:[obj toDictionary]];
    }
    
            [dic setValue: curArray forKey: @"servicePlans"];
            }
        else
    {
                
        if(![curVal isKindOfClass:[MSOrcChangesTrackingArray class]] || [(MSOrcChangesTrackingArray *)curVal hasChanged])
        {
                NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in self.servicePlans) {
       [curArray addObject:[obj toDictionary]];
    }
    
                 [dic setValue: curArray forKey: @"servicePlans"];
        }
        
            }}
	{id curVal = self.skuId;
    if([self.updatedValues containsObject:@"skuId"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"skuId"];
            }
    }
	{id curVal = self.skuPartNumber;
    if([self.updatedValues containsObject:@"skuPartNumber"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"skuPartNumber"];
            }
    }
	{id curVal = self.appliesTo;
    if([self.updatedValues containsObject:@"appliesTo"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"appliesTo"];
            }
    }
	{id curVal = self._id;
    if([self.updatedValues containsObject:@"id"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"id"];
            }
    }
    return dic;
}


/** Setter implementation for property capabilityStatus
 *
 */
- (void) setCapabilityStatus: (NSString *) value {
    _capabilityStatus = value;
    [self valueChangedFor:@"capabilityStatus"];
}
       
/** Setter implementation for property consumedUnits
 *
 */
- (void) setConsumedUnits: (int) value {
    _consumedUnits = value;
    [self valueChangedFor:@"consumedUnits"];
}
       
/** Setter implementation for property prepaidUnits
 *
 */
- (void) setPrepaidUnits: (MSGraphServiceLicenseUnitsDetail *) value {
    _prepaidUnits = value;
    [self valueChangedFor:@"prepaidUnits"];
}
       
/** Setter implementation for property servicePlans
 *
 */
- (void) setServicePlans: (NSMutableArray *) value {
    _servicePlans = value;
    [self valueChangedFor:@"servicePlans"];
}
       
/** Setter implementation for property skuId
 *
 */
- (void) setSkuId: (NSString *) value {
    _skuId = value;
    [self valueChangedFor:@"skuId"];
}
       
/** Setter implementation for property skuPartNumber
 *
 */
- (void) setSkuPartNumber: (NSString *) value {
    _skuPartNumber = value;
    [self valueChangedFor:@"skuPartNumber"];
}
       
/** Setter implementation for property appliesTo
 *
 */
- (void) setAppliesTo: (NSString *) value {
    _appliesTo = value;
    [self valueChangedFor:@"appliesTo"];
}
       

@end

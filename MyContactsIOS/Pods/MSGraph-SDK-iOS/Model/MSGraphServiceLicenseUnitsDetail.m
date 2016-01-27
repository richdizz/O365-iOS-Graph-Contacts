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


/** Implementation for MSGraphServiceLicenseUnitsDetail
 *
 */
@implementation MSGraphServiceLicenseUnitsDetail


@synthesize odataType = _odataType;

+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 

        if(_$$$_$$$propertiesNamesMappings==nil) {
    
        _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"enabled", @"enabled", @"suspended", @"suspended", @"warning", @"warning", nil];
        
    }
    
    return _$$$_$$$propertiesNamesMappings;
}


- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#microsoft.graph.licenseUnitsDetail";

    }

	return self;
}


- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
        if(dic!=nil) {
		_enabled = (![dic objectForKey: @"enabled"] || [ [dic objectForKey: @"enabled"] isKindOfClass:[NSNull class]] )?_enabled:[[dic objectForKey: @"enabled"] intValue];
		_suspended = (![dic objectForKey: @"suspended"] || [ [dic objectForKey: @"suspended"] isKindOfClass:[NSNull class]] )?_suspended:[[dic objectForKey: @"suspended"] intValue];
		_warning = (![dic objectForKey: @"warning"] || [ [dic objectForKey: @"warning"] isKindOfClass:[NSNull class]] )?_warning:[[dic objectForKey: @"warning"] intValue];
    }
    [self.updatedValues removeAllObjects];
    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{[dic setValue: [NSNumber numberWithInt: self.enabled] forKey: @"enabled"];}
	{[dic setValue: [NSNumber numberWithInt: self.suspended] forKey: @"suspended"];}
	{[dic setValue: [NSNumber numberWithInt: self.warning] forKey: @"warning"];}
    [dic setValue: @"#microsoft.graph.licenseUnitsDetail" forKey: @"@odata.type"];

    return dic;
}

- (NSDictionary *) toUpdatedValuesDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

 if([self.updatedValues containsObject:@"enabled"])
            { [dic setValue: [NSNumber numberWithInt: self.enabled] forKey: @"enabled"];
} if([self.updatedValues containsObject:@"suspended"])
            { [dic setValue: [NSNumber numberWithInt: self.suspended] forKey: @"suspended"];
} if([self.updatedValues containsObject:@"warning"])
            { [dic setValue: [NSNumber numberWithInt: self.warning] forKey: @"warning"];
}    return dic;
}


/** Setter implementation for property enabled
 *
 */
- (void) setEnabled: (int) value {
    _enabled = value;
    [self valueChangedFor:@"enabled"];
}
       
/** Setter implementation for property suspended
 *
 */
- (void) setSuspended: (int) value {
    _suspended = value;
    [self valueChangedFor:@"suspended"];
}
       
/** Setter implementation for property warning
 *
 */
- (void) setWarning: (int) value {
    _warning = value;
    [self valueChangedFor:@"warning"];
}
       

@end

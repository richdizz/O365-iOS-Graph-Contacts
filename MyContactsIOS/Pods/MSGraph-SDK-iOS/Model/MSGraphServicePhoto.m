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


/** Implementation for MSGraphServicePhoto
 *
 */
@implementation MSGraphServicePhoto


@synthesize odataType = _odataType;

+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 

        if(_$$$_$$$propertiesNamesMappings==nil) {
    
        _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"cameraMake", @"cameraMake", @"cameraModel", @"cameraModel", @"exposureDenominator", @"exposureDenominator", @"exposureNumerator", @"exposureNumerator", @"focalLength", @"focalLength", @"fNumber", @"fNumber", @"takenDateTime", @"takenDateTime", @"iso", @"iso", nil];
        
    }
    
    return _$$$_$$$propertiesNamesMappings;
}


- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#microsoft.graph.photo";

    }

	return self;
}


- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
        if(dic!=nil) {
		_cameraMake = (![dic objectForKey: @"cameraMake"] || [ [dic objectForKey: @"cameraMake"] isKindOfClass:[NSNull class]] )?_cameraMake:[[dic objectForKey: @"cameraMake"] copy];
		_cameraModel = (![dic objectForKey: @"cameraModel"] || [ [dic objectForKey: @"cameraModel"] isKindOfClass:[NSNull class]] )?_cameraModel:[[dic objectForKey: @"cameraModel"] copy];
		_exposureDenominator = (![dic objectForKey: @"exposureDenominator"] || [ [dic objectForKey: @"exposureDenominator"] isKindOfClass:[NSNull class]] )?_exposureDenominator:[[dic objectForKey: @"exposureDenominator"] doubleValue];
		_exposureNumerator = (![dic objectForKey: @"exposureNumerator"] || [ [dic objectForKey: @"exposureNumerator"] isKindOfClass:[NSNull class]] )?_exposureNumerator:[[dic objectForKey: @"exposureNumerator"] doubleValue];
		_focalLength = (![dic objectForKey: @"focalLength"] || [ [dic objectForKey: @"focalLength"] isKindOfClass:[NSNull class]] )?_focalLength:[[dic objectForKey: @"focalLength"] doubleValue];
		_fNumber = (![dic objectForKey: @"fNumber"] || [ [dic objectForKey: @"fNumber"] isKindOfClass:[NSNull class]] )?_fNumber:[[dic objectForKey: @"fNumber"] doubleValue];
		_takenDateTime = (![dic objectForKey: @"takenDateTime"] || [ [dic objectForKey: @"takenDateTime"] isKindOfClass:[NSNull class]] )?_takenDateTime:[MSOrcObjectizer dateFromString:[dic objectForKey: @"takenDateTime"]];
		_iso = (![dic objectForKey: @"iso"] || [ [dic objectForKey: @"iso"] isKindOfClass:[NSNull class]] )?_iso:[[dic objectForKey: @"iso"] intValue];
    }
    [self.updatedValues removeAllObjects];
    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = [self.cameraMake copy];if (curVal!=nil) [dic setValue: curVal forKey: @"cameraMake"];}
	{id curVal = [self.cameraModel copy];if (curVal!=nil) [dic setValue: curVal forKey: @"cameraModel"];}
	{[dic setValue: [NSNumber numberWithDouble: self.exposureDenominator] forKey: @"exposureDenominator"];}
	{[dic setValue: [NSNumber numberWithDouble: self.exposureNumerator] forKey: @"exposureNumerator"];}
	{[dic setValue: [NSNumber numberWithDouble: self.focalLength] forKey: @"focalLength"];}
	{[dic setValue: [NSNumber numberWithDouble: self.fNumber] forKey: @"fNumber"];}
	{id curVal = [MSOrcObjectizer stringFromDate:self.takenDateTime];if (curVal!=nil) [dic setValue: curVal forKey: @"takenDateTime"];}
	{[dic setValue: [NSNumber numberWithInt: self.iso] forKey: @"iso"];}
    [dic setValue: @"#microsoft.graph.photo" forKey: @"@odata.type"];

    return dic;
}

- (NSDictionary *) toUpdatedValuesDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = self.cameraMake;
    if([self.updatedValues containsObject:@"cameraMake"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"cameraMake"];
            }
    }
	{id curVal = self.cameraModel;
    if([self.updatedValues containsObject:@"cameraModel"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"cameraModel"];
            }
    }
 if([self.updatedValues containsObject:@"exposureDenominator"])
            { [dic setValue: [NSNumber numberWithDouble: self.exposureDenominator] forKey: @"exposureDenominator"];
} if([self.updatedValues containsObject:@"exposureNumerator"])
            { [dic setValue: [NSNumber numberWithDouble: self.exposureNumerator] forKey: @"exposureNumerator"];
} if([self.updatedValues containsObject:@"focalLength"])
            { [dic setValue: [NSNumber numberWithDouble: self.focalLength] forKey: @"focalLength"];
} if([self.updatedValues containsObject:@"fNumber"])
            { [dic setValue: [NSNumber numberWithDouble: self.fNumber] forKey: @"fNumber"];
}	{id curVal = self.takenDateTime;
    if([self.updatedValues containsObject:@"takenDateTime"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[MSOrcObjectizer stringFromDate:curVal] forKey: @"takenDateTime"];
            }
    }
 if([self.updatedValues containsObject:@"iso"])
            { [dic setValue: [NSNumber numberWithInt: self.iso] forKey: @"iso"];
}    return dic;
}


/** Setter implementation for property cameraMake
 *
 */
- (void) setCameraMake: (NSString *) value {
    _cameraMake = value;
    [self valueChangedFor:@"cameraMake"];
}
       
/** Setter implementation for property cameraModel
 *
 */
- (void) setCameraModel: (NSString *) value {
    _cameraModel = value;
    [self valueChangedFor:@"cameraModel"];
}
       
/** Setter implementation for property exposureDenominator
 *
 */
- (void) setExposureDenominator: (double) value {
    _exposureDenominator = value;
    [self valueChangedFor:@"exposureDenominator"];
}
       
/** Setter implementation for property exposureNumerator
 *
 */
- (void) setExposureNumerator: (double) value {
    _exposureNumerator = value;
    [self valueChangedFor:@"exposureNumerator"];
}
       
/** Setter implementation for property focalLength
 *
 */
- (void) setFocalLength: (double) value {
    _focalLength = value;
    [self valueChangedFor:@"focalLength"];
}
       
/** Setter implementation for property fNumber
 *
 */
- (void) setFNumber: (double) value {
    _fNumber = value;
    [self valueChangedFor:@"fNumber"];
}
       
/** Setter implementation for property takenDateTime
 *
 */
- (void) setTakenDateTime: (NSDate *) value {
    _takenDateTime = value;
    [self valueChangedFor:@"takenDateTime"];
}
       
/** Setter implementation for property iso
 *
 */
- (void) setIso: (int) value {
    _iso = value;
    [self valueChangedFor:@"iso"];
}
       

@end

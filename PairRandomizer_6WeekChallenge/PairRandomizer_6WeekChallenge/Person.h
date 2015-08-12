//
//  Person.h
//  PairRandomizer_6WeekChallenge
//
//  Created by Douglas Goodwin on 8/12/15.
//  Copyright (c) 2015 Dr.G. All rights reserved.
//

#import <Foundation/Foundation.h>

static const NSString *nameKey = @"nameKey";
static const NSString *detailsKey = @"detailsKey";

@interface Person : NSObject

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *details;

- (instancetype)initWithDictionary: (NSDictionary *)dictionary;
- (NSDictionary *)dictionaryRepresentation;


@end

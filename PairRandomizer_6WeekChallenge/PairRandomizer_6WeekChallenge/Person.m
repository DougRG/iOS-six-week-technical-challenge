//
//  Person.m
//  PairRandomizer_6WeekChallenge
//
//  Created by Douglas Goodwin on 8/12/15.
//  Copyright (c) 2015 Dr.G. All rights reserved.
//

#import "Person.h"

@implementation Person

- (instancetype)initWithDictionary: (NSDictionary *)dictionary {
    self = [super init];
    
    if (self) {
        
        self.name = dictionary[nameKey];
        self.details = dictionary[detailsKey];
    }
    
    return self;
}

- (NSDictionary *)dictionaryRepresentation {
    NSMutableDictionary *dictionary = [NSMutableDictionary new];
    if (self.name) {
        [dictionary setObject:self.name forKey:nameKey];
    }
    if (self.details) {
        [dictionary setObject:self.details forKey:detailsKey];
    }
    
    return dictionary;
}


@end

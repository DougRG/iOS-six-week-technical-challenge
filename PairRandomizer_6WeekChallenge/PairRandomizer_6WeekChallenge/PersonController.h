//
//  EntryController.h
//  PairRandomizer_6WeekChallenge
//
//  Created by Douglas Goodwin on 8/12/15.
//  Copyright (c) 2015 Dr.G. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

@interface PersonController : NSObject

@property (strong, nonatomic, readonly) NSMutableArray *people;

+ (PersonController *)sharedInstance;

- (void)addEntry:(Person *)personEntry;

- (void)save;

- (void)removeEntry:(Person *)personEntry;

- (void)saveToPersistentStorage;

- (void)loadFromPersistentStorage;

@end

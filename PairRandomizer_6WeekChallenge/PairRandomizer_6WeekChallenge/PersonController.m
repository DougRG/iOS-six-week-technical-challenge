//
//  EntryController.m
//  PairRandomizer_6WeekChallenge
//
//  Created by Douglas Goodwin on 8/12/15.
//  Copyright (c) 2015 Dr.G. All rights reserved.
//

#import "PersonController.h"

static NSString *allEntriesKey = @"allEntriesKey";

@interface PersonController ()

@property (strong, nonatomic) NSMutableArray *people;

@end

@implementation PersonController

+ (PersonController *)sharedInstance {
    static PersonController *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [PersonController new];
        
        
        
//        cells were not populating until this line was present.  Gentle Nudge right here.
        [sharedInstance loadFromPersistentStorage];
    });
    
    return sharedInstance;
}


- (void)addEntry:(Person *)personEntry {
    NSMutableArray *addMutablePerson = [self.people mutableCopy];
    
    [addMutablePerson addObject:personEntry];
    
    self.people = addMutablePerson;
    
    [self saveToPersistentStorage];
}

- (void)removeEntry:(Person *)personEntry {
    NSMutableArray *removeMutablePerson = [self.people mutableCopy];
    
    [removeMutablePerson removeObject:personEntry];
    
    self.people = removeMutablePerson;
}

-(void)saveToPersistentStorage {
    NSMutableArray *persistentMutableArray = [NSMutableArray new];
    
    for (Person *person in self.people) {
        [persistentMutableArray addObject:[person dictionaryRepresentation]];
    }
    [[NSUserDefaults standardUserDefaults]setObject:persistentMutableArray forKey:allEntriesKey];
    [[NSUserDefaults standardUserDefaults]synchronize];
}

- (void)save {
    [self saveToPersistentStorage];
}

- (void)loadFromPersistentStorage {
    NSArray *personDictionaries = [[NSUserDefaults standardUserDefaults] objectForKey:allEntriesKey];
    
    NSMutableArray *entries = [NSMutableArray new];
    
    for (NSDictionary *entry in personDictionaries) {
        [entries addObject:[[Person alloc] initWithDictionary:entry]];
    }
    
    self.people = entries;
    
}

@end

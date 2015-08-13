//
//  ListViewDataSource.h
//  PairRandomizer_6WeekChallenge
//
//  Created by Douglas Goodwin on 8/12/15.
//  Copyright (c) 2015 Dr.G. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PersonController.h"
#import <UIKit/UIKit.h>

@interface ListViewDataSource : NSObject <UITableViewDataSource>

- (NSArray *)randomizer:(NSArray *)entryArray;

@end

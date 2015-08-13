//
//  ListViewDataSource.m
//  PairRandomizer_6WeekChallenge
//
//  Created by Douglas Goodwin on 8/12/15.
//  Copyright (c) 2015 Dr.G. All rights reserved.
//

#import "ListViewDataSource.h"
#import "PersonController.h"

@implementation ListViewDataSource

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
//    return [[PersonController sharedInstance]people].count;

    return 2;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellID"];
    
//    NSInteger absoluteRow = indexPath.row;
//    
//    for (int section = 0; section < indexPath.section; ++section) {
//        
//        absoluteRow += [tableView numberOfRowsInSection:section];
//    }
    
    
    
    NSLog(@"Row: %ld", (long)indexPath.row);
    
    NSLog(@"Section: %ld\n", (long)indexPath.section);
    

    Person *person = [[PersonController sharedInstance]people][indexPath.section * 2 + indexPath.row];
    
    cell.textLabel.text = person.name;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        
        [[PersonController sharedInstance] removeEntry:[PersonController sharedInstance].people[indexPath.row]];
        
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
        
        [[PersonController sharedInstance] saveToPersistentStorage];
        
    }
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    NSInteger count = [PersonController sharedInstance].people.count / 2;
    
    return count;
}


- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {

    return [NSString stringWithFormat:@"Pair %ld", (long)section +1];
    
}

//
//    return [NSString@"Pair @ld", section];
//
//}

@end

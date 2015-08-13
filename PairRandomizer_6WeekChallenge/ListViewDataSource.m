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
    
    return [[PersonController sharedInstance]people].count;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellID"];
    
    Person *person = [[PersonController sharedInstance]people][indexPath.row];
    
    cell.textLabel.text = person.name;
    
    return cell;

}

//- (NSArray *)randomizer:(NSArray *)entryArray {
//    
//    NSMutableArray *mutableArray = [NSMutableArray new];
//    mutableArray = [[PersonController sharedInstance]people];
//    
//    NSUInteger count = [mutableArray count];
//   
//    if (count > 1) {
//        for (NSUInteger i = count - 1; i > 0; --i) {
//            [mutableArray exchangeObjectAtIndex:i withObjectAtIndex:arc4random_uniform((int32_t)(i + 1))];
//        }
//    }
//    
//    NSArray *randomArray = [NSArray arrayWithArray:mutableArray];
//    NSLog(@"%@", randomArray);
//
//    return randomArray;
//        
//    
//
//}






@end

//
//  ViewController.m
//  PairRandomizer_6WeekChallenge
//
//  Created by Douglas Goodwin on 8/12/15.
//  Copyright (c) 2015 Dr.G. All rights reserved.
//

#import "MainViewController.h"
#import "DetailViewController.h"

@interface MainViewController ()

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated {
    [self.tableView reloadData];
    
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"viewPerson"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        
        DetailViewController *viewController = segue.destinationViewController;
        
//        Entry *entry =[EntryController sharedInstance].entries[indexPath.row];
//        viewController.entry = entry;
    }
}

@end

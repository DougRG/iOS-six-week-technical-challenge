//
//  ViewController.m
//  PairRandomizer_6WeekChallenge
//
//  Created by Douglas Goodwin on 8/12/15.
//  Copyright (c) 2015 Dr.G. All rights reserved.
//

#import "MainViewController.h"
#import "DetailViewController.h"
#import "PersonController.h"
#import "ListViewDataSource.h"


@interface MainViewController ()

//@property (strong, nonatomic) ListViewDataSource *dataSource;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    self.tableView.dataSource = self.dataSource;
    NSLog(@"loaded");
    

     
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated {
    [self.tableView reloadData];
    
}

- (IBAction)pairButtonTapped:(id)sender {
    NSLog(@"pairButtonTapped");
    
    [self randomizer];
    
}




- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"viewPerson"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        
        DetailViewController *viewController = segue.destinationViewController;
        
        Person *entry =[PersonController sharedInstance].people[indexPath.row];
        viewController.personEntry = entry;
    }
}

- (NSArray *)randomizer {
    
    NSLog(@"Randomizer");
    
    NSMutableArray *mutableArray = [NSMutableArray new];
    mutableArray = [[PersonController sharedInstance]people];
    
    
    NSUInteger count = [mutableArray count];
    
    if (count > 1) {
        for (NSUInteger i = count - 1; i > 0; --i) {
            [mutableArray exchangeObjectAtIndex:i withObjectAtIndex:arc4random_uniform((int32_t)(i + 1))];
        }
    }
    
    NSArray *randomArray = [NSArray arrayWithArray:mutableArray];
    NSLog(@"%@", randomArray);
    
    
    [self.tableView reloadData];
    
    return randomArray;
    
    
}


@end

//
//  DetailViewController.m
//  PairRandomizer_6WeekChallenge
//
//  Created by Douglas Goodwin on 8/12/15.
//  Copyright (c) 2015 Dr.G. All rights reserved.
//

#import "DetailViewController.h"
#import "PersonController.h"

@interface DetailViewController ()

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextView *detailTextField;

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self updateWithEntry:self.entry];
    
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    [self.detailTextField resignFirstResponder];
    
    return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}





/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

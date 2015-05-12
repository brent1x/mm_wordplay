//
//  AdverbViewController.m
//  WordPlay
//
//  Created by Andrew Thompson on 5/12/15.
//  Copyright (c) 2015 Andrew Thompson. All rights reserved.
//

#import "AdverbViewController.h"
#import "ResultsViewController.h"

@interface AdverbViewController ()

@property (weak, nonatomic) IBOutlet UITextField *adverbTextField;

@end

@implementation AdverbViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)resultsButtonPress:(id)sender {
    if ([self.adverbTextField.text isEqualToString:@""]) {
        NSLog(@"adjective is empty");
    } else {
        [self performSegueWithIdentifier:@"goToResults" sender:self];
    }
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {

    ResultsViewController *destVC = segue.destinationViewController;
    destVC.adverb = self.adverbTextField.text;
    destVC.name = self.name;
    destVC.adjective = self.adjective;
    destVC.noun = self.noun;
    
}

@end

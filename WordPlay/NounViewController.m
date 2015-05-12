//
//  NounViewController.m
//  WordPlay
//
//  Created by Andrew Thompson on 5/12/15.
//  Copyright (c) 2015 Andrew Thompson. All rights reserved.
//

#import "NounViewController.h"
#import "AdverbViewController.h"

@interface NounViewController ()

@property (weak, nonatomic) IBOutlet UITextField *nounTextField;

@end

@implementation NounViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)nextButton:(id)sender {
    if ([self.nounTextField.text isEqualToString:@""]) {
        NSLog(@"adjective is empty");
    } else {
        [self performSegueWithIdentifier:@"goToAdverb" sender:self];
    }
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {

    AdverbViewController *destVC = segue.destinationViewController;
    destVC.noun = self.nounTextField.text;
    destVC.name = self.name;
    destVC.adjective = self.adjective;
    
}

@end

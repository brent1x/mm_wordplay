//
//  EnterAdjectiveViewController.m
//  WordPlay
//
//  Created by Andrew Thompson on 5/12/15.
//  Copyright (c) 2015 Andrew Thompson. All rights reserved.
//

#import "EnterAdjectiveViewController.h"
#import "NounViewController.h"


@interface EnterAdjectiveViewController ()

@property (weak, nonatomic) IBOutlet UITextField *adjectiveTextField;

@end

@implementation EnterAdjectiveViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {

    NounViewController *destVC = segue.destinationViewController;
    destVC.adjective = self.adjectiveTextField.text;
    destVC.name = self.name;

}

- (IBAction)seeMadlibButton:(id)sender {

    if ([self.adjectiveTextField.text isEqualToString:@""]) {
        NSLog(@"adjective is empty");
    } else {
        [self performSegueWithIdentifier:@"goToNoun" sender:self];
    }
}

@end

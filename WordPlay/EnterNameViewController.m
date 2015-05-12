//
//  EnterNameViewController.m
//  WordPlay
//
//  Created by Andrew Thompson on 5/12/15.
//  Copyright (c) 2015 Andrew Thompson. All rights reserved.
//

#import "EnterNameViewController.h"
#import "EnterAdjectiveViewController.h"

@interface EnterNameViewController ()

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;

@end

@implementation EnterNameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {

    EnterAdjectiveViewController *destVC = segue.destinationViewController;
    destVC.name = self.nameTextField.text;
    
}

- (IBAction)nextButtonPress:(UIButton *)sender {

    if ([self.nameTextField.text isEqualToString:@""]) {
        NSLog(@"empty");
    } else {
        [self performSegueWithIdentifier:@"goToAdjective" sender:self];
    }
}


@end

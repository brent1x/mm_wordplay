//
//  ResultsViewController.m
//  WordPlay
//
//  Created by Andrew Thompson on 5/12/15.
//  Copyright (c) 2015 Andrew Thompson. All rights reserved.
//

#import "ResultsViewController.h"

@interface ResultsViewController ()

@property (weak, nonatomic) IBOutlet UITextView *resultsTextView;

@property NSString *resultString;

@end

@implementation ResultsViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.resultString = [NSString stringWithFormat:@"Hey my name is %@. I'm a %@ and this is %@ing %@.", self.name, self.noun, self.adverb, self.adjective];


    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] init];
    [attributedString appendAttributedString:[[NSAttributedString alloc] initWithString:@"test "
                                                                             attributes:@{NSUnderlineStyleAttributeName: @(NSUnderlineStyleNone)}]];
    [attributedString appendAttributedString:[[NSAttributedString alloc] initWithString:@"s"
                                                                             attributes:@{NSUnderlineStyleAttributeName: @(NSUnderlineStyleSingle),
                                                                                          NSBackgroundColorAttributeName: [UIColor redColor]}]];
    [attributedString appendAttributedString:[[NSAttributedString alloc] initWithString:@"tring"]];

    self.resultsTextView.text = [attributedString string];

    //self.resultsTextView.text = self.resultString;

}

@end

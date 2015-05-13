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
@property (weak, nonatomic) IBOutlet UILabel *resultsLabel;

@property NSString *resultString;

@end

@implementation ResultsViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //self.resultString = [NSString stringWithFormat:@"Hey my name is %@. I'm a %@ and this is %@ing %@.", self.name, self.noun, self.adverb, self.adjective];

    NSString *string0 = self.name;
    NSString *string1 = self.adjective;
    NSString *string2 = self.adverb;
    NSString *string3 = self.noun;

    NSString *text = [NSString stringWithFormat:@"My name is chikka-chikka slim %@. I am a %@ and I'm %@ %@", string0,string3,string2,string1];

    NSDictionary *attribs = @{NSForegroundColorAttributeName:[UIColor blackColor], NSFontAttributeName:[UIFont systemFontOfSize:15]};

    NSMutableAttributedString *attributedText = [[NSMutableAttributedString alloc] initWithString:text attributes:attribs];

    NSRange string0Range = [text rangeOfString:string0];
    NSRange string1Range = [text rangeOfString:string1];
    NSRange string2Range = [text rangeOfString:string2];
    NSRange string3Range = [text rangeOfString:string3];

    [attributedText setAttributes:@{NSForegroundColorAttributeName:[UIColor blueColor], NSFontAttributeName:[UIFont boldSystemFontOfSize:15.0]} range:string0Range];
    [attributedText setAttributes:@{NSForegroundColorAttributeName:[UIColor blueColor], NSFontAttributeName:[UIFont boldSystemFontOfSize:15.0]} range:string1Range];
    [attributedText setAttributes:@{NSForegroundColorAttributeName:[UIColor blueColor], NSFontAttributeName:[UIFont boldSystemFontOfSize:15.0]} range:string2Range];
    [attributedText setAttributes:@{NSForegroundColorAttributeName:[UIColor blueColor], NSFontAttributeName:[UIFont boldSystemFontOfSize:15.0]} range:string3Range];

    [self.resultsTextView setAttributedText:attributedText];

    //self.resultsTextView.text = self.resultString;

}

@end

//
//  ViewController.m
//  Test
//
//  Created by Martin Stemmle on 15/06/15.
//  Copyright (c) 2015 Tapglue. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *sizeClassLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    self.sizeClassLabel.text = [NSString stringWithFormat:@"iOS %@", [[UIDevice currentDevice] systemVersion]];
    
    NSArray *subviewArray = [[NSBundle mainBundle] loadNibNamed:@"View" owner:self options:nil];
    UIView *mainView = [subviewArray objectAtIndex:0];
    mainView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view insertSubview:mainView belowSubview:self.sizeClassLabel];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[mainView]|" options:0 metrics:nil views:NSDictionaryOfVariableBindings(mainView)]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[mainView]|" options:0 metrics:nil views:NSDictionaryOfVariableBindings(mainView)]];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)traitCollectionDidChange:(UITraitCollection *)previousTraitCollection {
    self.sizeClassLabel.text = [NSString stringWithFormat:@"%@\n\niOS %@", self.traitCollection, [[UIDevice currentDevice] systemVersion]];
}

@end

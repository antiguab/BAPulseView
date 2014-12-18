//
//  BAViewController.m
//  BAPulseView
//
//  Created by Bryan Antigua on 12/18/2014.
//  Copyright (c) 2014 Bryan Antigua. All rights reserved.
//

#import "BAViewController.h"
#import <BAPulseView.h>

@interface BAViewController ()

@end

@implementation BAViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    BAPulseView *pulseView = [[BAPulseView alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
    pulseView.backgroundColor = [UIColor blackColor];
    pulseView.center = self.view.center;
    [self.view addSubview:pulseView];
    pulseView.pulseStrokeColor = [UIColor blackColor].CGColor;
    
    //making button round
//    self.pulseView.layer.cornerRadius = self.pulseView.frame.size.width/2;
//    self.pulseView.pulseCornerRadius = self.pulseView.frame.size.width/2;
    [NSTimer scheduledTimerWithTimeInterval:1.0
                                     target:pulseView
                                   selector:@selector(popAndPulse)
                                   userInfo:nil
                                    repeats:YES];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

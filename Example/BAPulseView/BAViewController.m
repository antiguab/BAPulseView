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
    
    //Simple Usage ============================================================================
    BAPulseView *pulseView = [[BAPulseView alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
    [self.view addSubview:pulseView];
    
//    Adjust Corner Radius (Rounded Edges) ====================================================
//    pulseView.layer.cornerRadius = 20.0f;
//    pulseView.pulseCornerRadius = 20.0f;
    
    
//    Adjust Corner Radius (Circle) ===========================================================
    pulseView.layer.cornerRadius = pulseView.frame.size.width/2;
    pulseView.pulseCornerRadius = pulseView.frame.size.width/2;
    

//    Adjust Stroke Color =====================================================================
//    pulseView.pulseStrokeColor = [UIColor redColor].CGColor;
    
    
//    Adjust Pulse LineWidth ==================================================================
//    pulseView.pulseLineWidth = 5.0f;
    

//    Adjust Pulse Radius =====================================================================
//    pulseView.pulseRadius = 400.0f;


//    Adjust Pulse Duration ====================================================================
//    pulseView.pulseDuration = 3.0f;
    
    
//    Pop and Pulse  ===========================================================================
//    [pulseView popAndPulse];
    pulseView.center = self.view.center;
    [NSTimer scheduledTimerWithTimeInterval:1.0
                                     target:pulseView
                                   selector:@selector(popAndPulse)
                                   userInfo:nil
                                    repeats:YES];
    
    
//    Pop ======================================================================================
//    [pulseView pop];
//        pulseView.center = self.view.center;
//        [NSTimer scheduledTimerWithTimeInterval:1.0
//                                         target:pulseView
//                                       selector:@selector(pop)
//                                       userInfo:nil
//                                        repeats:YES];
    
    
//    Pulse ====================================================================================
//    [pulseView pulse];
//    pulseView.center = self.view.center;
//    [NSTimer scheduledTimerWithTimeInterval:1.0
//                                     target:pulseView
//                                   selector:@selector(pulse)
//                                   userInfo:nil
//                                    repeats:YES];
    
    
//    UIView set up ============================================================================
    pulseView.backgroundColor = [UIColor blackColor];
    pulseView.center = self.view.center;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

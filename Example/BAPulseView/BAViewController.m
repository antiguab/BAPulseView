//The MIT License (MIT)
//
//Copyright (c) 2014 Bryan Antigua <antigua.b@gmail.com>
//
//Permission is hereby granted, free of charge, to any person obtaining a copy
//of this software and associated documentation files (the "Software"), to deal
//in the Software without restriction, including without limitation the rights
//to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//copies of the Software, and to permit persons to whom the Software is
//furnished to do so, subject to the following conditions:
//
//The above copyright notice and this permission notice shall be included in all
//copies or substantial portions of the Software.
//
//THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//SOFTWARE.

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

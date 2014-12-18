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

#import "BAPulseView.h"

@implementation BAPulseView{
    
    CAShapeLayer* pulse;
    NSNumber* pulseRadiusToValue;
    
}

-  (id)initWithFrame:(CGRect)aRect
{
    self = [super initWithFrame:aRect];
    
    if (self)
    {
        [self configure];
    }
    return self;
}

- (id)initWithCoder:(NSCoder*)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self)
    {
        [self configure];
    }
    return self;
}


-(void)configure{
    
    //configuring click effect
    pulse = [CAShapeLayer layer];
    pulse.frame = self.bounds;
    pulse.fillColor = [UIColor clearColor].CGColor;
    pulse.opacity = 0.0f;
    pulse.path = [UIBezierPath bezierPathWithRect:CGRectMake(0.0f, 0.0f, self.frame.size.width, self.frame.size.height)].CGPath;
    
//    DEFAULTS

    pulse.cornerRadius = 0;
    pulse.strokeColor = [UIColor blackColor].CGColor;
    pulse.lineWidth = 0.3f;
    self.pulseRadius = self.frame.size.height + self.frame.size.height*.3;
    self.pulseDuration = 0.4f;
    
    [self.layer insertSublayer:pulse below:self.layer];
}

-(void)setPulseStrokeColor:(CGColorRef) color{
    pulse.strokeColor = color;
}

-(void)setPulseLineWidth:(float) width{
    pulse.lineWidth = width;
}

-(void)setPulseRadius:(float) radius{
    _pulseRadius = radius;
    pulseRadiusToValue = @(radius/MAX(pulse.frame.size.height,pulse.frame.size.width));
    
}

-(void)setPulseCornerRadius:(float) radius{
    _pulseCornerRadius = radius;
    pulse.path = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(0.0f, 0.0f, self.frame.size.width, self.frame.size.height) cornerRadius:radius].CGPath;
}

-(void)setPulseDuration:(float)pulseDuration {
    _pulseDuration = pulseDuration;    
}

- (void)popAndPulse{
    [self pop];
    [self pulse];
}

- (void) pop {
    CABasicAnimation *popAnimation;
    popAnimation=[CABasicAnimation animationWithKeyPath:@"transform.scale"];
    popAnimation.duration=self.pulseDuration/2.0f;
    popAnimation.repeatCount=1;
    popAnimation.autoreverses=YES;
    popAnimation.fromValue=@1.0;
    popAnimation.toValue=@1.1;
    [self.layer addAnimation:popAnimation forKey:@"animateOpacity"];
}

- (void) pulse {
    CABasicAnimation *pulseAnimation;
    pulseAnimation=[CABasicAnimation animationWithKeyPath:@"transform.scale"];
    pulseAnimation.duration=self.pulseDuration;
    pulseAnimation.repeatCount=1;
    pulseAnimation.fromValue=@1.0;
    pulseAnimation.toValue=pulseRadiusToValue;
    [pulse addAnimation:pulseAnimation forKey:@"animateOpacity"];
    
    
    CABasicAnimation *fadeOutAnimation;
    fadeOutAnimation=[CABasicAnimation animationWithKeyPath:@"opacity"];
    fadeOutAnimation.duration=self.pulseDuration/2;
    fadeOutAnimation.repeatCount=1;
    fadeOutAnimation.autoreverses = YES;
    fadeOutAnimation.fromValue=@0.0;
    fadeOutAnimation.toValue=@1.0;
    [pulse addAnimation:fadeOutAnimation forKey:@"opacity"];
}
@end

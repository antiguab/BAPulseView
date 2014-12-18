# BAPulseView

[![CI Status](http://img.shields.io/travis/Bryan Antigua/BAPulseView.svg?style=flat)](https://travis-ci.org/Bryan Antigua/BAPulseView)
[![Version](https://img.shields.io/cocoapods/v/BAPulseView.svg?style=flat)](http://cocoadocs.org/docsets/BAPulseView)
[![License](https://img.shields.io/cocoapods/l/BAPulseView.svg?style=flat)](http://cocoadocs.org/docsets/BAPulseView)
[![Platform](https://img.shields.io/cocoapods/p/BAPulseView.svg?style=flat)](http://cocoadocs.org/docsets/BAPulseView)

## Overview
![example6](https://github.com/antiguab/BAFluidView/blob/master/readmeAssets/example6.gif)
![example1](https://github.com/antiguab/BAFluidView/blob/master/readmeAssets/example1.gif)

This view and it's layer can create a pop and pulse effect.
<br/>

## Requirements
* Works on any iOS device, but is limited to iOS 7.0 or higher

<br/>

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

<br/>

## Getting Started
### Installation

BAPulseView is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```
pod "BAPulseView"
```

### Simple Usage


#### Basic
To add a BAPulseView to your app, add the line:

```
BAPulseView *pulseView = [[BAPulseView alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
[self.view addSubview:view];
```

I added an NSTimer for demo purposes. The timer sets off the funtion **popAndPulse**

```
pulseView.center = self.view.center;
[NSTimer scheduledTimerWithTimeInterval:1.0 
							     target:pulseView
                               selector:@selector(popAndPulse)
                               userInfo:nil
                                repeats:YES];
```

This creates the following view:

![]()***demo 1 insert here***


### Advanced Usage (Properties)
Listed below are examples of several properties that you can control.

#### Adjust Corner Radius (Rounded Edges)
If you want to round out the few, after you set the **cornerRadius** and **pulseCorderRadius** properties:

```
pulseView.layer.cornerRadius = 20.0f;
pulseView.pulseCornerRadius = 20.0f;
```

***insert gif here***

#### Adjust Corner Radius (Circle)
giving a corner radius of half the width and height gives you a circle:

```
pulseView.layer.cornerRadius = pulseView.frame.size.width/2;
pulseView.pulseCornerRadius = pulseView.frame.size.width/2;
```

***insert gif here***


#### Adjust Stroke Color 

To change the color of the pulse outline, set the **pulseStrokeColor** property:

```
pulseView.pulseStrokeColor = [UIColor redColor].CGColor;
```

***insert gif here***


#### Adjust Line Width

By editing the **pulseLineWidth** property, you can change the width of the pulse outline:

```
pulseView.pulseLineWidth = 5.0f;
```

***insert gif here***


#### Adjust Pulse Radius

If you want the pulse to extend farther out, pass a float value to the **pulseRadius** property:

```
pulseView.pulseRadius = 400.0f;
```

***insert gif here***


#### Adjust Duration

To increase the time of a pulse, edit the **pulseDuration** property:

```
pulseView.pulseDuration = 3.0f;
```

### Advanced Usage (Methods)
Listed below are examples of several method you can use to control the animation.

#### Pop and Pulse

For the default effect, use the following method (or NSTimer if you want it to repeat):

```
[pulseView popAndPulse];

//    pulseView.center = self.view.center;
//    [NSTimer scheduledTimerWithTimeInterval:1.0
//                                     target:pulseView
//                                   selector:@selector(popAndPulse)
//                                   userInfo:nil
//                                    repeats:YES];
```

***insert gif here***

#### Just Pop

For just the pop effect, use the following method (or NSTimer if you want it to repeat):

```
[pulseView pop];

//    pulseView.center = self.view.center;
//    [NSTimer scheduledTimerWithTimeInterval:1.0
//                                     target:pulseView
//                                   selector:@selector(pop)
//                                   userInfo:nil
//                                    repeats:YES];
```

***insert gif here***


#### Just Puldr

For just the pulse effect, use the following method (or NSTimer if you want it to repeat):

```
[pulseView pulse];

//    pulseView.center = self.view.center;
//    [NSTimer scheduledTimerWithTimeInterval:1.0
//                                     target:pulseView
//                                   selector:@selector(pulse)
//                                   userInfo:nil
//                                    repeats:YES];
```

***insert gif here***


## Author

Bryan Antigua, antigua.B@gmail.com


## License

BAFluidView is available under the MIT license. See the LICENSE file for more info.




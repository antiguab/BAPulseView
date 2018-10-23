# BAPulseView

[![CI Status](http://img.shields.io/travis/antiguab/BAPulseView.svg?style=flat)](https://travis-ci.org/antiguab/BAPulseView)
[![Version](https://img.shields.io/cocoapods/v/BAPulseView.svg?style=flat)](http://cocoadocs.org/docsets/BAPulseView)
[![License](https://img.shields.io/cocoapods/l/BAPulseView.svg?style=flat)](http://cocoadocs.org/docsets/BAPulseView)
[![Platform](https://img.shields.io/cocoapods/p/BAPulseView.svg?style=flat)](http://cocoadocs.org/docsets/BAPulseView)

## Overview
![cornerRadius](https://github.com/antiguab/BAPulseView/blob/master/readme-assets/BAPulseView_CornerRadius.gif)
![cornerRadiusCircle](https://github.com/antiguab/BAPulseView/blob/master/readme-assets/BAPulseView_CornerRadiusCircle.gif)

This view and it's layer can create a pop and pulse effect.
<br/>

## Requirements
* Works on any iOS device

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

![cornerRadius](https://github.com/antiguab/BAPulseView/blob/master/readme-assets/BAPulseView_SimpleUsage.gif)



### Advanced Usage (Properties)
Listed below are examples of several properties that you can control.

#### Adjust Corner Radius (Rounded Edges)
If you want to round out the few, after you set the **cornerRadius** and **pulseCorderRadius** properties:

```
pulseView.layer.cornerRadius = 20.0f;
pulseView.pulseCornerRadius = 20.0f;
```

![cornerRadius](https://github.com/antiguab/BAPulseView/blob/master/readme-assets/BAPulseView_CornerRadius.gif)

#### Adjust Corner Radius (Circle)
giving a corner radius of half the width and height gives you a circle:

```
pulseView.layer.cornerRadius = pulseView.frame.size.width/2;
pulseView.pulseCornerRadius = pulseView.frame.size.width/2;
```

![cornerRadiusCircle](https://github.com/antiguab/BAPulseView/blob/master/readme-assets/BAPulseView_CornerRadiusCircle.gif)


#### Adjust Stroke Color 

To change the color of the pulse outline, set the **pulseStrokeColor** property:

```
pulseView.pulseStrokeColor = [UIColor redColor].CGColor;
```

![strokeColor](https://github.com/antiguab/BAPulseView/blob/master/readme-assets/BAPulseView_StrokeColor.gif)


#### Adjust Line Width

By editing the **pulseLineWidth** property, you can change the width of the pulse outline:

```
pulseView.pulseLineWidth = 5.0f;
```

![lineWidth](https://github.com/antiguab/BAPulseView/blob/master/readme-assets/BAPulseView_LineWidth.gif)


#### Adjust Pulse Radius

If you want the pulse to extend farther out, pass a float value to the **pulseRadius** property:

```
pulseView.pulseRadius = 400.0f;
```

![radius](https://github.com/antiguab/BAPulseView/blob/master/readme-assets/BAPulseView_Radius.gif)


#### Adjust Duration

To increase the time of a pulse, edit the **pulseDuration** property:

```
pulseView.pulseDuration = 3.0f;
```

![duration](https://github.com/antiguab/BAPulseView/blob/master/readme-assets/BAPulseView_Duration.gif)


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

![cornerRadiusCircle](https://github.com/antiguab/BAPulseView/blob/master/readme-assets/BAPulseView_CornerRadiusCircle.gif)

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

![pop](https://github.com/antiguab/BAPulseView/blob/master/readme-assets/BAPulseView_Pop.gif)


#### Just Pulse

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

![pulse](https://github.com/antiguab/BAPulseView/blob/master/readme-assets/BAPulseView_Pulse.gif)




## Author

Bryan Antigua, antigua.B@gmail.com


## License

BAPulseView is available under the MIT license. See the LICENSE file for more info.




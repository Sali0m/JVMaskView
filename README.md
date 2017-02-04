# JVMaskView

[![CI Status](http://img.shields.io/travis/Sali0m/JVMaskView.svg?style=flat)](https://travis-ci.org/Sali0m/JVMaskView)
[![Version](https://img.shields.io/cocoapods/v/JVMaskView.svg?style=flat)](http://cocoapods.org/pods/JVMaskView)
[![License](https://img.shields.io/cocoapods/l/JVMaskView.svg?style=flat)](http://cocoapods.org/pods/JVMaskView)
[![Platform](https://img.shields.io/cocoapods/p/JVMaskView.svg?style=flat)](http://cocoapods.org/pods/JVMaskView)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

### Cocoapods

JVMaskView is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "JVMaskView"
```

### Manually
Import the file JVMessage.swift in your project.

## Author

Sali0m, jehan.vossen@gmail.com

## License

JVMaskView is available under the MIT license. See the LICENSE file for more info.

# JVMaskView

![example](http://www.saliom.be/githubImg/JVMaskView.gif)

JVMaskView allows you to create a view with a hole in it.

## Usage

You can implement the view in code, or you can also set it in interface builder. Currently in interface builder you cannot set the maskRect, it seems to be an xcode bug.

```
//JVMaskView(maskPath: UIBezierPath?, maskRect: CGRect?)

let maskView = JVMaskView(nil, maskRect: CGRectMake(0,0,50,50)
self.view.addSubview(maskView)
```

You can pass from an UIBezierPath to a CGRect by simply calling the property. When giving both proparties, the UIBezierPath will prevale over the CGRect. If given only a CGRect, the mask will be the rectangle given as maskRect value.

For more information check out the project and run it.

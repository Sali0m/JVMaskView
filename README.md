# JVMaskView

![example](http://www.saliom.be/githubImg/JVMaskView.gif)

JVMaskView allows you to create a view with a hole in it.


## Installation

`CocoaPods` will be coming soon

For now import the file JVMessage.swift in your project.

## Usage
```
//JVMaskView(maskPath: UIBezierPath?, maskRect: CGRect?)

let maskView = JVMaskView(nil, maskRect: CGRectMake(0,0,50,50)
self.view.addSubview(maskView)
```

You can pass from an UIBezierPath to a CGRect by simply calling the property. When giving both proparties, the UIBezierPath will prevale over the CGRect. If given only a CGRect, the mask will be the rectangle given as maskRect value.

For more information check out the project and run it.

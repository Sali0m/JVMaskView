# JVMaskView

![example](http://www.saliom.be/githubImg/JVMaskView.gif)

JVMaskView allows you to create a view with a hole in it.


## Installation

`CocoaPods` will be coming soon

For now import the file JVMessage.swift in your project.

## Usage

You can implement the view in code, or you can also set it in interface builder. Currently in interface builder you cannot set the maskRect, it seems to be an xcode bug.

```
//JVMaskView(maskPath: UIBezierPath?, maskRect: CGRect?)

let maskView = JVMaskView(nil, maskRect: CGRectMake(0,0,50,50)
self.view.addSubview(maskView)
```

You can pass from an UIBezierPath to a CGRect by simply calling the property. When giving both proparties, the UIBezierPath will prevale over the CGRect. If given only a CGRect, the mask will be the rectangle given as maskRect value.

For more information check out the project and run it.

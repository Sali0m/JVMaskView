//
//  JVMaskView.swift
//  JVMaskView
//
//  Created by Jehan Vossen on 03/06/2016.
//  Copyright © 2016 VossenAndCo. All rights reserved.
//

import UIKit

@IBDesignable
class JVMaskView: UIView {

    var maskPath: UIBezierPath? {
        didSet {
            self.setNeedsDisplay()
        }
    }
    @IBInspectable var maskRect: CGRect? {
        didSet {
            self.setNeedsDisplay()
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.initialize()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.initialize()
    }
    
    init(maskPath: UIBezierPath?, maskRect: CGRect?) {
        self.maskPath = maskPath
        self.maskRect = maskRect
        super.init(frame: CGRectZero
        )
    }
    
    func initialize() {
        
    }
    
    override func drawRect(rect: CGRect) {
        // Drawing code
        super.drawRect(rect)
        
        let maskLayer = CAShapeLayer()
        maskLayer.frame = rect
        maskLayer.fillColor = UIColor.blackColor().CGColor
        
        var path: UIBezierPath
        
        if let bezierPath = self.maskPath {
            path = bezierPath
        } else if let maskRect = self.maskRect where maskRect != CGRectZero {
            path = UIBezierPath(rect: maskRect)
        } else {
            return
        }
        
        let rectPath = UIBezierPath(rect: rect)
        path.appendPath(rectPath)
        
        maskLayer.path = path.CGPath
        maskLayer.fillRule = kCAFillRuleEvenOdd
        
        self.layer.mask = maskLayer
    }

}

//
//  JVMaskView.swift
//  JVMaskView
//
//  Created by Jehan Vossen on 03/06/2016.
//  Copyright © 2016 VossenAndCo. All rights reserved.
//

import UIKit

@IBDesignable
public class JVMaskView: UIView {

    public var maskPath: UIBezierPath? {
        didSet {
            self.setNeedsDisplay()
        }
    }
    
    public var maskRect: CGRect? {
        didSet {
            self.setNeedsDisplay()
        }
    }
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        self.initialize()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.initialize()
    }
    
    public init(maskPath: UIBezierPath?, maskRect: CGRect?) {
        self.maskPath = maskPath
        self.maskRect = maskRect
        super.init(frame: CGRect.zero
        )
    }
    
    internal func initialize() {
        
    }
    
    override public func draw(_ rect: CGRect) {
        // Drawing code
        super.draw(rect)
        
        let maskLayer = CAShapeLayer()
        maskLayer.frame = rect
        maskLayer.fillColor = UIColor.black.cgColor
        
        var path: UIBezierPath
        
        if let bezierPath = self.maskPath {
            path = bezierPath
        } else if let maskRect = self.maskRect, maskRect != CGRect.zero {
            path = UIBezierPath(rect: maskRect)
        } else {
            return
        }
        
        let rectPath = UIBezierPath(rect: rect)
        path.append(rectPath)
        
        maskLayer.path = path.cgPath
        maskLayer.fillRule = CAShapeLayerFillRule.evenOdd
        
        self.layer.mask = maskLayer
    }

}

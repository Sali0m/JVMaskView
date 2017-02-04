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
        super.init(frame: CGRect.zero
        )
    }
    
    func initialize() {
        
    }
    
    override func draw(_ rect: CGRect) {
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
        maskLayer.fillRule = kCAFillRuleEvenOdd
        
        self.layer.mask = maskLayer
    }

}

//
//  ViewController.swift
//  JVMaskView
//
//  Created by Jehan Vossen on 03/06/2016.
//  Copyright © 2016 VossenAndCo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var maskView: JVMaskView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.roundedPressed(nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func squaredPressed(sender: UIButton?) {
        self.maskView.maskPath = UIBezierPath(rect: CGRectMake(self.view.frame.width/4, self.view.frame.height/4, self.view.frame.width/2, self.view.frame.height/2))
    }
    
    @IBAction func roundedPressed(sender: UIButton?) {
        self.maskView.maskPath = UIBezierPath(arcCenter: self.view.center, radius: self.view.frame.width/4.0, startAngle: 0, endAngle: self.rad(360), clockwise: true)
    }

    func rad (value:Double) -> CGFloat {
        return CGFloat(value * M_PI / 180.0)
    }

}


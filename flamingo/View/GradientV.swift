//
//  GradientV.swift
//  flamingo
//
//  Created by Jaxson Mann on 8/10/17.
//  Copyright © 2017 Jaxson Mann. All rights reserved.
//

import UIKit

@IBDesignable
class GradientV: UIView {
    
    // #18FFFF
    @IBInspectable var aquaClr: UIColor = #colorLiteral(red: 0, green: 0.9915620685, blue: 1, alpha: 1) 
    // #64FFDA
    @IBInspectable var seafoamClr: UIColor = #colorLiteral(red: 0.3921568627, green: 1, blue: 0.8549019608, alpha: 1)
    // #FF5252
    @IBInspectable var coralClr: UIColor = #colorLiteral(red: 1, green: 0.3215686275, blue: 0.3215686275, alpha: 1)
    // #ECEFF1
    @IBInspectable var ltGreyClr: UIColor = #colorLiteral(red: 0.9254901961, green: 0.937254902, blue: 0.9450980392, alpha: 1)
    
    override func layoutSubviews() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [coralClr.cgColor, ltGreyClr.cgColor, seafoamClr.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0, y: 1)
        gradientLayer.endPoint = CGPoint(x: 1, y: 0)
        gradientLayer.frame = self.bounds
        self.layer.insertSublayer(gradientLayer, at: 0)
    }

}

//
//  UIView+Extension.swift
//  GradientView
//
//  Created by Arnold Tjiawi on 25/05/19.
//  Copyright © 2019 ArnoldTjiawi. All rights reserved.
//

import Foundation
import UIKit

extension UIView{
    
    func setGradientBackGround(colorOne: UIColor, colorTwo: UIColor){
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = bounds
        gradientLayer.colors = [colorOne.cgColor, colorTwo.cgColor]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.startPoint = CGPoint(x: 1.0, y: 1.0)
        gradientLayer.endPoint = CGPoint(x: 0.0, y: 0.0)
        
        layer.insertSublayer(gradientLayer, at: 0)
        
    }
    
    func setCrazyBackGround(colorOne: UIColor, colorTwo: UIColor, colorThree: UIColor, colorFour: UIColor){
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = bounds
        gradientLayer.colors = [colorOne.cgColor, colorTwo.cgColor, colorThree.cgColor, colorFour.cgColor]
        gradientLayer.locations = [0.0, 0.35, 0.7, 1.0]
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 1.0)
        
        layer.insertSublayer(gradientLayer, at: 0)
        
    }
    func setCrazyGradientBackGround(){
        UIView.animate(withDuration: 2){
        let colorRandom1 = UIColor(red: CGFloat.random(in:0...255/255), green: CGFloat.random(in: 0...255/255), blue: CGFloat.random(in: 0...255/255), alpha: 1.0)
        let colorRandom2 = UIColor(red: CGFloat.random(in:0...255/255), green: CGFloat.random(in: 0...255/255), blue: CGFloat.random(in: 0...255/255), alpha: 1.0)
        let colorRandom3 = UIColor(red: CGFloat.random(in:0...255/255), green: CGFloat.random(in: 0...255/255), blue: CGFloat.random(in: 0...255/255), alpha: 1.0)
        let colorRandom4 = UIColor(red: CGFloat.random(in:0...255/255), green: CGFloat.random(in: 0...255/255), blue: CGFloat.random(in: 0...255/255), alpha: 1.0)
        let colorRandom5 = UIColor(red: CGFloat.random(in:0...255/255), green: CGFloat.random(in: 0...255/255), blue: CGFloat.random(in: 0...255/255), alpha: 1.0 )
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.bounds
        gradientLayer.colors = [colorRandom1, colorRandom2, colorRandom3, colorRandom4, colorRandom5]
        gradientLayer.locations = [0.0, 0.25, 0.5, 0.75, 1.0]
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 1.0)
        
            self.layer.insertSublayer(gradientLayer, at: 0)
        }
    }
    
    func backgroundColorAnimation(){
        UIView.animate(withDuration: 0.8){
            self.backgroundColor = UIColor(red: CGFloat.random(in: 0...255/255), green: CGFloat.random(in:
                0...255/255), blue: CGFloat.random(in: 0...255/255), alpha: CGFloat.random(in: 0...1))
        }
    }
}
extension UIColor{
    static func random() -> UIColor{
        let red     = CGFloat.random(in: 0...1)
        let green   = CGFloat.random(in: 0...1)
        let blue    = CGFloat.random(in: 0...1)
        
        return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }
}

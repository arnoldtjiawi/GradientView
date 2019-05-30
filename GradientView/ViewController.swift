//
//  ViewController.swift
//  GradientView
//
//  Created by Arnold Tjiawi on 25/05/19.
//  Copyright © 2019 ArnoldTjiawi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ViewBox: UIView!
    @IBOutlet weak var PressButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//        PressButton.layer.cornerRadius = PressButton.frame.size.height/2
//        PressButton.layer.masksToBounds = true
        
//        view.setGradientBackGround(colorOne: Colors.veryDarkGrey, colorTwo: Colors.lightGrey)
//
//        ViewBox.setGradientBackGround(colorOne: Colors.white, colorTwo: Colors.blue)
//
//        PressButton.setGradientBackGround(colorOne: Colors.orange, colorTwo: Colors.brightOrange)
        
        //view.setCrazyBackGround(colorOne: Colors.white, colorTwo: Colors.red, colorThree: Colors.blue, colorFour: Colors.green)
    }

    @IBAction func ButtonTapped(_ sender: UIButton) {
        
//        view.setCrazyGradientBackGround()
        view.backgroundColorAnimation()
    }
    
   
        
}


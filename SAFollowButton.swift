//
//  SAFollowButton.swift
//  GradientView
//
//  Created by Arnold Tjiawi on 26/05/19.
//  Copyright © 2019 ArnoldTjiawi. All rights reserved.
//
import UIKit

class SAFollowButton: UIButton {
    
    var isOn = false
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initButton()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initButton()
    }
    
    func initButton() {
        layer.borderWidth = 2.0
        layer.borderColor = Colors.buttonCalm.cgColor
        layer.backgroundColor = Colors.darkGrey.cgColor
        layer.cornerRadius = frame.size.height/2
        
        setTitleColor(Colors.buttonCalm, for: .normal)
        addTarget(self, action: #selector(SAFollowButton.buttonPressed), for: .touchUpInside)
    }
    
    @objc func buttonPressed() {
        activateButton(bool: !isOn)
    }
    
    func activateButton(bool: Bool) {
        
        isOn = bool
        
        let color = bool ? Colors.buttonCalm : Colors.darkGrey
        let title = bool ? "Something Calm" : "Stop"
        let titleColor = bool ? Colors.darkGrey : Colors.buttonCalm
        
        setTitle(title, for: .normal)
        setTitleColor(titleColor, for: .normal)
        backgroundColor = color
    }
    
    
}
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

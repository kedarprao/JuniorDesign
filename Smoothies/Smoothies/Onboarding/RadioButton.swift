//
//  RadioButton.swift
//  Smoothies
//
//  Created by Alyssa Tan on 11/10/18.
//  Copyright © 2018 Francis Wethington. All rights reserved.
//

import UIKit

class RadioButton: UIButton {
    var alternateButton:Array<RadioButton>?
    
    override func awakeFromNib() {
        self.layer.cornerRadius = 5
        self.layer.borderWidth = 2.0
        self.layer.masksToBounds = true
    }
    
    func unselectAlternateButtons(){
        if alternateButton != nil {
            self.isSelected = true
            
            for aButton:RadioButton in alternateButton! {
                aButton.isSelected = false
            }
        }else{
            toggleButton()
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        unselectAlternateButtons()
        super.touchesBegan(touches, with: event)
    }
    
    func toggleButton(){
        self.isSelected = !isSelected
    }
    
    override var isSelected: Bool {
        didSet {
            if isSelected {
                self.layer.borderColor = isEnabled ? tintColor.cgColor : UIColor.lightGray.cgColor
            } else {
                self.layer.borderColor = isEnabled ? tintColor.cgColor : UIColor.lightGray.cgColor
            }
        }
    }
}

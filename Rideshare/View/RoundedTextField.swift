//
//  RoundedTextField.swift
//  Rideshare
//
//  Created by Mackenzie Kinzel on 5/23/18.
//  Copyright © 2018 Mackenzie Kinzel. All rights reserved.
//

import UIKit

class RoundedTextField: UITextField {
    
    override func awakeFromNib() {
        setupView()
    }

    func setupView() {
        self.layer.cornerRadius = self.frame.height / 2
    }

}

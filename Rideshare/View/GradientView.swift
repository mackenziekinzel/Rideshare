//
//  GradientView.swift
//  Rideshare
//
//  Created by Mackenzie Kinzel on 5/4/18.
//  Copyright © 2018 Mackenzie Kinzel. All rights reserved.
//

import UIKit

class GradientView: UIView {

    let gradient = CAGradientLayer()
    
    override func awakeFromNib() {
        setupView()
    }
    
    func setupView() {
        gradient.frame = self.bounds
        gradient.colors = [UIColor.white.cgColor, UIColor.init(white: 1.0, alpha: 0.0).cgColor]
        gradient.startPoint = CGPoint.zero
        gradient.endPoint = CGPoint(x: 0, y: 1.0)
        gradient.locations = [0.8, 1.0]
        gradient.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: self.frame.height)
        self.layer.addSublayer(gradient)
    }
}

//
//  RoundImageView.swift
//  Rideshare
//
//  Created by Mackenzie Kinzel on 5/5/18.
//  Copyright © 2018 Mackenzie Kinzel. All rights reserved.
//

import UIKit

class RoundImageView: UIImageView {
    
    override func awakeFromNib() {
        setupView()
    }

    func setupView() {
        self.layer.cornerRadius = self.frame.width / 2
        self.clipsToBounds = true
    }
}

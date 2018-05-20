//
//  UIViewExt.swift
//  Rideshare
//
//  Created by Mackenzie Kinzel on 5/19/18.
//  Copyright © 2018 Mackenzie Kinzel. All rights reserved.
//

import UIKit

extension UIView {
    
    func fadeTo(alphaValue: CGFloat, withDuration duration: TimeInterval) {
        UIView.animate(withDuration: duration, animations: {
            self.alpha = alphaValue
        })
    }
}

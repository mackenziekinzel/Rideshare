//
//  CenterVCDelegate.swift
//  Rideshare
//
//  Created by Mackenzie Kinzel on 5/11/18.
//  Copyright © 2018 Mackenzie Kinzel. All rights reserved.
//

import UIKit

protocol CenterVCDelegate {
    func toggleLeftPanel()
    func addLeftPanelViewController()
    func animateLeftPanel(shouldExpand: Bool)
}

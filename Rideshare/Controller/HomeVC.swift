//
//  HomeVC.swift
//  Rideshare
//
//  Created by Mackenzie Kinzel on 5/1/18.
//  Copyright © 2018 Mackenzie Kinzel. All rights reserved.
//

import UIKit
import MapKit

class HomeVC: UIViewController, MKMapViewDelegate {
    
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var actionButton: RoundedShadowButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
       mapView.delegate = self
    }

    @IBAction func actionButtonWasPressed(_ sender: Any) {
        actionButton.animateButton(shouldLoad: true, withMessage: nil)
    }
    
}


//
//  ViewController.swift
//  Rideshare
//
//  Created by Mackenzie Kinzel on 5/1/18.
//  Copyright © 2018 Mackenzie Kinzel. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {
    
    @IBOutlet weak var mapView: MKMapView!

    override func viewDidLoad() {
        super.viewDidLoad()
       mapView.delegate = self
    }


}


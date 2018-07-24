//
//  PickupVC.swift
//  Rideshare
//
//  Created by Mackenzie Kinzel on 7/14/18.
//  Copyright © 2018 Mackenzie Kinzel. All rights reserved.
//

import UIKit

class PickupVC: UIViewController {
    
    @IBOutlet weak var pickupMapView: RoundMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func acceptTripButtonPressed(_ sender: RoundedShadowButton) {
        
    }
    
    @IBAction func cancelButtonPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}

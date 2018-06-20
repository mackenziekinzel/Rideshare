//
//  HomeVC.swift
//  Rideshare
//
//  Created by Mackenzie Kinzel on 5/1/18.
//  Copyright © 2018 Mackenzie Kinzel. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation
import RevealingSplashView

class HomeVC: UIViewController, MKMapViewDelegate {
    
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var actionButton: RoundedShadowButton!
    
    var delegate: CenterVCDelegate?
    
    var manager: CLLocationManager?
    
    let revealingSplashView = RevealingSplashView(iconImage: UIImage(named: "launchScreenIcon")!, iconInitialSize: CGSize(width: 80, height: 80), backgroundColor: UIColor.white)

    override func viewDidLoad() {
        super.viewDidLoad()
        
        checkLocationAuthStatus()
        
        mapView.delegate = self
        
        self.view.addSubview(revealingSplashView)
        revealingSplashView.animationType = SplashAnimationType.swingAndZoomOut
        revealingSplashView.startAnimation()
    }
    
    func checkLocationAuthStatus() {
        if CLLocationManager.authorizationStatus() == .authorizedAlways {
            manager?.delegate = self
            manager?.desiredAccuracy = kCLLocationAccuracyBest
            manager?.startUpdatingLocation()
        } else {
            manager?.requestAlwaysAuthorization()
        }
    }

    @IBAction func actionButtonWasPressed(_ sender: Any) {
        actionButton.animateButton(shouldLoad: true, withMessage: nil)
    }
    
    @IBAction func menuButtonWasPressed(_ sender: UIButton) {
        delegate?.toggleLeftPanel()
    }
}

extension HomeVC: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        if status == .authorizedAlways {
        checkLocationAuthStatus()
        mapView.showsUserLocation = true
        mapView.userTrackingMode = .follow
        }
    }
}


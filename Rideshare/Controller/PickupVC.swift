//
//  PickupVC.swift
//  Rideshare
//
//  Created by Mackenzie Kinzel on 7/14/18.
//  Copyright © 2018 Mackenzie Kinzel. All rights reserved.
//

import UIKit
import MapKit

class PickupVC: UIViewController {
    
    @IBOutlet weak var pickupMapView: RoundMapView!
    
    var regionRadius: CLLocationDistance = 2000
    var pin: MKPlacemark? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func acceptTripButtonPressed(_ sender: RoundedShadowButton) {
        
    }
    
    @IBAction func cancelButtonPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}

extension PickupVC: MKMapViewDelegate {
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        let identifier = "pickupPoint"
        var annotationView = mapView.dequeueReusableAnnotationView(withIdentifier: identifier)
        if annotationView == nil {
            annotationView = MKAnnotationView(annotation: annotation, reuseIdentifier: identifier)
        } else {
            annotationView?.annotation = annotation
        }
        annotationView?.image = UIImage(named: "destinationAnnotation")
        return annotationView
    }
    
    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate, regionRadius, regionRadius)
        pickupMapView.setRegion(coordinateRegion, animated: true)
    }
    
    func dropPinFor(placemark: MKPlacemark) {
        pin = placemark
        
        for annotation in pickupMapView.annotations {
            pickupMapView.removeAnnotation(annotation)
        }
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = placemark.coordinate
        pickupMapView.addAnnotation(annotation)
    }
}

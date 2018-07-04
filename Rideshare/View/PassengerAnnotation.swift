//
//  PassengerAnnotation.swift
//  Rideshare
//
//  Created by Mackenzie Kinzel on 7/3/18.
//  Copyright © 2018 Mackenzie Kinzel. All rights reserved.
//

import Foundation
import MapKit

class PassengerAnnotation: NSObject, MKAnnotation {
    dynamic var coordinate: CLLocationCoordinate2D
    var key: String
    
    init(coordinate: CLLocationCoordinate2D, key: String) {
        self.coordinate = coordinate
        self.key = key
        super.init()
    }
}

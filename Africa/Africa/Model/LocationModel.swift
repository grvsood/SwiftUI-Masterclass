//
//  LocationModel.swift
//  Africa
//
//  Created by Sood, Gaurav on 25/04/21.
//

import SwiftUI
import MapKit

struct NationalParkLocation: Codable,Identifiable {
    var id: String
    var name: String
    var image: String
    var latitude: Double
    var longitude: Double
    var location: CLLocationCoordinate2D{
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}

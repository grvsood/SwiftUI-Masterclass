//
//  MapView.swift
//  Africa
//
//  Created by Sood, Gaurav on 25/04/21.
//

import SwiftUI
import MapKit

struct MapView: View {
    // MARK: - Properties
    let locations: [NationalParkLocation] = Bundle.main.decode("locations.json")
    
    @State private var region: MKCoordinateRegion = {
        var mapCordinates = CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599)
        var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
        var mapRegion = MKCoordinateRegion(center: mapCordinates, span: mapZoomLevel)
        
        return mapRegion
    }()
    
    // MARK: - Body
    var body: some View {
        // MARK: - No1 basic Map
        // Map(coordinateRegion: $region)
        
        // MARK: - No2 Advanced Map
        
        Map(coordinateRegion: $region, annotationItems: locations, annotationContent: { item in
            // (A) pin: Old Style, always static
            // MapPin(coordinate: item.location, tint: .accentColor)
            
            // (B) Marker: new style, always static
            // MapMarker(coordinate: item.location, tint: .accentColor)
            
            // (C) Custom Basic Annotations, it could be interactive
            // MapAnnotation(coordinate: item.location){
            //     Image("logo").resizable().scaledToFit().frame(width: 32, height: 32, alignment: .center)
            // }
            
            // (D) Custom Advanced Anotation, it could be interactive
            MapAnnotation(coordinate: item.location) {                MapAnnotationView(location: item)
            }
        })//: MAP
        .overlay(
            HStack(alignment: .center, spacing: 12) {
                Image("compass")
                    .resizable().scaledToFit().frame(width: 48, height: 48, alignment: .center)
                
                VStack(alignment: .leading, spacing: 3){
                    HStack {
                        Text("Latitude:").font(.footnote).fontWeight(.bold).foregroundColor(.accentColor)
                        Spacer()
                        Text("\(region.center.latitude)").font(.footnote).foregroundColor(.white)
                    }
                    Divider()
                    HStack {
                        Text("Longitide:").font(.footnote).fontWeight(.bold).foregroundColor(.accentColor)
                        Spacer()
                        Text("\(region.center.longitude)").font(.footnote).foregroundColor(.white)
                    }
                }
            }//: HStack
            .padding(.vertical, 12)
            .padding(.horizontal, 16)
            .background(Color.black.cornerRadius(8).opacity(0.6))
            .padding(),
            alignment: .top
        )
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}

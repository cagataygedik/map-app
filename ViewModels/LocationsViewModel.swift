//
//  LocationsViewModel.swift
//  map-app
//
//  Created by Celil Çağatay Gedik on 4.10.2022.
//

import SwiftUI
import MapKit

class LocationsViewModel: ObservableObject {
    
    //Loaded location
    @Published var locations: [Location]
    
    //Current location
    @Published var mapLocation: Location {
        didSet {
            updateMapRegion(location: mapLocation)
        }
    }
    
    @Published var mapRegion: MKCoordinateRegion = MKCoordinateRegion()
    let mapSpan = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
    
    init() {
        let locations = LocationsDataService.locations
        self.locations = locations
        self.mapLocation = locations.first!
        
        self.updateMapRegion(location: locations.first!)
    }
    
    private func updateMapRegion(location: Location) {
        withAnimation(.easeInOut) {
            mapRegion = MKCoordinateRegion(center: location.coordinates, span: mapSpan)

        }
    }
    
}

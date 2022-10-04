//
//  LocationsViewModel.swift
//  map-app
//
//  Created by Celil Çağatay Gedik on 4.10.2022.
//

import Foundation

class LocationsViewModel: ObservableObject {
    
    @Published var locations: [Location]
    
    init() {
        let locations = LocationsDataService.locations
        self.locations = locations
    }
    
}

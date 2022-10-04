//
//  map_appApp.swift
//  map-app
//
//  Created by Celil Çağatay Gedik on 4.10.2022.
//

import SwiftUI

@main
struct map_appApp: App {
    
    @StateObject private var vm = LocationsViewModel()
    
    var body: some Scene {
        WindowGroup {
            LocationsView()
                .environmentObject(vm)
        }
    }
}

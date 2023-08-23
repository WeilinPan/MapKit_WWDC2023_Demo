//
//  ContentView.swift
//  MapKit_WWDC2023_Demo
//
//  Created by 潘威霖 on 2023/8/23.
//

import SwiftUI
import MapKit

struct ContentView: View {
    
    @State private var cameraPosition: MapCameraPosition = .region(.userRegion)
    
    var body: some View {
        Map(position: $cameraPosition)
    }
}

extension CLLocationCoordinate2D {
    static var userLocation: CLLocationCoordinate2D {
        return .init(latitude: 25.702, longitude: -80.1959)
    }
}

extension MKCoordinateRegion {
    static var userRegion: MKCoordinateRegion {
        return .init(center: .userLocation, latitudinalMeters: 10000, longitudinalMeters: 10000)
    }
}

#Preview {
    ContentView()
}

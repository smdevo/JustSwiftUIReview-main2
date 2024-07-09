//
//  MapViewB.swift
//  JustSwiftUIReview
//
//  Created by Samandar on 28/05/24.
//

import SwiftUI
import MapKit

struct Mappin: Identifiable {
   
    var id = UUID()
    
    var cordinate: CLLocationCoordinate2D
}


struct MapViewB: View {
    
    @State var region1 = MKCoordinateRegion(center: .init(latitude: 40.5286111111, longitude: 70.9425), latitudinalMeters: 3000, longitudinalMeters: 3000)
    @State var pin: Mappin = Mappin(cordinate: CLLocationCoordinate2D(latitude: 40.5286111111, longitude: 70.9425))
    
    
    var body: some View {
    
        Map(coordinateRegion: $region1, annotationItems: [pin]) { item in
            MapMarker(coordinate: item.cordinate, tint: .red)
        }
        .ignoresSafeArea()
        
       
       
    }
}

struct MapViewB_Previews: PreviewProvider {
    static var previews: some View {
        MapViewB()
    }
}

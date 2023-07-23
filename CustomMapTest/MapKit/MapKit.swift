//
//  MapKit.swift
//  CustomMapTest
//
//  Created by Jacob Lavenant on 7/23/23.
//

import SwiftUI
import MapKit

struct MapKit: View {
    var body: some View {
        MapView(coordinate: CLLocationCoordinate2D(latitude: 37.7749, longitude: -122.4194))
                    .edgesIgnoringSafeArea(.all)
    }
}

struct MapView: UIViewRepresentable {
    var coordinate: CLLocationCoordinate2D

    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }

    func updateUIView(_ view: MKMapView, context: Context) {
        let region = MKCoordinateRegion(center: coordinate, span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
        view.setRegion(region, animated: true)
    }
}

struct MapKit_Previews: PreviewProvider {
    static var previews: some View {
        MapKit()
    }
}

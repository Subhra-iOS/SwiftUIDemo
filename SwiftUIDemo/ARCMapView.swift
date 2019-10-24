//
//  ARCMapView.swift
//  SwiftUIDemo
//
//  Created by Subhra Roy on 24/10/19.
//  Copyright © 2019 Subhra Roy. All rights reserved.
//

import SwiftUI
import MapKit

struct ARCMapView: UIViewRepresentable {
    
    func makeUIView(context: Context) -> MKMapView {
           MKMapView(frame: .zero)
       }

       func updateUIView(_ view: MKMapView, context: Context) {
           let coordinate = CLLocationCoordinate2D(
               latitude: 22.5764753, longitude: 88.4306861)
           let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
           let region = MKCoordinateRegion(center: coordinate, span: span)
           view.setRegion(region, animated: true)
       }
}

struct ARCMapView_Previews: PreviewProvider {
    static var previews: some View {
        ARCMapView()
    }
}

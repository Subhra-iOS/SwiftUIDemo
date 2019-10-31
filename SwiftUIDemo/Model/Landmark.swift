//
//  Landmark.swift
//  SwiftUIDemo
//
//  Created by Subhra Roy on 24/10/19.
//  Copyright © 2019 Subhra Roy. All rights reserved.
//

import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable, Identifiable {
    
    var id : Int
    var name : String
    var category : Category
    var city : String
    var state : String
    var park : String
    var isFavorite : Bool
    var isFeatured : Bool
    fileprivate var imageName : String
    fileprivate var coordinates : Coordinate
    
    enum Category: String, CaseIterable, Codable, Hashable {
        //case featured = "Featured"
        case lakes = "Lakes"
        case rivers = "Rivers"
        case mountains = "Mountains"
    }
    
    var locationCoordinate : CLLocationCoordinate2D{
        CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
    
}

extension Landmark{
    var image : Image {
        ImageStore.shared.image(name: imageName)
    }
}

struct Coordinate : Hashable, Codable {
    var longitude : Double
    var latitude : Double
}



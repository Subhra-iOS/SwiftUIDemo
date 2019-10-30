//
//  ARCLogoImageView.swift
//  SwiftUIDemo
//
//  Created by Subhra Roy on 30/10/19.
//  Copyright © 2019 Subhra Roy. All rights reserved.
//

import SwiftUI

struct ARCLogoImageView: View {
   var circleImage : Image
    var body: some View {
        circleImage
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4.0))
            .shadow(radius: 5.0)
    }
}

struct ARCLogoImageView_Previews: PreviewProvider {
    static var previews: some View {
        ARCLogoImageView(circleImage : Image("turtlerock"))
    }
}

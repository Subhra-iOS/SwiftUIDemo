//
//  ARCLogoImageView.swift
//  SwiftUIDemo
//
//  Created by Subhra Roy on 24/10/19.
//  Copyright © 2019 Subhra Roy. All rights reserved.
//

import SwiftUI

struct ARCLogoImageView: View {
    var body: some View {
        Image("turtlerock_thumb")
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4.0))
            .shadow(radius: 5.0)
    }
}

struct CompLogoImageView_Previews: PreviewProvider {
    static var previews: some View {
        ARCLogoImageView()
    }
}


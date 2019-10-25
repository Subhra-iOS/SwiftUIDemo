//
//  LandmarkDetail.swift
//  SwiftUIDemo
//
//  Created by Subhra Roy on 24/10/19.
//  Copyright © 2019 Subhra Roy. All rights reserved.
//

import SwiftUI

struct LandmarkDetail: View {
    var body: some View {
        VStack {
            ARCMapView()
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)
            ARCLogoImageView()
                .offset(y : -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .center) {
                Text("Animal Park")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                HStack(alignment: .center) {
                    Text("Salt Lake, Sector V")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    Spacer()
                    Text("Kolkata - 700091")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }.padding()
                
                Spacer()
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail()
    }
}

//
//  LandmarkDetail.swift
//  SwiftUIDemo
//
//  Created by Subhra Roy on 24/10/19.
//  Copyright © 2019 Subhra Roy. All rights reserved.
//

import SwiftUI

struct LandmarkDetail: View {
    
    var landmark : Landmark
    
    var body: some View {
        VStack {
            ARCMapView(coordinate: landmark.locationCoordinate)
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)
            ARCLogoImageView(circleImage: landmark.image)
                .offset(y : -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .center) {
                Text(landmark.park)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                HStack(alignment: .center) {
                    Text(landmark.park)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    Spacer()
                    Text(landmark.state)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }.padding()
                
                Spacer()
                
            }
        }
        .navigationBarTitle(Text(verbatim: landmark.name), displayMode: .inline)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarkData[0])
    }
}

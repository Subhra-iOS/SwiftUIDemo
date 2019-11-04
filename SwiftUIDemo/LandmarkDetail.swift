//
//  LandmarkDetail.swift
//  SwiftUIDemo
//
//  Created by Subhra Roy on 24/10/19.
//  Copyright © 2019 Subhra Roy. All rights reserved.
//

import SwiftUI

struct LandmarkDetail: View {
    @EnvironmentObject var userData: UserData
    var landmark : Landmark
    
    var landmarkIndex: Int {
        userData.landmarks.firstIndex(where: { $0.id == landmark.id })!
    }
    
    var body: some View {
        VStack {
            ARCMapView(coordinate: landmark.locationCoordinate)
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)
            ARCLogoImageView(circleImage: landmark.image)
                .offset(y : -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                HStack{
                    Text(landmark.name)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.gray)
                    
                    Button(action: {
                        self.userData.landmarks[self.landmarkIndex].isFavorite.toggle()
                    }) {
                        if  self.userData.landmarks[self.landmarkIndex].isFavorite {
                            Image(systemName: "star.fill")
                            .foregroundColor(Color.yellow)
                        }else{
                            Image(systemName: "star")
                            .foregroundColor(Color.gray)
                        }
                    }
                    
                }
                HStack(alignment: .top) {
                    Text(landmark.park)
                        .font(.caption)
                        .foregroundColor(.gray)
                    Spacer(minLength: 10.0)
                    Text(landmark.state)
                        .font(.caption)
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

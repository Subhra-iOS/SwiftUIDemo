//
//  LandmarkList.swift
//  SwiftUIDemo
//
//  Created by Subhra Roy on 25/10/19.
//  Copyright © 2019 Subhra Roy. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    
    @EnvironmentObject  var userData : UserData
    
    var body: some View {
        NavigationView{
            List {
                Toggle(isOn: $userData.showFavoriteOnly) {
                    Text("Favorites only")
                }
                
                ForEach(self.userData.landmarks){ landmark in
                    
                    if  !self.userData.showFavoriteOnly || landmark.isFavorite {
                        NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                            LandmarkRow(landmark: landmark)
                        }
                    }
                    
                }
            } .navigationBarTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone XS Max"], id: \.self) { deviceName in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
         .environmentObject(UserData())
    }
}

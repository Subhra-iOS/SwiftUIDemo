//
//  LandmarkList.swift
//  SwiftUIDemo
//
//  Created by Subhra Roy on 25/10/19.
//  Copyright © 2019 Subhra Roy. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView{
            List(landmarkData) { landmark in
                NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                    LandmarkRow(landmark: landmark)
                }
            }
        }.navigationBarTitle("Landmarks")
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone XS Max"], id: \.self) { deviceName in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}

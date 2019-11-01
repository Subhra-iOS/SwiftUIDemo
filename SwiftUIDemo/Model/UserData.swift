//
//  UserData.swift
//  SwiftUIDemo
//
//  Created by Subhra Roy on 01/11/19.
//  Copyright © 2019 Subhra Roy. All rights reserved.
//

import SwiftUI
import Combine

final class UserData : ObservableObject{
    @Published var showFavoriteOnly : Bool = true
    @Published var landmarks  = landmarkData
}

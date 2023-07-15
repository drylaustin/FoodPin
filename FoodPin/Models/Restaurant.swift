//
//  Restaurant.swift
//  FoodPin
//
//  Created by DARYL AGUSTIN on 7/13/23.
//

import Foundation

struct Restaurant: Hashable {
    var name: String = ""
    var type: String = ""
    var location: String = ""
    var phone: String = ""
    var description: String = ""
    var image: String = ""
    var isFavorite: Bool = false
    
//    init(name: String, type: String, location: String, image: String, isFavorite: Bool) {
//        self.name = name
//        self.type = type
//        self.location = location
//        self.image = image
//        self.isFavorite = isFavorite
//    }
//    init() {
//        self.init(name: "", type: "", location: "", image: "", isFavorite: false)
//    }
}

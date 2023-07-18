//
//  Restaurant.swift
//  FoodPin
//
//  Created by DARYL AGUSTIN on 7/13/23.
//

import Foundation

struct Restaurant: Hashable {
    enum Rating: String {
        case awesome
        case good
        case okay
        case bad
        case terrible
        
        var image: String {
            switch self {
            case .awesome: return "love"
            case .good: return "cool"
            case .okay: return "happy"
            case .bad: return "sad"
            case .terrible: return "angry"
            }
        }
    }
    
    var name: String = ""
    var type: String = ""
    var location: String = ""
    var phone: String = ""
    var description: String = ""
    var image: String = ""
    var isFavorite: Bool = false
    var rating: Rating?
    
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

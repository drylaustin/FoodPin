//
//  NavigationController.swift
//  FoodPin
//
//  Created by DARYL AGUSTIN on 7/17/23.
//

import UIKit

class NavigationController: UINavigationController {
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return topViewController?.preferredStatusBarStyle ?? .default
        
    }

}

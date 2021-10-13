//
//  NavigationController.swift
//  FoodPin
//
//  Created by DARYL AGUSTIN on 9/13/21.
//

import UIKit

class NavigationController: UINavigationController {

    override var preferredStatusBarStyle: UIStatusBarStyle {
            return topViewController?.preferredStatusBarStyle ?? .default
        }

    }

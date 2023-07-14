//
//  RestaurantDiffableDataSource.swift
//  FoodPin
//
//  Created by DARYL AGUSTIN on 7/13/23.
//

import UIKit

enum Section {
    case all
    
}

class RestaurantDiffableDataSource: UITableViewDiffableDataSource<Section, Restaurant> {
    
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    
}

//
//  RestaturantDetailTextCell.swift
//  FoodPin
//
//  Created by DARYL AGUSTIN on 7/16/23.
//

import UIKit

class RestaurantDetailTextCell: UITableViewCell {
    
    @IBOutlet var descriptionLabel: UILabel! {
    didSet {
    descriptionLabel.numberOfLines = 0
    }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

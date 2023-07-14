//
//  RestaurantTableViewCell.swift
//  FoodPin
//
//  Created by DARYL AGUSTIN on 7/11/23.
//

import UIKit

class RestaurantTableViewCell: UITableViewCell {
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var locationLabel: UILabel!
    @IBOutlet var typeLabel: UILabel!
    @IBOutlet var thumbnailImageView: UIImageView!
    
    
    @IBOutlet var favoriteImageView: UIImageView! 
    
     // Round Images
//    didSet {
//    thumbnailImageView.layer.cornerRadius = thumbnailImageView.bounds.width / 2
//    thumbnailImageView.clipsToBounds = true
//    }
//    }
    
  
  
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.tintColor = .systemYellow
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

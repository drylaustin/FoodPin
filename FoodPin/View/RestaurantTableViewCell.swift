//
//  RestarauntTableViewCell.swift
//  FoodPin
//
//  Created by DARYL AGUSTIN on 9/8/21.
//

import UIKit

class RestaurantTableViewCell: UITableViewCell {
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var locationLabel: UILabel!
    @IBOutlet var typeLabel: UILabel!
    @IBOutlet var thumbnailImageView: UIImageView! {
        didSet {
            thumbnailImageView.layer.cornerRadius = 20.0
            thumbnailImageView.clipsToBounds = true
        }
    }

    @IBOutlet var favoriteImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.tintColor = .systemYellow
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    

}

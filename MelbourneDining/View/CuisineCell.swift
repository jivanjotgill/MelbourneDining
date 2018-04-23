//
//  ProductCellCollectionViewCell.swift
//  ShopApp
//
//  Created by JIVANJOT SINGH on 9/4/18.
//  Copyright © 2018 composer. All rights reserved.
//

import UIKit

class CuisineCell: UICollectionViewCell {
    
    @IBOutlet weak var cuisineImage: UIImageView!
    @IBOutlet weak var cuisineLabel: UILabel!
    
    func updateViews(cuisine:Cuisine) {
        cuisineImage.image = UIImage(named: cuisine.imageName)
        cuisineLabel.text = cuisine.label
    }
}

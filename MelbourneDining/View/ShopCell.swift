//
//  ShopCell.swift
//  MelbourneDining
//
//  Created by Nikk Gill on 4/20/18.
//  Copyright © 2018 composer. All rights reserved.
//

import UIKit

class ShopCell: UITableViewCell{

    @IBOutlet weak var shopImage: UIImageView!
    @IBOutlet weak var shopLabel: UILabel!
    @IBOutlet weak var shopCost: UILabel!
    
    private(set) public var shopCuisine:String = ""
    private(set) public var shopDesciption:String = ""
    private(set) public var shopAddress:String = ""
    private(set) public var shopTelephone:String = ""
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func updateViews(shop: Shop) {
        shopImage.image = UIImage(named: shop.imageName)
        shopLabel.text = shop.name
        shopCost.text = shop.cost
        shopCuisine = shop.shopCuisine
        shopDesciption = shop.shopDesciption
        shopAddress = shop.shopAddress
        shopTelephone = shop.shopTelephone
    }

}

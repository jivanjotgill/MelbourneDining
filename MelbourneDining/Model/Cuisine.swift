//
//  Product.swift
//  ShopApp
//
//  Created by JIVANJOT SINGH on 9/4/18.
//  Copyright © 2018 composer. All rights reserved.
//

import Foundation

struct Cuisine {
    private(set) public var label:String
    private(set) public var imageName:String
    
    init(label:String,imageName:String) {
        self.label = label
        self.imageName = imageName
    }
    
}

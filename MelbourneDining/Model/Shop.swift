//
//  Shop.swift
//  MelbourneDining
//
//  Created by Nikk Gill on 4/20/18.
//  Copyright © 2018 composer. All rights reserved.
//

import Foundation

struct Shop {
    private(set) public var name:String
    private(set) public var imageName:String
    private(set) public var cost:String
    private(set) public var shopCuisine:String
    private(set) public var shopDesciption:String
    private(set) public var shopAddress:String
    private(set) public var shopTelephone:String
    
    init(name:String,imageName:String,cost:String,shopCuisine:String,desc:String,address:String,telephone:String) {
        self.name = name
        self.imageName = imageName
        self.cost = cost
        self.shopCuisine = shopCuisine
        self.shopDesciption = desc
        self.shopAddress = address
        self.shopTelephone = telephone
    }
    
}

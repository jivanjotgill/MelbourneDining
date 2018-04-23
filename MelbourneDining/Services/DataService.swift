//
//  DataService.swift
//  ShopApp
//
//  Created by JIVANJOT SINGH on 9/4/18.
//  Copyright © 2018 composer. All rights reserved.
//

import Foundation

class DataService{
    static let instance = DataService()
    
    
    private let cuisines = [
        Cuisine(label: "Bar",imageName: "food.jpg"),
        Cuisine(label: "Chinese",imageName: "food1.jpg"),
        Cuisine(label: "Indian",imageName: "food2.jpg"),
        Cuisine(label: "Italian",imageName: "food.jpg"),
        Cuisine(label: "Japanese",imageName: "food1.jpg"),
        Cuisine(label: "Mexican",imageName: "food2.jpg"),
        Cuisine(label: "Dessert",imageName: "food.jpg"),
        Cuisine(label: "French",imageName: "food1.jpg")
    ]
    
    private let shops = [
        Shop(name: "Bar1", imageName: "food.jpg", cost: "$50", shopCuisine: "Bar", desc: "blah blah", address: "Craigieburn", telephone: "123123"),
        Shop(name: "Bar2", imageName: "food.jpg", cost: "$20", shopCuisine: "Bar", desc: "blah blah", address: "Craigieburn", telephone: "123123"),
        Shop(name: "Bar3", imageName: "food.jpg", cost: "$30", shopCuisine: "Bar", desc: "blah blah", address: "Craigieburn", telephone: "123123"),
        Shop(name: "Bar4", imageName: "food.jpg", cost: "$40", shopCuisine: "Bar", desc: "blah blah", address: "Craigieburn", telephone: "123123"),
        Shop(name: "Bar5", imageName: "food.jpg", cost: "$10", shopCuisine: "Bar", desc: "blah blah", address: "Craigieburn", telephone: "123123"),
        Shop(name: "Bar6", imageName: "food.jpg", cost: "$20", shopCuisine: "Bar", desc: "blah blah", address: "Craigieburn", telephone: "123123"),
        Shop(name: "Bar7", imageName: "food.jpg", cost: "$80", shopCuisine: "Bar", desc: "blah blah", address: "Craigieburn", telephone: "123123"),
        Shop(name: "Bar8", imageName: "food.jpg", cost: "$100", shopCuisine: "Bar", desc: "blah blah", address: "Craigieburn", telephone: "123123"),
        Shop(name: "Chinese1", imageName: "food.jpg", cost: "$50", shopCuisine: "Chinese", desc: "blah blah", address: "Craigieburn", telephone: "123123"),
        Shop(name: "Chinese2", imageName: "food.jpg", cost: "$20", shopCuisine: "Chinese", desc: "blah blah", address: "Craigieburn", telephone: "123123"),
        Shop(name: "Chinese3", imageName: "food.jpg", cost: "$30", shopCuisine: "Chinese", desc: "blah blah", address: "Craigieburn", telephone: "123123"),
        Shop(name: "Punjabi1", imageName: "food.jpg", cost: "$40", shopCuisine: "Punjabi", desc: "blah blah", address: "Craigieburn", telephone: "123123"),
        Shop(name: "Indian1", imageName: "food.jpg", cost: "$10", shopCuisine: "Indian", desc: "blah blah", address: "Craigieburn", telephone: "123123"),
        Shop(name: "French1", imageName: "food.jpg", cost: "$20", shopCuisine: "French", desc: "blah blah", address: "Craigieburn", telephone: "123123"),
        Shop(name: "Italian1", imageName: "food.jpg", cost: "$80", shopCuisine: "Italian", desc: "blah blah", address: "Craigieburn", telephone: "123123"),
        Shop(name: "Dessert1", imageName: "food.jpg", cost: "$100", shopCuisine: "Dessert", desc: "blah blah", address: "Craigieburn", telephone: "123123")
    ]
  
    
    func getCuisines() -> [Cuisine] {
        return cuisines
    }
    
    func  getShops(title: String) -> [Shop] {
        
        var a = [Shop]()
        for i in shops {
            if(i.shopCuisine == title)
            {
                a.append(i)
            }
        }
        
        return a
    }
    func getShopByName(name: String) -> Shop
    {
        for e in shops
        {
            if(e.name == name)
            {
                return e
            }
            
        }
        return shops[0]
        
    }
    
}


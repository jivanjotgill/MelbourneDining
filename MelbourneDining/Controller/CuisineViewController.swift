//
//  CuisineViewController.swift
//  ShopApp
//
//  Created by JIVANJOT SINGH on 9/4/18.
//  Copyright © 2018 composer. All rights reserved.
//

import UIKit

class CuisineViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource{
    
    
   
    @IBOutlet weak var cuisineCollectionView: UICollectionView!
    private(set) public var cuisine = [Cuisine]()
    private(set) public var cuisineLabel = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        cuisineCollectionView.dataSource = self
        cuisineCollectionView.delegate = self
        
        let itemSize = UIScreen.main.bounds.width/2 - 3
        
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsetsMake(20, 0, 10, 0)
        layout.itemSize = CGSize(width: itemSize, height: itemSize + 40)
        layout.minimumInteritemSpacing = 3
        layout.minimumLineSpacing = 3
        
        cuisineCollectionView.collectionViewLayout = layout
    }

    func  initProducts() {
        cuisine = DataService.instance.getCuisines()
       // navigationItem.title = category.title
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cuisine.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cuisineCell", for: indexPath) as? CuisineCell{
            
            let cuisine1 = cuisine[indexPath.row]
            cell.updateViews(cuisine: cuisine1)
            return cell
        }else
        {
       
        return CuisineCell()
        }
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let cuisine1 = DataService.instance.getCuisines()[indexPath.row]
        cuisineLabel = cuisine1.label
        performSegue(withIdentifier: "shopViewSegue", sender: cuisine1)
            
        }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let shopController1 = segue.destination as? ShopTableViewController
        shopController1?.setCuisineName(name: cuisineLabel)
        
        let barButtonItem = UIBarButtonItem()
        barButtonItem.title = "Cuisine"
        navigationItem.backBarButtonItem = barButtonItem
        navigationItem.title = cuisineLabel
       
        
        
    }
    
}

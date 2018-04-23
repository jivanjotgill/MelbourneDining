//
//  ShopTableViewController.swift
//  MelbourneDining
//
//  Created by Nikk Gill on 4/23/18.
//  Copyright © 2018 composer. All rights reserved.
//

import UIKit

class ShopTableViewController: UITableViewController {

    @IBOutlet var shopView: UITableView!
    private(set) public var shops = [Shop]()
    private(set) public var cuisineName:String = ""
    private(set) public var s = Shop(name: "",imageName: "",cost: "", shopCuisine: "", desc: "", address: "", telephone: "")
    override func viewDidLoad() {
        super.viewDidLoad()
        shopView.delegate = self
        shopView.dataSource = self
        
    }

    func setCuisineName(name:String)
    {
        cuisineName = name
        shops = DataService.instance.getShops(title: cuisineName)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return shops.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "shopCell") as? ShopCell
        {
            let shop1 = DataService.instance.getShops(title: cuisineName)[indexPath.row]
            cell.updateViews(shop: shop1)
            return cell
        }else{
            return ShopCell()
        }
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            performSegue(withIdentifier: "shopDetailSegue", sender: cuisineName)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let detailController = segue.destination as? shopDetailViewController
        
        
        detailController?.setDetails(name: s.name, imageName: s.imageName, cost: s.cost, shopCuisine: s.shopCuisine, desc: s.shopDesciption, address: s.shopAddress, telephone: s.shopTelephone)
        
        
        let barButtonItem = UIBarButtonItem()
        barButtonItem.title = cuisineName
        navigationItem.backBarButtonItem = barButtonItem
        navigationItem.title = cuisineName
        
        
        
    }
    

}

//
//  shopDetailViewController.swift
//  MelbourneDining
//
//  Created by Nikk Gill on 4/23/18.
//  Copyright © 2018 composer. All rights reserved.
//

import UIKit

class shopDetailViewController: UIViewController,UIApplicationDelegate {

    
    @IBOutlet weak var detailImage: UIImageView!
    @IBOutlet weak var detailName: UILabel!
    
    @IBOutlet weak var detailDescription: UILabel!
    @IBOutlet weak var detailAddress: UILabel!
    
    @IBOutlet weak var detailTelephone: UILabel!
    @IBOutlet weak var detailCuisine: UILabel!
    @IBOutlet weak var detailCost: UILabel!
    
    private(set) public var cuisineName = ""
    private(set) public var sName = ""
    private(set) public var sImage = ""
    private(set) public var sCost = ""
    private(set) public var sDesc = ""
    private(set) public var sAddress = ""
    private(set) public var sTelephone = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        
        detailImage.image = UIImage(named: "food.jpg")
        detailName.text = "Restorant"
        print(sAddress)
        print(detailAddress.)
        detailAddress.text = sAddress
        print(detailAddress.text!)
        // Do any additional setup after loading the view.
    }

    func setDetails(name:String,imageName:String,cost:String,shopCuisine:String,
                    desc:String,address:String,telephone:String)
    {
        cuisineName = shopCuisine
        sName = name
        sImage = imageName
        sCost = cost
        sDesc = desc
        sAddress = address
        sTelephone = telephone
        
    }

}

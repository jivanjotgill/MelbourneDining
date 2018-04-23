//
//  ViewController.swift
//  MelbourneDining
//
//  Created by JIVANJOT SINGH on 9/4/18.
//  Copyright © 2018 composer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var getStartedButton: BorderButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func pressGetStarted(){
        let cuisines = DataService.instance.getCuisines()
        performSegue(withIdentifier: "CuisineViewSegue", sender: cuisines)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let cuisineViewController = segue.destination as? CuisineViewController{
            print("Cuisine seque prepare")
            let barButtonItem = UIBarButtonItem()
            barButtonItem.title = "bacl"
            navigationItem.backBarButtonItem = barButtonItem
            
            cuisineViewController.initProducts()
            
        }
    
    
    }

}


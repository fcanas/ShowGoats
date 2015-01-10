//
//  ViewController.swift
//  Show
//
//  Created by Fabian Canas on 1/8/15.
//  Copyright (c) 2015 Fabián Cañas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        Goat.getGoats ( { (results) -> Void in
            if let goats = results? {
                println(goats)
                
                for goat in goats {
                    goat.food = "Cashews"
                }
                
            }
        })
    }
}


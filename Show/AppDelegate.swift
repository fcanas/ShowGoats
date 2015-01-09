//
//  AppDelegate.swift
//  Show
//
//  Created by Fabian Canas on 1/8/15.
//  Copyright (c) 2015 Fabián Cañas. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        let keys = ShowKeys()
        Parse.setApplicationId(keys.parseAppID(), clientKey: keys.parseClientKey())
        
        return true
    }

}


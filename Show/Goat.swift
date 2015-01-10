//
//  Goat.swift
//  Show
//
//  Created by Fabian Canas on 1/10/15.
//  Copyright (c) 2015 Fabián Cañas. All rights reserved.
//

import Foundation

class Goat {
    private let parseObject: PFObject
    
    init(){
        parseObject = PFObject(className: "Goat")
    }
    
    init(_ parseObject: PFObject) {
        self.parseObject = parseObject
    }
    
    var food: String  = "grass" {
        didSet {
            parsify(food)
        }
    }
    
    class func getGoats(completion:([Goat]?) -> Void ) {
        let query = PFQuery(className: "Goat")
        query.findObjectsInBackgroundWithBlock { (r, error) -> Void in
            if let results = r as? [PFObject]{
                completion(results.map({ p in Goat(p) }))
            }
            completion(nil)
        }
    }
    
    func parsify(value: AnyObject, forKey key: String = __FUNCTION__) {
        parseObject.setValue(value, forKey: key)
        parseObject.saveEventually()
    }
}
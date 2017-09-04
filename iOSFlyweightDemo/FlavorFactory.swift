//
//  FlavorFactory.swift
//  iOSFlyweightDemo
//
//  Created by huangjianwu on 2017/9/4.
//  Copyright © 2017年 huangjianwu. All rights reserved.
//

import UIKit

class FlavorFactory: NSObject {
    var flavors:[String:Order] = [:]
    
    func totalFlavorsMade() -> Int {
        return flavors.count
    }
    
    func order(_ key:String) ->  Order{
        if flavors.index(forKey: key) == nil {
            flavors[key] = Flavor.init(origin: key)
        }
        
        return flavors[key]!
    }
}

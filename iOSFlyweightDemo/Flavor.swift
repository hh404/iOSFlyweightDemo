//
//  Flavor.swift
//  iOSFlyweightDemo
//
//  Created by huangjianwu on 2017/9/4.
//  Copyright © 2017年 huangjianwu. All rights reserved.
//

import UIKit

class Flavor: CustomStringConvertible,Order {
    var _flavor = ""
    
    init(origin: String) {
        self._flavor = origin
    }
    
    func serve(_ table: Table) {
        print("将",table.number)
    }
    
    func flavor() -> String
    {
        return _flavor
    }
    
    var description: String {
        get {
            return _flavor
        }
    }
    
}

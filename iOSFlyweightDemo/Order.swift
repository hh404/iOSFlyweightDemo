//
//  Order.swift
//  iOSFlyweightDemo
//
//  Created by huangjianwu on 2017/9/4.
//  Copyright © 2017年 huangjianwu. All rights reserved.
//

import UIKit

protocol Order {
    func serve(_ table:Table)
    func flavor() -> String
}

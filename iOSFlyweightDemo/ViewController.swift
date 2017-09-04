//
//  ViewController.swift
//  iOSFlyweightDemo
//
//  Created by huangjianwu on 2017/9/4.
//  Copyright © 2017年 huangjianwu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var ordersMade:Int = 0
    var flavorFactory:FlavorFactory = FlavorFactory()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        takeOrder("Black Coffee");
        takeOrder("Capucino");
        takeOrder("Espresso");
        takeOrder("Capucino");
        takeOrder("Espresso");
        takeOrder("Black Coffee");
        takeOrder("Espresso");
        takeOrder("Espresso");
        takeOrder("Black Coffee");
        takeOrder("Capucino");
        takeOrder("Capucino");
        takeOrder("Black Coffee");
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func takeOrder(_ aFlavor:String) {
        let order:Order = flavorFactory.order(aFlavor)
        ordersMade += 1
        order.serve(Table(origin: ordersMade))
    }

}


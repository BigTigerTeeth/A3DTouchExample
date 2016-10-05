//
//  ViewController.swift
//  TouchTest1
//
//  Created by luckyxmobile on 16/10/5.
//  Copyright © 2016年 luckyxmobile. All rights reserved.
//

import UIKit

class ViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        if traitCollection.forceTouchCapability == .available{
            let bundleID = Bundle.main.bundleIdentifier
            let icon0 =  UIApplicationShortcutIcon.init(type: .add)
            let item0 = UIApplicationShortcutItem.init(type: "\(bundleID).openNewShop", localizedTitle: "New shop", localizedSubtitle: nil, icon: icon0, userInfo: nil)
            
            let icon1 = UIApplicationShortcutIcon.init(type: .cloud)
            let item1 = UIApplicationShortcutItem.init(type: "\(bundleID).openBag", localizedTitle: "into bag of xiaodingdang", localizedSubtitle: nil, icon: icon1, userInfo: nil)
            UIApplication.shared.shortcutItems = [item0, item1]
        }
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


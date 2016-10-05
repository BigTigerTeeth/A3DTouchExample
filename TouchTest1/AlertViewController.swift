//
//  AlertViewController.swift
//  TouchTest1
//
//  Created by luckyxmobile on 16/10/5.
//  Copyright © 2016年 luckyxmobile. All rights reserved.
//

import UIKit

class AlertViewController: UIViewController{

    lazy var previewActions: [UIPreviewActionItem] = {
        let deleteAction = UIPreviewAction.init(title: "DELETE", style: .default, handler: {_,_ in })
        let doneAction = UIPreviewAction.init(title: "DONE", style: .default, handler: {_,_ in })
        return [deleteAction, doneAction]
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    
    }
    
    override var previewActionItems : [UIPreviewActionItem] {
        return previewActions
    }
}

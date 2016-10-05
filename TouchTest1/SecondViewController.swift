//
//  SecondViewController.swift
//  TouchTest1
//
//  Created by luckyxmobile on 16/10/5.
//  Copyright © 2016年 luckyxmobile. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UIViewControllerPreviewingDelegate {

    @IBOutlet weak var openButton: UIButton!
    
    lazy var previewActions: [UIPreviewActionItem] = {
        let deleteAction = UIPreviewAction.init(title: "DELETE", style: .default, handler: {_,_ in })
        let doneAction = UIPreviewAction.init(title: "DONE", style: .default, handler: {_,_ in })
        return [deleteAction, doneAction]
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if traitCollection.forceTouchCapability == .available{
            registerForPreviewing(with: self, sourceView: view)
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func previewingContext(_ previewingContext: UIViewControllerPreviewing, viewControllerForLocation location: CGPoint) -> UIViewController?{
        let storyBoard = UIStoryboard.init(name: "Main", bundle: Bundle.main)
        let vc = storyBoard.instantiateViewController(withIdentifier: "detailViewController")
        vc.preferredContentSize = CGSize.init(width: 200, height: 300)
        return  openButton.frame.contains(location) ? vc : nil
    }
    
    func previewingContext(_ previewingContext: UIViewControllerPreviewing, commit viewControllerToCommit: UIViewController){
        showDetailViewController(viewControllerToCommit, sender: self)
    }
    
    override var previewActionItems : [UIPreviewActionItem] {
        return previewActions
    }
    
    func touchesMoved(touches: NSSet, withEvent event: UIEvent) {
        let touch1: UITouch = touches.allObjects[0] as! UITouch
        //var location: CGPoint = touch1.location(in: self)
        print( "\(touch1)")
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

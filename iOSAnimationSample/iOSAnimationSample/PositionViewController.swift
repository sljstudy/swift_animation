//
//  PositionViewController.swift
//  iOSAnimationSample
//
//  Created by 宋立君 on 16/1/2.
//  Copyright © 2016年 宋立君. All rights reserved.
//

import UIKit

class PositionViewController: UIViewController {

     @IBOutlet weak var blueSquare: UIView!
    @IBOutlet weak var redSquare: UIView!
    @IBOutlet weak var thereSquare: UIView!
    @IBOutlet weak var rightConstr: NSLayoutConstraint!
    @IBOutlet weak var redFootConstr: NSLayoutConstraint!
    @IBOutlet weak var redTopconstr: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
    
        // 使用layout 动画
        self.view.layoutIfNeeded()
        UIView.animateWithDuration(1) { () -> Void in
            self.blueSquare.center.x = self.rightConstr.constant + self.blueSquare.center.x
        }
        
        UIView.animateWithDuration(1, delay: 0.5, options: [.Repeat,.Autoreverse], animations: { () -> Void in
            self.redSquare.center.y = self.redFootConstr.constant + (self.redSquare.bounds.height / 2)
            
            
            }) { (in_sockinfo) -> Void in
                self.redSquare.center.y = self.redFootConstr.constant - self.redTopconstr.constant

        }
        
        // 不使用layout 动画
        
//        UIView.animateWithDuration(1) { () -> Void in
//            
//            self.blueSquare.center.x = self.view.bounds.width - self.blueSquare.center.x
//            
//            
//        }
//        UIView.animateWithDuration(1, delay: 0.5, options: [.Repeat,.Autoreverse], animations: { () -> Void in
//            self.redSquare.center.y = self.view.bounds.height - self.redSquare.center.y
//            
//            
//            
//            }) { (in_sockinfo) -> Void in
//                self.redSquare.center.y = self.view.bounds.height - self.redSquare.center.y
//                
//                
//                
//        }
        
        
        UIView.animateWithDuration(1, delay: 1, options: [], animations: {
            self.thereSquare.center.x = self.view.bounds.width - self.thereSquare.center.x
            
            self.thereSquare.center.y = self.view.bounds.height - self.thereSquare.center.y
            
            }, completion: nil)
        
    }
    


}

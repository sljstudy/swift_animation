//
//  ColorViewController.swift
//  iOSAnimationSample
//
//  Created by 宋立君 on 16/1/2.
//  Copyright © 2016年 宋立君. All rights reserved.
//

import UIKit

class ColorViewController: UIViewController {
    
     @IBOutlet weak var colorSquare: UIView!
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
        
        UIView.animateWithDuration(1) { () -> Void in
            
            self.colorSquare.backgroundColor = UIColor.redColor()
        }
        
    
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

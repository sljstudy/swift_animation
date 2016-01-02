//
// RotationViewController.swift
// iOSAnimationSample
//
// Created by 宋立君 on 16/1/2.
// Copyright © 2016年 宋立君. All rights reserved.
//

import UIKit

class RotationViewController: UIViewController {
	
	@IBOutlet weak var greedSquare: UIView!
	override func viewDidLoad() {
		super.viewDidLoad()
		
		// Do any additional setup after loading the view.
	}
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	func spin() {
		
		
		UIView.animateWithDuration(1, delay: 0 , options: [.CurveLinear], animations: {
				
				UIView.animateWithDuration(1) {
					self.greedSquare.transform = CGAffineTransformRotate(self.greedSquare.transform, CGFloat(M_PI))
					
				}
				
				
			}) {(finished) -> Void in
			
			self.spin()
			
		}
	}
	
	
	override func viewDidAppear(animated: Bool) {
		super.viewDidAppear(animated)
		self.spin()
		
		
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

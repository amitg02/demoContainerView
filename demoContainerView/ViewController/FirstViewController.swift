//
//  ViewController.swift
//  demoContainerView
//
//  Created by Atal Bansal on 01/07/16.
//  Copyright © 2016 Atal Bansal. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
	
	@IBOutlet weak var containerView: UIView!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	@IBAction func switchContainerView(sender:UIButton){
		var newController:UIViewController
		if sender.tag == 0 {
			sender.tag = 1
			let   SCVCnewController = storyboard?.instantiateViewControllerWithIdentifier("SecondChildViewController") as! SecondChildViewController
			SCVCnewController.parentMsg = "SecondChildViewController"
			newController = SCVCnewController
			
		} else {
			sender.tag = 0
			let  CVCnewController = storyboard?.instantiateViewControllerWithIdentifier("ChildViewController") as! ChildViewController
			CVCnewController.parentMsg = "SecondChildViewController"
			newController = CVCnewController
		}
	 self.switchingInContainerView(newController)
		
	}
	
	func switchingInContainerView(newController:UIViewController) {
		let oldController = childViewControllers.last! as UIViewController
		
		oldController.willMoveToParentViewController(nil)
		addChildViewController(newController)
		newController.view.frame = oldController.view.frame
		
		transitionFromViewController(oldController, toViewController: newController, duration: 0.25, options: .TransitionCrossDissolve, animations:{ () -> Void in
			// nothing needed here
			}, completion: { (finished) -> Void in
				oldController.removeFromParentViewController()
				newController.didMoveToParentViewController(self)
		})

	}
	override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
		if segue.identifier == "TransitionToSecondViewController" {
			let secondViewController = segue.destinationViewController  as! SecondViewController
			secondViewController.nameString = "nameString"
			// Pass data to secondViewController before the transition
		}
		else if segue.identifier == "myEmbeddedSegue" {
			let childViewController = segue.destinationViewController as! ChildViewController
			childViewController.parentMsg = "callFromFirstVC"
			// Now you have a pointer to the child view controller.
			// You can save the reference to it, or pass data to it.
		}
	}
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}


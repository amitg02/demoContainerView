//
//  SecondViewController.swift
//  demoContainerView
//
//  Created by Atal Bansal on 01/07/16.
//  Copyright © 2016 Atal Bansal. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

	var nameString:String = String()
    override func viewDidLoad() {
        super.viewDidLoad()
		print(nameString)
        // Do any additional setup after loading the view.
    }
	override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
		if segue.identifier == "secondEmbeddedSegue" {
			let childViewController = segue.destinationViewController as! ChildViewController
			childViewController.parentMsg = "callFromSecondVC"
			// Now you have a pointer to the child view controller.
			// You can save the reference to it, or pass data to it.
		}
	}
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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

//
//  ChildViewController.swift
//  demoContainerView
//
//  Created by Atal Bansal on 01/07/16.
//  Copyright © 2016 Atal Bansal. All rights reserved.
//

import UIKit

class ChildViewController: UIViewController {

	@IBOutlet weak var msgLbl:UILabel!
	var parentMsg:String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
		msgLbl?.text = "FirstChildVC:\(parentMsg)"
        // Do any additional setup after loading the view.
    }
	
	@IBAction func SubmitBtnAction(sender:UIButton) {
		let alertController = UIAlertController(title: "Default Style", message: "A standard alert.", preferredStyle: .Alert)
		
		let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel) { (action) in
			// ...
		}
		alertController.addAction(cancelAction)
		
		let OKAction = UIAlertAction(title: "OK", style: .Default) { (action) in
			// ...
		}
		alertController.addAction(OKAction)
		
		self.presentViewController(alertController, animated: true) {
			// ...
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

//
//  SecondChildViewController.swift
//  demoContainerView
//
//  Created by Atal Bansal on 01/07/16.
//  Copyright © 2016 Atal Bansal. All rights reserved.
//

import UIKit

class SecondChildViewController: UIViewController {

	@IBOutlet weak var msgLbl:UILabel!
	var parentMsg:String = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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

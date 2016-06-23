//
//  DetailsViewController.swift
//  tableView
//
//  Created by JaminPie on 22/06/2016.
//  Copyright © 2016 jaminpie. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    var college: College?
    @IBOutlet weak var collegeNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if self.college != nil {
            self.collegeNameLabel.text = college!.name
        }
        else {
            self.collegeNameLabel.text = "Uh oh"
        }
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

//
//  DetailsViewController.swift
//  tableView
//
//  Created by JaminPie on 22/06/2016.
//  Copyright © 2016 jaminpie. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    var thisName: String?
    @IBOutlet weak var collegeName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if self.collegeName != nil {
            self.collegeName.text = thisName
        }
        else {
            self.collegeName.text = "Uh oh"
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

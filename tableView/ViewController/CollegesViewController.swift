//
//  CollegesViewController.swift
//  tableView
//
//  Created by JaminPie on 22/06/2016.
//  Copyright © 2016 jaminpie. All rights reserved.
//

import UIKit

class CollegesViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var collegeName: [String] = ["College 1", "College 2", "College 3", "College 4"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension CollegesViewController : UITableViewDataSource {
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return collegeName.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell:UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        
//        if indexPath.row == 0 {
//            cell.textLabel?.text = "College 1"
//        } else if indexPath.row == 1 {
//            cell.textLabel?.text = "College 2"
//        } else if indexPath.row == 2 {
//            cell.textLabel?.text = "College 3"
//        }
        let name: String = collegeName[indexPath.row]
        cell.textLabel?.text = name
        
        return cell
    }
}

extension CollegesViewController : UITableViewDelegate {
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let name: String = collegeName[indexPath.row]
        
        if let detailsVC: DetailsViewController = self.storyboard?.instantiateViewControllerWithIdentifier("DetailsViewController") as? DetailsViewController{
            detailsVC.thisName = name
            self.navigationController?.pushViewController(detailsVC, animated: true)
        }
    }
}




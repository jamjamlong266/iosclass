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
    
    //var collegeName: [String] = ["College 1", "College 2", "College 3", "College 4"]
    var colleges: [College] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupCollegeName()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setupCollegeName() {
        colleges = []
        
        let names: [String] = ["The One Academy","Sunway Uni", "APU"]
        
        for collegeName in names {
            let college: College = College(name: collegeName)
            colleges.append(college)
        }
    }

}

extension CollegesViewController : UITableViewDataSource {
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colleges.count
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
        let college: College = colleges[indexPath.row]
        cell.textLabel?.text = college.name
        
        return cell
    }
}

extension CollegesViewController : UITableViewDelegate {
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let college: College = colleges[indexPath.row]
        
        if let detailsVC: DetailsViewController = self.storyboard?.instantiateViewControllerWithIdentifier("DetailsViewController") as? DetailsViewController{
            detailsVC.thisName = college.name
            self.navigationController?.pushViewController(detailsVC, animated: true)
        }
    }
}




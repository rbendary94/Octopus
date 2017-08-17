//
//  BalanceTableViewController.swift
//  Octopus
//
//  Created by Nesreen Mamdouh on 8/17/17.
//  Copyright © 2017 EverestMinds. All rights reserved.
//

import UIKit

class BalanceTableViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        var cell :UITableViewCell!
        if (indexPath.row == 0) {
           
            cell = tableView.dequeueReusableCell(withIdentifier: "HeaderBalanceCell") as! HeaderBalanceTableViewCell
        }
        else{
           
            cell = tableView.dequeueReusableCell(withIdentifier: "BalanceCell") as! BalanceTableViewCell
            
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
//    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        let  headerCell = tableView.dequeueReusableCell(withIdentifier: "HeaderBalanceCell") as! HeaderBalanceTableViewCell
//        
//        return headerCell
//    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
       
        if(indexPath.row == 0){
            return 80.0
        }
        
        return 240.0
    }
//    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
//        return 100.0
//    }


}

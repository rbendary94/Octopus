//
//  LawyerReviewsViewController.swift
//  Octopus
//
//  Created by Rana on 8/20/17.
//  Copyright © 2017 EverestMinds. All rights reserved.
//

import UIKit

class LawyerReviewsViewController: UIViewController, UITableViewDelegate , UITableViewDataSource {

    
    @IBOutlet var tableViewHeight: NSLayoutConstraint!
    @IBOutlet weak var tableView: UITableView!
    let reviews = ["Review 1", "Review 2" , "Review 3"]
//    @IBOutlet weak var addFloatingButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell =  tableView.dequeueReusableCell(withIdentifier: "LawyerReviewCell") as! LawyerReviewTableViewCell
//        cell.reviewLabel.text = reviews[indexPath.row]
        cell.authorLabel.text = "Posted by Anonymous"
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return reviews.count
    }
   
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {

        let screenHeight: CGFloat = UIScreen.main.bounds.height
        return screenHeight / 4.0
    }

}

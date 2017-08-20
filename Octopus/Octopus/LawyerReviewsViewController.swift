//
//  LawyerReviewsViewController.swift
//  Octopus
//
//  Created by Rana on 8/20/17.
//  Copyright © 2017 EverestMinds. All rights reserved.
//

import UIKit

class LawyerReviewsViewController: UIViewController, UITableViewDelegate , UITableViewDataSource {

    
    let reviews = ["Review 1", "Review 2" , "Review 3"]
    @IBOutlet weak var addFloatingButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        addFloatingButton.layer.cornerRadius = 0.5 * addFloatingButton.bounds.size.width
        self.view.addSubview(addFloatingButton)
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

    @IBAction func showPopUp(_ sender: Any) {
        
        let popOverVC = UIStoryboard(name: "Lawyer", bundle: nil).instantiateViewController(withIdentifier: "AddButtonsPopUp") as! AddButtonsPopUpViewController
        self.addChildViewController(popOverVC)
        popOverVC.view.frame = self.view.frame
        self.view.addSubview(popOverVC.view)
        popOverVC.didMove(toParentViewController: self)
    }
}

//
//  LawyerHomeViewController.swift
//  Octopus
//
//  Created by Rana on 8/17/17.
//  Copyright © 2017 EverestMinds. All rights reserved.
//

import UIKit
import STRatingControl

class LawyerHomeViewController: UIViewController, UITableViewDelegate , UITableViewDataSource {

//    @IBOutlet weak var ratingControl: STRatingControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        if(indexPath.row == 0){
            
           let cell = tableView.dequeueReusableCell(withIdentifier: "HeaderLawyerProfileCell") as! LawyerHomeTableViewCell
            return cell

        }
        else if(indexPath.row == 1){
           let cell = tableView.dequeueReusableCell(withIdentifier: "LawyerTotalCasesCell") as! LawyerTotalCasesTableViewCell
            return cell

        }
        else if(indexPath.row == 2) {
            let cell = tableView.dequeueReusableCell(withIdentifier: "LawyerCardCell") as! LawyerCardTableViewCell
            cell.setNeedsLayout()

            return cell
            
            
        }else {
        
            let cell = tableView.dequeueReusableCell(withIdentifier: "LawyerQuestionCell") as! LawyerQuestionTableViewCell
                cell.setNeedsLayout()
            return cell
        
        
        }
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7
    }
    
  
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if(indexPath.row == 1)
        {
            return 80.0
        }
     
        
        return 280.0
    }
    
//    override func viewWillLayoutSubviews() {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "LawyerCardCell") as! LawyerCardTableViewCell
//        
//        let border = CALayer()
//        border.borderColor = UIColor.yellow.cgColor
//        border.borderWidth = 15
//        border.frame = CGRect(x: 0,y: 0,width: 5,height: cell.cardView.bounds.height)
//        cell.cardView.layer.addSublayer(border)
//    }
}

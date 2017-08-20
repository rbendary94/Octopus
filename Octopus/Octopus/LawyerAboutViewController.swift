//
//  LawyerAboutViewController.swift
//  Octopus
//
//  Created by Nesreen Mamdouh on 8/20/17.
//  Copyright © 2017 EverestMinds. All rights reserved.
//

import UIKit

class LawyerAboutViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AboutCell") as! LawyerAboutTableViewCell
        
        if(indexPath.row == 0){
            
            cell.infoLabel.text = "Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem"

        }
        else if(indexPath.row == 1){
            cell.infoLabel.text = "Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem"

        }
        else{
            
            cell.infoLabel.text = "Lorem Lorem "

        }
        return cell
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
      
        let cell = tableView.dequeueReusableCell(withIdentifier: "AboutCell") as! LawyerAboutTableViewCell
        
        return cell.infoLabel.frame.size.height
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

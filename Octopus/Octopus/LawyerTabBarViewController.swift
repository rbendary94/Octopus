//
//  LawyerTabBarViewController.swift
//  Octopus
//
//  Created by Nesreen Mamdouh on 8/16/17.
//  Copyright © 2017 EverestMinds. All rights reserved.
//


import UIKit
import ESTabBarController

class LawyerTabBarViewController: UIViewController {


    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tabBarController = ESTabBarController.init(tabIcons: [#imageLiteral(resourceName: "chatIcon-2x"),#imageLiteral(resourceName: "home-icon"),#imageLiteral(resourceName: "home-icon"),#imageLiteral(resourceName: "home-icon"),#imageLiteral(resourceName: "home-icon")])
 
        
        let storyboard = UIStoryboard(name: "Lawyer", bundle: nil)
        let controllerOne = storyboard.instantiateViewController(withIdentifier: "LawyerHomeView")
        let controllerTwo = storyboard.instantiateViewController(withIdentifier: "BalanceTableView")

        // Add child view controller.
        
        
        self.addChildViewController(tabBarController!)
        self.view.addSubview((tabBarController?.view)!)
        tabBarController?.view.frame = self.view.bounds
        tabBarController?.didMove(toParentViewController: self)

        
        tabBarController?.setView(controllerOne, at: 0)
        tabBarController?.setView(controllerTwo, at: 1)
        tabBarController?.setView(controllerOne, at: 2)
//        tabBarController?.setView(controllerTwo, at: 3)
//        tabBarController?.setView(controllerOne, at: 4)
        
        tabBarController?.selectedColor = UIColor.init(red: 239/255.0, green: 191/255.0, blue: 37/255.0, alpha: 1.0)
        
        tabBarController?.buttonsBackgroundColor =   UIColor.init(red: 57/255.0, green: 25/255.0, blue: 13/255.0, alpha: 1.0)
        tabBarController?.selectionIndicatorHeight = 2
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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

//
//  SignInViewController.swift
//  Octopus
//
//  Created by Nesreen Mamdouh on 8/15/17.
//  Copyright © 2017 EverestMinds. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {

    
    @IBOutlet var forgotPasswordLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(showPopUp))
        forgotPasswordLabel.isUserInteractionEnabled=true
        forgotPasswordLabel.addGestureRecognizer(tapGesture)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func showPopUp(_ sender: Any) {
        
        let popOverVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "PopUpID") as! PopUpViewController
        self.addChildViewController(popOverVC)
        popOverVC.view.frame = self.view.frame
        self.view.addSubview(popOverVC.view)
        popOverVC.didMove(toParentViewController: self)

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

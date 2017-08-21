//
//  AddButtonsPopUpViewController.swift
//  Octopus
//
//  Created by Nesreen Mamdouh on 8/20/17.
//  Copyright © 2017 EverestMinds. All rights reserved.
//

import UIKit

class AddButtonsPopUpViewController: UIViewController {

    @IBOutlet var closeBtn: UIButton!
    @IBOutlet var writeReviewBtn: UIButton!
    @IBOutlet var postCaseBtn: UIButton!
    @IBOutlet var askQuestionBtn: UIButton!
    var closePopUp = false
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let btnArray = [closeBtn,writeReviewBtn,postCaseBtn,askQuestionBtn]
        
        for btn in btnArray{
            btn?.layer.cornerRadius = (btn?.bounds.size.width)! * 0.5
        }
        
        self.view.backgroundColor = UIColor.black.withAlphaComponent(0.6)
        self.showAnimate()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func closePopUp(_ sender: Any) {
        
        self.removeAnimate()
        closePopUp = true
        
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

//
//  LawyerProfileViewController.swift
//  Octopus
//
//  Created by Rana on 8/20/17.
//  Copyright © 2017 EverestMinds. All rights reserved.
//

import UIKit
import FloatRatingView

class LawyerProfileViewController: UIViewController {

    @IBOutlet weak var backgroundImageView: UIView!
    @IBOutlet weak var profilePicImg: UIImageView!
    @IBOutlet weak var fullName: UILabel!
    @IBOutlet weak var ratingController: FloatRatingView!
    @IBOutlet weak var totalCasesSolvedLabel: UILabel!
    @IBOutlet weak var totalQuestionsAnsweredLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.ratingController.contentMode = UIViewContentMode.scaleAspectFit
        self.backgroundImageView.layer.cornerRadius = 0.5 * backgroundImageView.bounds.size.width
        self.profilePicImg.setRounded()

        // Do any additional setup after loading the view.
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

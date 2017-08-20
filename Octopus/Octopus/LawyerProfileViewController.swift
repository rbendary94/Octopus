//
//  LawyerProfileViewController.swift
//  Octopus
//
//  Created by Rana on 8/20/17.
//  Copyright © 2017 EverestMinds. All rights reserved.
//

import UIKit
import FloatRatingView
import PageMenu

class LawyerProfileViewController: UIViewController,CAPSPageMenuDelegate {

    @IBOutlet var profileView: UIView!
    @IBOutlet weak var backgroundImageView: UIView!
    @IBOutlet weak var profilePicImg: UIImageView!
    @IBOutlet weak var fullName: UILabel!
    @IBOutlet weak var ratingController: FloatRatingView!
    @IBOutlet weak var totalCasesSolvedLabel: UILabel!
    @IBOutlet weak var totalQuestionsAnsweredLabel: UILabel!
    
    var pageMenu : CAPSPageMenu!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.ratingController.contentMode = UIViewContentMode.scaleAspectFit
        self.backgroundImageView.layer.cornerRadius = 0.5 * backgroundImageView.bounds.size.width
        self.profilePicImg.setRounded()

        
        // Initialize view controllers to display and place in array
        var controllerArray : [UIViewController] = []
        
        let laywerStoryboard = UIStoryboard(name: "Lawyer", bundle: nil)
        let controllerOne = laywerStoryboard.instantiateViewController(withIdentifier: "LawyerReviews")
        controllerOne.title = "About"
        controllerArray.append(controllerOne)
        
        let controllertwo = laywerStoryboard.instantiateViewController(withIdentifier: "LawyerReviews")
        controllertwo.title = "Reviews"
        controllerArray.append(controllertwo)
        
        
        // Customize menu (Optional)
        let parameters: [CAPSPageMenuOption] = [
            .menuItemSeparatorWidth(4.3),
            .scrollMenuBackgroundColor(UIColor.white),
            .viewBackgroundColor(UIColor(red: 247.0/255.0, green: 247.0/255.0, blue: 247.0/255.0, alpha: 1.0)),
            .bottomMenuHairlineColor(UIColor(red: 20.0/255.0, green: 20.0/255.0, blue: 20.0/255.0, alpha: 0.1)),
            .selectionIndicatorColor(UIColor(red: 18.0/255.0, green: 150.0/255.0, blue: 225.0/255.0, alpha: 1.0)),
            .menuMargin(20.0),
            .menuHeight(40.0),
            .selectedMenuItemLabelColor(UIColor(red: 18.0/255.0, green: 150.0/255.0, blue: 225.0/255.0, alpha: 1.0)),
            .unselectedMenuItemLabelColor(UIColor(red: 40.0/255.0, green: 40.0/255.0, blue: 40.0/255.0, alpha: 1.0)),
            .menuItemFont(UIFont(name: "HelveticaNeue-Medium", size: 14.0)!),
            .useMenuLikeSegmentedControl(true),
            .menuItemSeparatorRoundEdges(true),
            .selectionIndicatorHeight(2.0),
            .menuItemSeparatorPercentageHeight(0.1)
            
            
        ]
        
        // Initialize scroll menu
        pageMenu = CAPSPageMenu(viewControllers: controllerArray, frame: CGRect(x: 0.0, y: profileView.frame.maxY, width: self.view.frame.width, height: self.view.frame.height), pageMenuOptions: parameters)
        
        // Optional delegate
        pageMenu!.delegate = self
        
        self.view.addSubview(pageMenu!.view)
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

    override func shouldAutomaticallyForwardRotationMethods() -> Bool {
        return true
    }
}

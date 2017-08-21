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

    @IBOutlet var navBar: UINavigationBar!
    @IBOutlet var profileView: UIView!
    @IBOutlet weak var backgroundImageView: UIView!
    @IBOutlet weak var profilePicImg: UIImageView!
    @IBOutlet weak var fullName: UILabel!
    @IBOutlet weak var ratingController: FloatRatingView!
    @IBOutlet weak var totalCasesSolvedLabel: UILabel!
    @IBOutlet weak var totalQuestionsAnsweredLabel: UILabel!
    var viewHeight:CGFloat = 0.0
    
   
    var pageMenu : CAPSPageMenu!
    
    @IBOutlet var addButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.ratingController.contentMode = UIViewContentMode.scaleAspectFit
        self.backgroundImageView.layer.cornerRadius = 0.5 * backgroundImageView.bounds.size.width
        self.profilePicImg.setRounded()
        styleButton()
        
        
        self.navBar.barTintColor = UIColor(red: 57/255.0, green: 25/255.0, blue: 13/255.0, alpha: 1.0)
        // Initialize view controllers to display and place in array
        var controllerArray : [UIViewController] = []
        
        let laywerStoryboard = UIStoryboard(name: "Lawyer", bundle: nil)
        
        let controllerOne = laywerStoryboard.instantiateViewController(withIdentifier: "LaywerAboutView") as! LawyerAboutViewController
        controllerOne.title = "About"
        controllerArray.append(controllerOne)
        
        let controllertwo = laywerStoryboard.instantiateViewController(withIdentifier: "LawyerReviews") as! LawyerReviewsViewController
        controllertwo.title = "Reviews"
        controllerArray.append(controllertwo)
        
        
        // Customize menu (Optional)
        let parameters: [CAPSPageMenuOption] = [
            .menuItemSeparatorWidth(4.3),
            .scrollMenuBackgroundColor(UIColor(red: 57/255.0, green: 25/255.0, blue: 13/255.0, alpha: 1.0)),
            .viewBackgroundColor(UIColor(red: 57/255.0, green: 25/255.0, blue: 13/255.0, alpha: 1.0)),
            .bottomMenuHairlineColor(UIColor(red: 239/255.0, green: 191/255.0, blue: 37/255.0, alpha: 1)),
            .selectionIndicatorColor(UIColor(red: 239/255.0, green: 191/255.0, blue: 37/255.0, alpha: 1)),
            .menuMargin(20.0),
            .menuHeight(40.0),
            .selectedMenuItemLabelColor(UIColor(red: 239/255.0, green: 191/255.0, blue: 37/255.0, alpha: 1)),
            .unselectedMenuItemLabelColor(UIColor(red: 135/255.0, green: 119/255.0, blue: 114/255.0, alpha: 1.0)),
            .menuItemFont(UIFont(name: "HelveticaNeue-Medium", size: 14.0)!),
            .useMenuLikeSegmentedControl(true),
            .menuItemSeparatorRoundEdges(false),
            .selectionIndicatorHeight(2.0),
            .menuItemSeparatorPercentageHeight(0)
            
            
            
        ]
        
        // Initialize scroll menu
        pageMenu = CAPSPageMenu(viewControllers: controllerArray, frame: CGRect(x: 0.0, y: profileView.frame.maxY, width: self.view.frame.width, height: self.view.frame.height), pageMenuOptions: parameters)
        
        
        
        viewHeight = self.view.frame.height - (profileView.frame.maxY + 40)
        
        profileView.backgroundColor = UIColor(red: 57/255.0, green: 25/255.0, blue: 13/255.0, alpha: 1.0)
        
        // Optional delegate
        pageMenu!.delegate = self
        
        self.view.addSubview(pageMenu!.view)
        
        
        print(viewHeight,"####")
        
        controllerOne.scrollViewHeigth.constant = viewHeight
        
        
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func willMoveToPage(_ controller: UIViewController, index: Int) {
        if(index == 1){
            self.addButton.isHidden = false
            self.view.addSubview(addButton)

        }
        else{
            self.addButton.isHidden = true
        }

    }
    
    func didMoveToPage(_ controller: UIViewController, index: Int) {
        if(index == 1){
            
            let currentController = controller as! LawyerReviewsViewController
            currentController.tableViewHeight.constant = viewHeight
            
            print("Chnaged height")
            
        }
    }
    
    func styleButton(){
        
        addButton.layer.cornerRadius = addButton.bounds.size.width * 0.5
//        addButton.backgroundColor = UIColor.init(red: 57/255, green: 25/255, blue: 13/255, alpha: 1)
        addButton.tintColor = UIColor.white
        addButton.setImage(#imageLiteral(resourceName: "scale"), for: .normal)
        addButton.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        addButton.isHidden = true
        
    }

    func buttonAction(sender: UIButton!) {
        let popOverVC = UIStoryboard(name: "Lawyer", bundle: nil).instantiateViewController(withIdentifier: "AddButtonsPopUp") as! AddButtonsPopUpViewController
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

    override func shouldAutomaticallyForwardRotationMethods() -> Bool {
        return true
    }
}

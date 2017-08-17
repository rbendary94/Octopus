//
//  PageViewController.swift
//  Octopus
//
//  Created by Nesreen Mamdouh on 8/16/17.
//  Copyright © 2017 EverestMinds. All rights reserved.
//

import UIKit
import PageMenu

class PageViewController: UIViewController,CAPSPageMenuDelegate {

    var pageMenu : CAPSPageMenu?
    
    @IBOutlet var searchBar: UISearchBar!
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.setPositionAdjustment(UIOffset.init(horizontal: -20, vertical: 0), for: .search)
        
//        self.title = "PAGE MENU"
//        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white]
//        self.navigationController?.navigationBar.tintColor = UIColor.white
//        
        // MARK: - Scroll menu setup
        
        // Initialize view controllers to display and place in array
        var controllerArray : [UIViewController] = []
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controllerOne = storyboard.instantiateViewController(withIdentifier: "SignInViewController")
        controllerOne.title = "Test 1"
        controllerArray.append(controllerOne)
        
        
        let controllertwo = storyboard.instantiateViewController(withIdentifier: "SignInViewController")
        controllertwo.title = "Test 2"
        controllerArray.append(controllertwo)
        
        
        
        let controllerth = storyboard.instantiateViewController(withIdentifier: "SignInViewController")
        controllerth.title = "Test 3"
        controllerArray.append(controllerth)
        
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
        pageMenu = CAPSPageMenu(viewControllers: controllerArray, frame: CGRect(x: 0.0, y: searchBar.frame.maxY, width: self.view.frame.width, height: self.view.frame.height), pageMenuOptions: parameters)
        
        // Optional delegate
        pageMenu!.delegate = self
        
        self.view.addSubview(pageMenu!.view)

                // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override func shouldAutomaticallyForwardRotationMethods() -> Bool {
        return true
    }

}

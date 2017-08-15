//
//  ViewController.swift
//  Octopus
//
//  Created by Rana on 8/15/17.
//  Copyright © 2017 EverestMinds. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension UIViewController {
    
    func addTap(){
        let tapGesture = UITapGestureRecognizer(target: self , action: #selector (didTap(gesture: )))
        view.addGestureRecognizer(tapGesture)
    }
    
    func didTap(gesture : UIGestureRecognizer){
        view.endEditing(true)
    }
    
   
    
  
    
    
   
    
 

}

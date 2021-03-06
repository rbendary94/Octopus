//
//  ViewController.swift
//  Octopus
//
//  Created by Rana on 8/15/17.
//  Copyright © 2017 EverestMinds. All rights reserved.
//

import UIKit
import STRatingControl
class ViewController: UIViewController , STRatingControlDelegate {

    @IBOutlet weak var ratingView: STRatingControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.ratingView.delegate = self
        self.ratingView.rating = 3
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func didSelectRating(_ control: STRatingControl, rating: Int) {
        print("Hi")
    }


}

extension UIViewController {
    
    func addTap(){
        let tapGesture = UITapGestureRecognizer(target: self , action: #selector (didTap(_:)))
        view.addGestureRecognizer(tapGesture)
    }
    
    func didTap(_ gesture : UIGestureRecognizer){
        view.endEditing(true)
    }
    
}

extension UIImageView {
    
    func setRounded() {
        let radius = self.frame.width / 2
        self.layer.cornerRadius = radius
        self.layer.masksToBounds = true
    }
}

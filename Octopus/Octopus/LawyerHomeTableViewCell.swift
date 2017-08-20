//
//  LawyerHomeTableViewCell.swift
//  Octopus
//
//  Created by Rana on 8/17/17.
//  Copyright © 2017 EverestMinds. All rights reserved.
//

import UIKit
import FloatRatingView

class LawyerHomeTableViewCell: UITableViewCell {

    @IBOutlet weak var imageBorderView: UIView!
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet var ratingControl: FloatRatingView!
//    @IBOutlet weak var ratingControlView: STRatingControl!
    @IBOutlet weak var assignedCasesLabel: UILabel!
    @IBOutlet weak var assignedQuestionsLabel: UILabel!
    @IBOutlet weak var balanceLabel: UILabel!
    
   
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code

        self.imageBorderView.layer.cornerRadius = 0.5 * imageBorderView.bounds.size.width
        self.profileImageView.setRounded()
        
        // Required float rating view params
//        self.ratingControl.emptyImage = UIImage(named: "StarEmpty")
//        self.ratingControl.fullImage = UIImage(named: "StarFull")
        // Optional params
        //        self.floatRatingView.delegate = self
        self.ratingControl.contentMode = UIViewContentMode.scaleAspectFit
        self.ratingControl.maxRating = 5
        self.ratingControl.minRating = 1
        self.ratingControl.rating = 2.5
        self.ratingControl.editable = true
        self.ratingControl.halfRatings = true
        self.ratingControl.floatRatings = false
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

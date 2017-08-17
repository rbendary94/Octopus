//
//  LawyerHomeTableViewCell.swift
//  Octopus
//
//  Created by Rana on 8/17/17.
//  Copyright © 2017 EverestMinds. All rights reserved.
//

import UIKit
import STRatingControl

class LawyerHomeTableViewCell: UITableViewCell {

    @IBOutlet weak var imageBorderView: UIView!
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
//    @IBOutlet weak var ratingControlView: STRatingControl!
    @IBOutlet weak var assignedCasesLabel: UILabel!
    @IBOutlet weak var assignedQuestionsLabel: UILabel!
    @IBOutlet weak var balanceLabel: UILabel!
    
   
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        imageBorderView.layer.cornerRadius = 30
        profileImageView.layer.cornerRadius = 30
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

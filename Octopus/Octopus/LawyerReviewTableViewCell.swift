//
//  LawyerReviewTableViewCell.swift
//  Octopus
//
//  Created by Rana on 8/20/17.
//  Copyright © 2017 EverestMinds. All rights reserved.
//

import UIKit
import FloatRatingView

class LawyerReviewTableViewCell: UITableViewCell {
    @IBOutlet weak var starsView: FloatRatingView!
    @IBOutlet weak var reviewLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.starsView.contentMode = UIViewContentMode.scaleAspectFit

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

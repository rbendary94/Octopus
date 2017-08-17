//
//  BalanceTableViewCell.swift
//  Octopus
//
//  Created by Nesreen Mamdouh on 8/17/17.
//  Copyright © 2017 EverestMinds. All rights reserved.
//

import UIKit

class BalanceTableViewCell: UITableViewCell {

    @IBOutlet var priceLabel: UILabel!
    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var timeLabel: UILabel!
    @IBOutlet var caseNumberLabel: UILabel!
    @IBOutlet var clientNameLabel: UILabel!
    @IBOutlet var amountLabel: UILabel!
    
    @IBOutlet var viewCaseBtn: UIButton!
   
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

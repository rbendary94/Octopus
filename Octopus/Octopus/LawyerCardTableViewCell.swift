//
//  LawyerCardTableViewCell.swift
//  Octopus
//
//  Created by Rana on 8/17/17.
//  Copyright © 2017 EverestMinds. All rights reserved.
//

import UIKit

class LawyerCardTableViewCell: UITableViewCell {

    @IBOutlet var testView: UIView!
    @IBOutlet var viewCasesBtn: UIButton!
    @IBOutlet weak var cardView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.separatorInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: .greatestFiniteMagnitude)

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
//    override func layoutSubviews() {
////        super.layoutSubviews()
////        let border = CALayer()
////        border.borderColor = UIColor.yellow.cgColor
////        border.borderWidth = 15
////        border.frame = CGRect(x: 0,y: 0,width: 5,height: cardView.frame.height - 60)
////        cardView.layer.addSublayer(border)
////        
////        print("########",self.frame.height)
////        print("Test",testView.frame.height)
//        
//    }


}

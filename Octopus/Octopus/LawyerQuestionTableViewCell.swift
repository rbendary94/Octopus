//
//  LawyerQuestionTableViewCell.swift
//  Octopus
//
//  Created by Rana on 8/20/17.
//  Copyright © 2017 EverestMinds. All rights reserved.
//

import UIKit

class LawyerQuestionTableViewCell: UITableViewCell {

    @IBOutlet weak var cardView: UIView!
    @IBOutlet weak var questionTitleLabel: UILabel!
    @IBOutlet weak var answerTextField: UITextField!
    @IBOutlet weak var questioChatButton: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var recordAnswerButton: UIButton!
    
    @IBOutlet weak var viewAllQuestionsButton: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }
  
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()

        let answerTextFieldBorder = CALayer()
        let width = CGFloat(1.0)
        answerTextFieldBorder.borderColor = UIColor.darkGray.cgColor
        answerTextFieldBorder.frame = CGRect(x: 0, y: answerTextField.frame.size.height - width, width:  answerTextField.frame.size.width  + recordAnswerButton.frame.size.width, height: answerTextField.frame.size.height)
        
        answerTextFieldBorder.borderWidth = width
        answerTextField.layer.addSublayer(answerTextFieldBorder)
        answerTextField.layer.masksToBounds = true
        
        
        let cardViewBorder = CALayer()
        cardViewBorder.borderColor = UIColor.init(red: 239/255, green: 191/255, blue: 37/255, alpha: 1).cgColor
        cardViewBorder.borderWidth = 20
        cardViewBorder.frame = CGRect(x: 0,y: 0,width: 5,height: cardView.frame.height)
        cardView.layer.addSublayer(cardViewBorder)
        cardView.layer.masksToBounds = true
    }
  
}

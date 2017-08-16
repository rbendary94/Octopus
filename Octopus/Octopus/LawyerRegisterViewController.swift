//
//  LawyerRegisterViewController.swift
//  Octopus
//
//  Created by Rana on 8/16/17.
//  Copyright © 2017 EverestMinds. All rights reserved.
//

import UIKit

class LawyerRegisterViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        addTap()
        self.automaticallyAdjustsScrollViewInsets = false

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        addObservers()
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        removeObserver()
    }
    
    func addObservers(){
        NotificationCenter.default.addObserver(forName: .UIKeyboardWillShow, object: nil, queue: nil) {
            notification in
            self.keyboardWillShow(notification: notification)
        }
        NotificationCenter.default.addObserver(forName: .UIKeyboardWillHide, object: nil, queue: nil) {
            notification in
            self.keyboardWillHide(notification: notification)
            
        }
    }
    
    func removeObserver() {
        NotificationCenter.default.removeObserver(self)
    }
    
    
    func keyboardWillShow (notification: Notification){
        guard let userInfo = notification.userInfo,
            let frame = (userInfo[UIKeyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue
            else {
                return
        }
        let contentInsent = UIEdgeInsets(top: 0, left: 0 , bottom: frame.height + 20, right: 0)
        self.scrollView.contentInset = contentInsent
        
    }
    
    func keyboardWillHide (notification: Notification){
        self.scrollView.contentInset = UIEdgeInsets.zero
        scrollView.scrollIndicatorInsets = UIEdgeInsets.zero
        view.setNeedsLayout()
    }

  


}

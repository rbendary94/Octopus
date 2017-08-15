//
//  RegisterViewController.swift
//  Octopus
//
//  Created by Rana on 8/15/17.
//  Copyright © 2017 EverestMinds. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var titleDropDown: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var address: UITextField!
    @IBOutlet weak var mobileNumber: UITextField!
    @IBOutlet weak var joinNow: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tapGesture = UITapGestureRecognizer(target: self , action: #selector (didTap(gesture: )))
        view.addGestureRecognizer(tapGesture)
        // Do any additional setup after loading the view.
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

    func didTap(gesture : UIGestureRecognizer){
        view.endEditing(true)
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
        scrollView.contentInset = contentInsent
        
    }
    
    func keyboardWillHide (notification: Notification){
        scrollView.contentInset = UIEdgeInsets.zero
        scrollView.scrollIndicatorInsets = UIEdgeInsets.zero
        view.setNeedsLayout()
    }
    
    
    
}

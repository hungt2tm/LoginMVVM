//
//  LoginFormViewExtension.swift
//  LoginMVVM
//
//  Created by Hung on 5/11/17.
//  Copyright © 2017 Unlocked Inc. All rights reserved.
//

import UIKit

extension LoginFormView {
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        let tag = textField.tag
        
        if(tag == emailTextField.tag) {
            passwordTextField.becomeFirstResponder()
        } else if(tag == passwordTextField.tag) {
            textField.resignFirstResponder()
            doLogin()
            return false
        }
        
        return true
    }
    
    func doLogin() {
        self.presenter?.login(email: emailTextField.text ?? "", password: passwordTextField.text ?? "")
    }
    
    @IBAction func loginDidTap(sender: UIButton) {
        doLogin()
    }
}

//
//  LoginFormViewModelExtension.swift
//  LoginMVVM
//
//  Created by Hung on 5/11/17.
//  Copyright © 2017 Unlocked Inc. All rights reserved.
//

import UIKit

//MARK: Email Presentable
extension LoginFormViewModel {
    var emailPlaceholder: String { return "hungt2tm@gmail.com" }
    var emailLeftView: UIView {
        return leftViewForTextField(image: UIImage(named: "username"))
    }
    var emailLeftViewMode: UITextFieldViewMode { return .always }
    
    var textColor: UIColor { return UIColor.black }
    var placeholderTextColor: UIColor { return UIColor(white: 0.85, alpha: 1) }
    var borderStyle: UITextBorderStyle { return .none }
    var bottomBorderColor: UIColor { return UIColor.blue }
    var bottomBorderWidth: CGFloat { return 1 }
}

//MARK: Password Presentable
extension LoginFormViewModel {
    var passwordPlaceholder: String { return "password" }
    var passwordLeftView: UIView {
        return leftViewForTextField(image: UIImage(named: "password"))
    }
    var passwordLeftViewMode: UITextFieldViewMode { return .always }
}

//MARK: Login Button Presentable
extension LoginFormViewModel
{
    var btnBgColor: UIColor{ return UIColor(red: 255, green: 255, blue: 255, alpha: 1)}
    var btnTextColor: UIColor{ return UIColor.blue}
}

//MARK: Login Button Action
extension LoginFormViewModel {
    
    func login(email: String, password: String) {
        cleanErrors()
        
        let validEmail = checkEmailErrors(email: email)
        let validPassword = checkPasswordErrors(password: password)
        
        if !validEmail || !validPassword {
            self.delegate?.showErrors!(errors: self.errors)
            return
        }
        //login progress
        
        if email == "hungt2tm@gmail.com" && password == "123456" {
            self.delegate?.showSucceed!(message: "Đăng nhập thành công")
        }
    }
}






//
//  LoginFormView.swift
//  LoginMVVM
//
//  Created by Hung on 5/11/17.
//  Copyright © 2017 Unlocked Inc. All rights reserved.
//

import UIKit

typealias LoginFormPresentable = LoginTextFieldPresentable & LoginPasswordPresentable & LoginButtonPresentable & LoginButtonAction

class LoginFormView: UIView, UITextFieldDelegate {
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var btnLogin: UIButton!
    
    var presenter: LoginFormPresentable?
    
    func configure(withPresenter presenter: LoginFormPresentable)  {
        self.presenter = presenter
        
        emailTextField.attributedPlaceholder = NSAttributedString(string: presenter.emailPlaceholder
            , attributes: [NSForegroundColorAttributeName: presenter.placeholderTextColor])
        
        emailTextField.borderStyle = presenter.borderStyle
        emailTextField.textColor = presenter.textColor
        emailTextField.leftView = presenter.emailLeftView
        emailTextField.leftViewMode = presenter.emailLeftViewMode
        
        passwordTextField.attributedPlaceholder = NSAttributedString(string: presenter.passwordPlaceholder
            , attributes: [NSForegroundColorAttributeName: presenter.placeholderTextColor])
        
        passwordTextField.borderStyle = presenter.borderStyle
        passwordTextField.textColor = presenter.textColor
        passwordTextField.leftView = presenter.passwordLeftView
        passwordTextField.leftViewMode = presenter.passwordLeftViewMode
        
        btnLogin.backgroundColor = presenter.btnBgColor
        btnLogin.setTitleColor(presenter.btnTextColor, for: .normal)
        
        emailTextField.delegate = self
        passwordTextField.delegate = self
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        if let color = self.presenter?.bottomBorderColor, let width = self.presenter?.bottomBorderWidth {
            emailTextField.setBottomBorder(withColor: color, borderWidth: width)
            passwordTextField.setBottomBorder(withColor: color, borderWidth: width)
        }
    }

}








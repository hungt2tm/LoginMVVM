//
//  LoginButtonPresentable.swift
//  LoginMVVM
//
//  Created by Hung on 5/11/17.
//  Copyright © 2017 Unlocked Inc. All rights reserved.
//

import UIKit

protocol LoginButtonPresentable {
    var btnBgColor: UIColor{ get }
    var btnTextColor: UIColor{ get }
}

protocol LoginButtonAction {
    func login(email: String, password: String)
}

@objc protocol LoginFormViewModelDelegate
{
    @objc optional func showErrors(errors: [String])
    
    @objc optional func showSucceed(message: String)
}

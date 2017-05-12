//
//  LoginViewController.swift
//  LoginMVVM
//
//  Created by Hung on 5/11/17.
//  Copyright © 2017 Unlocked Inc. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, LoginFormViewModelDelegate {
    
    @IBOutlet weak var loginFormView: LoginFormView!
    
    var loginViewModel: LoginFormViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        // Do any additional setup after loading the view.
    }
    
    func setupViews() {
        loginViewModel = LoginFormViewModel()
        loginViewModel?.delegate = self
        loginFormView.configure(withPresenter: loginViewModel!)
    }
    
    func showErrors(errors: [String]) {
        let message = errors.joined(separator: "\n")
        let errorAlert = UIAlertController(title: "Lỗi", message: message, preferredStyle: .alert)
        errorAlert.addAction(UIAlertAction(title: "Đồng ý", style: .default, handler: nil))
        self.present(errorAlert, animated: true, completion: nil)
    }
    
    func showSucceed(message: String) {
        let alert = UIAlertController(title: "Cool", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Đồng ý", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}

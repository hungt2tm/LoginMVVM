//
//  LoginFormViewModel.swift
//  LoginMVVM
//
//  Created by Hung on 5/11/17.
//  Copyright © 2017 Unlocked Inc. All rights reserved.
//

import UIKit

class LoginFormViewModel: LoginFormPresentable{
    internal var errors: [String] = []
    
    var delegate: LoginFormViewModelDelegate?
    
    //MARK: Error Checking
    func cleanErrors() {
        errors.removeAll()
    }
    
    func addError(error: String)
    {
        errors.append(error)
    }
    
    func checkEmailErrors(email: String) -> Bool {
        let regex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"
        let validator = NSPredicate(format: "SELF MATCHES %@", regex)
        let valid = validator.evaluate(with: email);
        
        if !valid {
            addError(error: "Hãy điền đúng định dạng email")
        }
        
        return valid
    }
    
    func checkPasswordErrors(password: String) -> Bool {
        let valid = !password.isEmpty && password.characters.count >= 6
        
        if !valid {
            addError(error: "Mật khẩu phải từ 6 ký tự trở lên")
        }
        
        return valid
    }
    
    
    //Set a image to the left textfield 
    func leftViewForTextField(image: UIImage?) -> UIImageView {
        //5px as padding
        let imageView = UIImageView(frame: CGRect(x:0, y:0, width:15 + 5, height:15))
        
        imageView.image = image
        imageView.contentMode = .scaleAspectFit
        
        return imageView
    }
    
}

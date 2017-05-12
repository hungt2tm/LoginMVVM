//
//  LoginPasswordPresentable.swift
//  LoginMVVM
//
//  Created by Hung on 5/11/17.
//  Copyright © 2017 Unlocked Inc. All rights reserved.
//

import UIKit

protocol LoginPasswordPresentable {
    var passwordPlaceholder: String {get}
    var passwordLeftView: UIView {get}
    var passwordLeftViewMode: UITextFieldViewMode {get}
}

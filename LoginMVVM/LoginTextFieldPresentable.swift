//
//  LoginTextFieldPresentable.swift
//  LoginMVVM
//
//  Created by Hung on 5/11/17.
//  Copyright © 2017 Unlocked Inc. All rights reserved.
//

import UIKit

protocol LoginTextFieldPresentable {
    var textColor: UIColor{ get }
    var placeholderTextColor: UIColor{ get }
    var borderStyle: UITextBorderStyle{ get }
    var bottomBorderColor: UIColor{ get }
    var bottomBorderWidth: CGFloat{ get }
    var emailPlaceholder: String { get }
    var emailLeftView: UIView{ get }
    var emailLeftViewMode: UITextFieldViewMode{ get }
}

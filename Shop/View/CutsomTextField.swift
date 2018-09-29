//
//  CutsomTextField.swift
//  Shop
//
//  Created by Matt Deuschle on 9/29/18.
//  Copyright © 2018 Matt Deuschle. All rights reserved.
//

import UIKit

@IBDesignable
class CutsomTextField: UITextField {

    override func prepareForInterfaceBuilder() {
        setUpTextField()
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        setUpTextField()
    }

    private func setUpTextField() {
        backgroundColor = #colorLiteral(red: 0.7540688515, green: 0.7540867925, blue: 0.7540771365, alpha: 0.5049497003)
        textAlignment = .center
        textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        layer.cornerRadius = 5.0
        if let _placeHolder = placeholder {
            let attributedString = NSAttributedString(string: _placeHolder,
                                                      attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = attributedString
        }
    }
}

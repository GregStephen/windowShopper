//
//  CurrencyTxtField.swift
//  window-shopper
//
//  Created by Whitney McCormick on 2/22/18.
//  Copyright © 2018 GREGSGAMES. All rights reserved.
//

import UIKit

@IBDesignable
class CurrencyTxtField: UITextField {
    
    override func prepareForInterfaceBuilder() {
        customizeview()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeview()
    }
    func customizeview() {
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2458529538)
        layer.cornerRadius = 5.0
        textAlignment = .center
        
        
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
}

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
    
    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20
        let currencyLbl = UILabel(frame: CGRect(x: 5, y: (frame.size.height / 2 - size / 2), width: size, height: size))
        currencyLbl.backgroundColor = #colorLiteral(red: 0.5313689721, green: 0.5313689721, blue: 0.5313689721, alpha: 0.7992294521)
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        currencyLbl.layer.cornerRadius = 5.0
        currencyLbl.clipsToBounds = true
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencyLbl.text = formatter.currencySymbol
        addSubview(currencyLbl)
    }
    
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
        
        clipsToBounds = true
        
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
}

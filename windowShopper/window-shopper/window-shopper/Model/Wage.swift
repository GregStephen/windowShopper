//
//  Wage.swift
//  window-shopper
//
//  Created by Whitney McCormick on 2/22/18.
//  Copyright © 2018 GREGSGAMES. All rights reserved.
//

import Foundation
class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int{
        return Int(ceil(price / wage))
    }
}

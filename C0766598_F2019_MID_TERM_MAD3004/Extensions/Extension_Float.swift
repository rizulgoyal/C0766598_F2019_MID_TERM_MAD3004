//
//  Extension_Float.swift
//  C0766598_F2019_MID_TERM_MAD3004
//
//  Created by MacStudent on 2019-10-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

extension Float{
    
    func insertCurrency() -> String{
        return String.init(format: "$ %0.2f", self)
    }
}

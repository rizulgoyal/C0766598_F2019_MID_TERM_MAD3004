//
//  Extension_Date.swift
//  C0766598_F2019_MID_TERM_MAD3004
//
//  Created by MacStudent on 2019-10-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

extension Date{
    
    func insertDate()-> String
    {
        
        let dateformatter = DateFormatter()
        dateformatter.dateFormat = "EEEE, MMMM dd, YYYY"
        return dateformatter.string(from: self)
        
    }
}

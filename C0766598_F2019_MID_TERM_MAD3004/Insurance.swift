//
//  Insurance.swift
//  C0766598_F2019_MID_TERM_MAD3004
//
//  Created by MacStudent on 2019-10-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

class Insurance : Bill
{
    enum TypeIns {
        case Home
        case Car
        case Business
    }
    var insuranceType : TypeIns!
    var provider : String?
    var startDate = String()
    var endDate = String()
    var totalAmountYearly = Float()

    
}

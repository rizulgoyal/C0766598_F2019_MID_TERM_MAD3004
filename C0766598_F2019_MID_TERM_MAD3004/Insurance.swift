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

    init(billID: Int, billDate: String, billType: Types, billAmount: Float,
                  provider:String,insuranceType:TypeIns,startDate:String,endDate:String) {
        super.init(billID: billID, billDate: billDate, billType: billType, billAmount: billAmount)
    self.provider=provider
        self.insuranceType=insuranceType
        self.startDate=startDate
        self.endDate=endDate
    
    }
    
    override func display() {
        super.display()
        print("Insurance Provider : \(provider!)")
        print("Insurance Type : \(insuranceType!)")
        print("Insurance Start Date : \(startDate)")
        print("Insurance End Date : \(endDate)")

    }
}

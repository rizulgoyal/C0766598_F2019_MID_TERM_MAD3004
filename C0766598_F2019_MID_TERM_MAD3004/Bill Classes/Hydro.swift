//
//  Hydro.swift
//  C0766598_F2019_MID_TERM_MAD3004
//
//  Created by MacStudent on 2019-10-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

class Hydro:Bill
{
    var agencyName : String?
    var unitUsage : Int?
    
    init(billID: Int, billDate: String, billType: Types, totalAmount: Float,agencyName: String,unitUsage:Int) {
        super.init(billID: billID, billDate: billDate, billType: billType, billAmount: totalAmount)
        self.agencyName=agencyName
        self.unitUsage=unitUsage
    }
    
    override func display() {
        super.display()
        print("Agency Name : \(agencyName!)")
        print("Units Consumed : \(unitUsage!.insertUnits())")
        
    }
    
}

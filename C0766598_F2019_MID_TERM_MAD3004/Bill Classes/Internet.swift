//
//  Internet.swift
//  C0766598_F2019_MID_TERM_MAD3004
//
//  Created by MacStudent on 2019-10-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
class Internet:Bill {
    var providerNAME:String?
    var internetUsage = Int()
    
    init(billID: Int, billDate: String, billType: Types, totalAmount: Float,providerName:String,internet:Int) {
        super.init(billID: billID, billDate: billDate, billType: billType, billAmount: totalAmount)
        self.internetUsage=internet
        self.providerNAME=providerName
    }
    
    
    
    override func display() {
        super.display()
        print("Provider Name : \(providerNAME!)")
        print("Internet Usage : \(internetUsage.insertGB())")
        
    }




}

//
//  Bill.swift
//  C0766598_F2019_MID_TERM_MAD3004
//
//  Created by MacStudent on 2019-10-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
class Bill : IDisplay
{
    
    
    var billID:Int?
    var billDate=String()
    enum Types {
        case Internet
        case Mobile
        case Hydro
        case Insurance
    }
    var billType : Types
    var billAmount:Float?
    
    var newDate:Date
    {
        let dateformatter=DateFormatter()
        dateformatter.dateFormat="MM/dd/yyyy"
        return dateformatter.date(from: billDate)!
    }
    
    init(billID:Int,billDate:String,billType:Types,billAmount:Float) {
        self.billID=billID
        self.billDate=billDate
        self.billType=billType
        self.billAmount=billAmount
    }
    
    func display() {
        print("Bill ID : \(billID!)")
        print("Bill Date : \(newDate.insertDate())")
        print("Bill Type : \(billType)")
        print("Bill Amount : \(billAmount!.insertCurrency())")
        
        }
    
    
    
    
}

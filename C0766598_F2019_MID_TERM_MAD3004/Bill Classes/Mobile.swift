//
//  Mobile.swift
//  C0766598_F2019_MID_TERM_MAD3004
//
//  Created by MacStudent on 2019-10-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

class Mobile:Bill
{
    var mobileModel:String?
    var mobileNumber: Int?
    var planName:String?
    var mobileInternet:Int?
    var mobileMinute:Int?
    
    init(billID: Int, billDate: String, billType: Types, totalAmount: Float
        ,mobileModel:String,mobileNumber:Int,planName:String,mobileInternet:Int,mobileMinute:Int) {
        super.init(billID: billID, billDate: billDate, billType:billType, billAmount: totalAmount)
        self.mobileModel=mobileModel
        self.mobileNumber=mobileNumber
        self.planName=planName
        self.mobileInternet=mobileInternet
        self.mobileMinute=mobileMinute
    }
    
    
    override func display() {
        super.display()
        print("Manufacturer Name : \(mobileModel!)")
        print("Plan Name : \(planName!)")
        print("Mobile Number : \(mobileNumber!)")
        print("Internet Usage : \(mobileInternet!.insertGB())")
        print("Minute Usage : \(mobileMinute!.insertMin())")
        
    }
}

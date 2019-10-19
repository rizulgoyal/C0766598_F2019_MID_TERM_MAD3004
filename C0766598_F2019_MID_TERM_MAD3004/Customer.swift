//
//  Customer.swift
//  C0766598_F2019_MID_TERM_MAD3004
//
//  Created by MacStudent on 2019-10-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

class Customer
{
    var customerID : Int?
    var customerFName: String?
    var customerLName : String?
    var fullName : String{
        return customerFName! + " " + customerLName!
    }
      var customerEmail: String?
    var billDictionary = [Int:Bill]()
    var totalBillAmount : Float?
    
    init(customerID:Int,customerFName: String,customerLName:String,customerEmail:String) {
        self.customerID=customerID
        self.customerFName=customerFName
        self.customerLName=customerLName
        self.customerEmail=customerEmail
    }
    
    func addbill(BillObject: Bill)
    {
        billDictionary.updateValue(BillObject, forKey: BillObject.billID!)
    }
    
    func calcTotal() -> Float
    {
        var sum: Float = 0.0
        
        for j in billDictionary.values
        {
            sum += j.billAmount!
            
            
        }
        return sum
    }
    
    func display() {
        print("Customer ID : \(customerID!)")
        print("Customer Full Name : \(fullName) ")
        print("Customer Email: \(customerEmail!)")
        print("     -  Billing Information - ")
        print("**********************************")
        
        if billDictionary.isEmpty
        {
            print("NOTE : This Customer has no Bills to pay")
        }
        else
        {
            
        for i in billDictionary.values
                
            {
                
                
                i.display()
                print("**********************************")
                
            }
        }
        print("Total Bill Amount to Pay : \(calcTotal().insertCurrency())")
        print("**********************************")
        
        
        }
    
    
    
    
    
    
    
}

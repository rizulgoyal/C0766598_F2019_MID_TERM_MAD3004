//
//  main.swift
//  C0766598_F2019_MID_TERM_MAD3004
//
//  Created by MacStudent on 2019-10-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

print("Hello, World!")

var internet1 = Internet(billID: 001, billDate: "10/25/2019", billType:.Internet, totalAmount: 49.5698, providerName: "Rogers", internet: 45)
var internet2 = Internet(billID: 002, billDate: "08/16/2019", billType: .Internet, totalAmount: 156.654, providerName: "Bell", internet: 102)
var internet3 = Internet(billID: 003, billDate: "02/23/2018", billType: .Internet, totalAmount: 321.87, providerName: "Fido", internet: 78)


internet1.display()

var mobile1 = Mobile(billID: 101, billDate: "06/30/2019", billType: .Mobile, totalAmount: 256.98, mobileModel: "Samsung S8 Pro", mobileNumber: 9876543210, planName: "Premium Plus", mobileInternet: 34, mobileMinute: 567)

mobile1.display()







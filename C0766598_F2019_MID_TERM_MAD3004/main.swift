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



var mobile1 = Mobile(billID: 101, billDate: "06/30/2019", billType: .Mobile, totalAmount: 256.98, mobileModel: "Samsung S8 Pro", mobileNumber: 98765343210, planName: "Premium Plus", mobileInternet: 34, mobileMinute: 567)


var hydro1 = Hydro(billID: 201, billDate: "07/18/2019", billType: .Hydro, totalAmount: 106.765, agencyName: "Water Canada", unitUsage: 190)
var hydro2  = Hydro(billID: 202 , billDate: "09/25/2018", billType: .Hydro, totalAmount: 186.78      , agencyName: "Util Air Brampton", unitUsage: 167)


var insurance1 = Insurance(billID: 301, billDate: "06/28/2019", billType: .Insurance, billAmount: 365.254, provider: "Desjardians", insuranceType: .Car, startDate: "01/05/2019", endDate: "04/30/2020",insuranceTime: 364)

var insurance2 = Insurance(billID: 302, billDate: "08/14/2019", billType: .Insurance, billAmount: 136.15, provider: "TD Bank", insuranceType: .Home, startDate: "01/08/2019", endDate: "07/28/2020",insuranceTime: 364)


var customer1 = Customer(customerID: 1, customerFName: "Rizul", customerLName: "Goyal", customerEmail: "rizulgoyal23@gmail.com ")
var customer2 = Customer(customerID: 2, customerFName: "Anmol", customerLName: "Sharma", customerEmail: "anmol123@gmail.com ")
var customer3 = Customer(customerID: 3, customerFName: "Kuldeep", customerLName: "Singh", customerEmail: "kuldeep321@gmail.com ")
var customer4 = Customer(customerID: 4, customerFName: "Harpreet", customerLName: "Singh", customerEmail: "har5677@gmail.com ")
var customer5 = Customer(customerID: 5, customerFName: "Ritik", customerLName: "Gupta", customerEmail: "ritik098@gmail.com ")
customer1.addbill(BillObject: internet1)
customer1.addbill(BillObject: mobile1)
customer1.addbill(BillObject: hydro1)
customer2.addbill(BillObject: internet2)
customer2.addbill(BillObject: insurance2)
customer3.addbill(BillObject: hydro2)
customer3.addbill(BillObject: internet3)
customer4.addbill(BillObject: insurance1)

var custDict = [Int:Customer]()

func AddCustomer(customer: Customer)
{
    custDict.updateValue(customer, forKey: customer.customerID!)
}


AddCustomer(customer: customer1)
AddCustomer(customer: customer2)
AddCustomer(customer: customer3)
AddCustomer(customer: customer4)
AddCustomer(customer: customer5)



print("***************************************************************")
print(" Getting All Customer Information  by Sorting Customer  ID ")

// sort by customerid

for i in custDict.keys.sorted()
{
    custDict[i]!.display()
}


print("#############      New Output      ##############")
print(" Getting Bill by passing Bill Number ")

customer1.getbyBill(BillObject: 201)

print("#############      New Output      ##############")
print(" Getting Bill by passing Wrong Bill  Number ")
customer1.getbyBill(BillObject: 501)



// function to get customer information by passing ID
func getById (customerID: Int)
    // restriction (if pass wrong ID)
{    if custDict.keys.contains(customerID)
{
    custDict[customerID]!.display()
}
else{
    print("This Customer doesnot Exsist")
    }
    
}

print(" Getting Bill by passing Single Customer ID ")

print("#############      New Output      ##############")

getById(customerID: 3)

print(" customer with No Bill to pay ")

print("#############      New Output      ##############")

getById(customerID: 5)




















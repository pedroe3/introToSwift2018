//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//value and reference type

//reference type

//reference  will point as a pointer
// reference will have its own memory space not reference any other.


//reference type
//class

class SaleProduct {
    
    var name: String
    
    //classes need initialization
    init (desireName: String ){
        self.name = desireName  //
    }
}
let table = SaleProduct(desireName: "Table")

let Chare = table

Chare.name = "share"

table.name
Chare.name





//value type
//structs
struct Product {
    var name: String
    var ammount: Int
    var manufacturing: String
}

let blanket = Product(name: "Blanquet", ammount: 1, manufacturing: "Aero")
var pillow = blanket

pillow.name = "pillow"

pillow.name
blanket.name

///////////////////






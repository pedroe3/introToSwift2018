//: Playground - noun: a place where people can play

import UIKit

//value and reference type

//enums and switch

//and enum encapsulate all posible variation of a type

enum FruitPrice: Int{//type is not required
    case apple = 5
    case orange = 4
    case banana = 8
    case quenepa = 3
    case grapefruit = 10
    
    var string: String {
        return "\(self.rawValue)"
    }
}

FruitPrice.apple.string

let applePrice = FruitPrice.apple.string



let randomPriceType = FruitPrice.banana

if randomPriceType == .apple{
    print(randomPriceType)
}else if randomPriceType == .orange{
    print(randomPriceType)
}else if randomPriceType == .banana{
    print(randomPriceType)
    
}else if randomPriceType == .grapefruit{
    print(randomPriceType)
}

//elegant swich

switch randomPriceType{
case .apple:
    print("this is apple")
case .banana:
    print("this is banana")
case .grapefruit :
    print("this is grapefruit")
default:
    break
}




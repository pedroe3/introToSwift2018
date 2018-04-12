//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


class Fruit {
    var name: String
    var color: UIColor
    
    init(name: String, color:UIColor){
        self.name = name
        self.color = color
    }
}

class Apple:Fruit {
    
    
    convenience init(){
        self.init(name:"apple", color:.red)
    }
}

extension Fruit{
    
    //properties can not be stored in extensions
    var printOutText: String {
        return "This fruit is called \(name)"
    }
}




class Orange: Fruit{
    
}

class Grapefruit: Fruit{
    
    convenience init(){
        let grapeFruitColor = UIColor(red: 253/255, green: 161/255, blue: 133/255, alpha: 1.0)
        self.init(name:"grapefruid",color: grapeFruitColor)
    }
}

extension UIColor{
    class var grapeFruit: UIColor{
        return UIColor(red: 253/255, green: 161/255, blue: 133/255, alpha: 1.0)
        
    }
}


let apple = Apple(name: "apple", color: .red)
let orange = Orange(name: "Orange", color: .brown)
let grapeFruit = Grapefruit(name: "Grapefruit", color: .grapeFruit)  //use the extension of the color.

let apple1 = Apple()
apple1.printOutText



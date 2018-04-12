//: Playground - noun: a place where people can play

import UIKit

//protocol


//protocol is a blueprint of properties, functions, and other requirements that another object can adopt.   protocols are not conrete objects,  they are mpore like a requirement list.


protocol Readable {
    var numberOfPages: Int { get }
    func goToFirstPage()
    func goToLastPage()
}

extension Readable {
    func goToLastPage(){}
}

class Book: Readable {
    
    var numberOfPages: Int{
        get{
            return 5
        }
        set(newValue){
            self.numberOfPages = newValue
        }
        
    }
    
    func goToFirstPage() {
        
    }
}

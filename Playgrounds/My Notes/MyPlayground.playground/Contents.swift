//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//properties

var variableProperty = "yowwww"


//constant
let constantPropert: Int = 0
//let is used to define the constant,

let constantProperty2 = 0.0
// swift infere the variable type.

let booleanValue: Bool = true


//double is 64 bit 15 decimal
// fload is 32 bit 6 decimal


//optional

let title = "Codetrrottel"
let classSize: Int = 10
var teahingAssistantName: String? = nil

teahingAssistantName = "Eduardo"


//used in sequence of code where ther is more code undernetath that nneds to be excuted
if let teachingAssistant = teahingAssistantName{
    print ("We do have and teaching assistance  is: \(teahingAssistantName)"))
}

// typpicaly used on top of function to preent further exceution
guard let teachingAssistant = teachingAssistantName else {
    return
}


func running(){
    guard let teachingAssistant = teachingAssistantName else{
        return
    }
    print("lets run \(teachingAssistant)")
}

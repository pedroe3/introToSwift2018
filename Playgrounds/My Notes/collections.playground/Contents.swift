//: Playground - noun: a place where people can play

import UIKit

//collection

//array holds elements of a sinhle type in an orderes list .  can cols int, string,s classes.


let literalDeduction = Array(arrayLiteral: 50.00, 25.00, 10.00, 35.00)

var deductions = [50.00, 25.00, 10.00, 35.00]

//create array to hold new deduction
let newDeduction1:[Double] = []

let newDeduction2 = [Double]()

let newDeduction3: Array<Double> = []

//add to the array
deductions.append(13.00)

//removing by index
deductions.remove(at: 1)

print("the count of deductions is: \(deductions.count)")

//what is the total amount of deductions
var totalAmmount = 0.00

for deduction in deductions {
    totalAmmount += deduction
}// foreach


print("the total ammount of deduction is: \(totalAmmount)")

var newTotalAmmount = 0.00
for i in 0..<deductions.count {
    let deduction = deductions[i]
    newTotalAmmount += deduction
    
}
print("the new total ammount is: \(newTotalAmmount)")

//sort

deductions.sorted()

deductions.sort { (first, second) -> Bool in
    return first > second
}
deductions

// map iterate throught each element like a for loop
var totalAmmountMapped = 0.00
deductions.map({ totalAmmountMapped += $0 })
totalAmmountMapped

deductions


//finding an element
deductions.contains(13.00)

//string formatting
"the total ammount is $" + String(format: "%.2f", arguments: [totalAmmount])

deductions.removeFirst()
deductions.removeLast()
deductions.removeAll()




//Set:   this is a collection of a unique elements where order is not maintained or guaranteeed.   this is prefrerred thwen you need to hold a set of unique elements.  or need to test efficiently for memebership.  is a spedific element inside this array.


let ingredients: Set = ["sugar", "salt", "flour", "egg", "cinamon", "cocoa powder"]

if ingredients.contains("sugar"){
    print("this is too sweet")
}

//unique elements
var raffleEntries: Set = ["jose", "ricardo", "ana","lola"]

raffleEntries.insert("ricardo")

raffleEntries.insert("sarah")

raffleEntries


// dictioanary :  a type of hash table that allows for fast access to a valye whit a given key.  the key must be hashable,  such as string or number.  the valude for a given key can be of any tye.

var users = [
    "abc123" : "jose",
    "abc124" : "pedro",
    "abc125" : "juan"]

//create an empty dictionary
var newUsers: Dictionary<String,String> = [:]

//accessiong a valude for  a dictioanry
let nameOfUser = users["abc123"]

newUsers["def456"] = "Sarah"
newUsers["def457"] = "Rebecca"
newUsers


//// the underscore represetn the keys _
users.merge(newUsers) { ( _ , new) -> String in
    new
}

users.merge(newUsers) { ( _ , old) -> String in
    old
}

users

var allNames = ""
for key in users.keys{
    let name = users[key]
    allNames += "\(name!), "
}
//with the ! do a force

allNames




//
//  ViewController.swift
//  homework2
//
//  Created by kiev on 03.05.2020.
//  Copyright © 2020 kiev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}


var students = ["Ivanov","Petrov","Grishko"]

students.append("Mishko")

students.remove(at: 2)

students[2]
students[0]

print(students)
print(students[1])
print(students.count)

var numbers = [1,5,11,2,38,7]
numbers.sort()
print(numbers)


let array = [1,2,4,5,7,9,11,12]

let array1 = array.map{i in i * i}
print(array1)

let array2 = array1.filter{i in i % 2 == 0}
print(array2)

let sum = array2 .reduce(0) { sum , i in sum + i}
print(sum)


var numberSurname = [434:"Ivanov" , 456:"Grishko" , 544:"Petrov"]
numberSurname.isEmpty
numberSurname.count
numberSurname[434]
numberSurname[477] = "Bobrov"
print(numberSurname)

numberSurname.removeValue(forKey: 456)
print(numberSurname)

numberSurname[434]="Momoshko"
print(numberSurname)
print(numberSurname.keys)
print(numberSurname.values)


var money = ["UAH":"Grivna" , "RUB":"Rubl" , "USD":"Dollar" ]
money.count
money["USD"]
money["PLN"]="Polish zloty"
money.removeValue(forKey: "RUB")
print(money)









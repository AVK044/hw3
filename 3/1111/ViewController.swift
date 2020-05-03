//
//  ViewController.swift
//  1111
//
//  Created by kiev on 02.05.2020.
//  Copyright © 2020 kiev. All rights reserved.
//

import UIKit



class StudentClass {
    let name: String
    let surname: String
    var phone: Int
    var age: Int
   // var picture: UIImage
    var email: String
    
init (name: String, surname: String, phone: Int, age: Int, picture: UIImage, email: String) {
    self.name = name
    self.surname = surname
    self.phone = phone
    self.age = age
    //self.picture = picture
    self.email = email
}
}

struct Students {
    var name: String
    var surname: String
    var phone: Int
    var age: Int
    //var picture: UIImage
    var email: String
}

let student = Students(name: "", surname: "", phone: 1, age: 1, email: "")

let infoStudents: [Students] = [
    Students.init(name: "Ivan", surname: "Pupkin", phone: 3212, age: 19, email: "pupkin@email.com"),
    Students.init(name: "Vova", surname: "Bobrov", phone: 6546, age: 22, email: "bobrov@email.com"),
    Students.init(name: "Sasha", surname: "Piskun", phone:5412, age: 20, email: "piskun@email.com")]



class ViewController: UIViewController {
    @IBOutlet weak var someLabel: UILabel!
    
    @IBOutlet weak var someButton: UIButton!
   
    @IBOutlet weak var someTextField: UITextField!
 
    
    

override func viewDidLoad() {
    super.viewDidLoad()
    someButton.setTitle("Find", for: .normal)
    someLabel.text = "Find student"
    }
   
        @IBAction func onPressButton(_ sender: Any) {
            let searchSurname = someTextField.text!
            for student in infoStudents{
                if searchSurname == student.surname{
                    someLabel.text = "Name - \(student.name)\n Surname - \(student.surname)\n Phone -  \(student.phone)\n Age - \(student.age)\n Email - \(student.email)"
                }
            }
            
    }
    
}



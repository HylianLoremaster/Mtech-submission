import Cocoa

class Person {
    var name: String
    var age: Int
    var weight: Double
    var favoriteColor: String
    
    init (name: String, age: Int, weight: Double, favoriteColor: String) {
        self.name = name
        self.age = age
        self.weight = weight
        self.favoriteColor = favoriteColor
    }
}

class Student : Person {
    var currentClass: String
    var grade: String
    var gpa: Double
    
    init (currentClass: String, grade: String, gpa: Double, name: String, age: Int, weight: Double, favoriteColor: String) {
        self.currentClass = currentClass
        self.grade = grade
        self.gpa = gpa
        
        super.init(name: name, age: age, weight: weight, favoriteColor: favoriteColor)
    }
}

let person = Person(name: "Jordan", age: 17, weight: 138.6, favoriteColor: "Red")

let student = Student(currentClass: "Programming", grade: "A", gpa: 3.5, name: "Jordan", age: 17, weight: 138.6, favoriteColor: "Red")

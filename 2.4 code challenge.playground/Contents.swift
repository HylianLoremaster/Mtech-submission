import Cocoa

struct Person {
    let name: String
    var age: Int
    var height: Double
    var weight: Double
    
    func greeting() {
        print("Hello, my name is \(self.name), an I'm \(self.age) years old.")
    }
    
    mutating func birthday() {
        self.age += 1
    }
}

var me = Person(name: "Jordan", age: 17, height: 68, weight: 138.6)
me.greeting()
me.birthday()
me.greeting()

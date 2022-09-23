import Cocoa

struct Rectangle {
    var sideA: Int
    var sideB: Int
    
    func area(_ side: Int, by side2: Int) -> Int {
        side * side2
    }
    
    func perimeter(_ side: Int, by side2: Int) -> Int {
        2 * side + 2 * side2
    }
    
    mutating func scale(factor: Int) {
        sideA *= factor
        sideB *= factor
    }
}

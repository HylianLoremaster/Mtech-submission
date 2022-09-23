import Cocoa

func notConsecutive(arr: [Int]) -> Int? {
    var end: Int? = nil
    var num1 = 0
    var num2 = 0
    for item in arr {
        num1 = num2
        num2 = item
        if num2 - num1 > 1 {
            end = num2
            break
        }
    }
    return end
}

let arr = [0, 2, 3, 4, 5, 6, 7, 8, 9, 10]
if let notConsecutive = notConsecutive(arr: arr) {
    print("The first number of the provided array that is not consecutives is \(notConsecutive).")
} else {
    print("All numbers of the provided array are consecutive.")
}

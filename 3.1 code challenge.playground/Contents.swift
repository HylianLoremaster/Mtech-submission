import Cocoa

func bulkMultiplication(numbers: [Int]) -> [Int] {
    var array: [Int] = []
    for number in numbers {
        array.append(number * 10)
    }
    return array
}

let array: [Int] = [0, 1, 2, 3, 4, 5]
let values = bulkMultiplication(numbers: array)

for value in values {
    print("\(value / 10) * 10 = \(value).")
}

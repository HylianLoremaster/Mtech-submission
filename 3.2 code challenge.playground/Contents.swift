import Cocoa

func numPrint(numbers: [Int]) {
    for number in numbers {
        if (number.isMultiple(of: 2)) {
            print("\(number): Even")
        } else {
            print("\(number): Odd")
        }
    }
}

numPrint(numbers: [0, 1, 2, 3, 7])

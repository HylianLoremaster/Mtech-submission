import Cocoa

func sumOfPositives(numbers: [Int]) -> Int {
    var sum = 0
    for number in numbers {
        if number > 0 {
            sum += number
        }
    }
    return sum
}

print(sumOfPositives(numbers: [-4]))

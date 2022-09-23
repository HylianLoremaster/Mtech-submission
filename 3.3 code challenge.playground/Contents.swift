import Cocoa

func squareSum(numbers: [Int]) -> Int {
    var sum: Int = 0
    for number in numbers {
        sum += number * number
    }
    
    return sum
}

print(squareSum(numbers: [1, 2, 2]))
print(squareSum(numbers: [2, 3, 3]))
print(squareSum(numbers: [3, 4, 4]))
print(squareSum(numbers: [4, 5, 5]))
print(squareSum(numbers: [5, 6, 6]))

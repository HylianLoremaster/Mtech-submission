import Cocoa

func summation(num: Int) -> Int {
    var sum = 0
    for number in 1...num {
        sum += number
    }
    return sum
}

print(summation(num: 8))

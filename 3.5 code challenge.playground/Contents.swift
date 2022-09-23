import Cocoa

func squares(arr: [Int]) -> [Int] {
    var newArr: [Int] = []
    for number in arr {
        for num in 1...number {
            if number == num * num {
                newArr.append(num)
                break
            } else if num == number {
                newArr.append(number * number)
            }
        }
    }
    return newArr
}

let arra = [3, 4, 5, 6, 7, 8, 9]
print(squares(arr: arra))

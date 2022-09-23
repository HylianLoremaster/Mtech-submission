import Cocoa

func firstElements(arr: [Int], n: Int) -> [Int?] {
    var newArr: [Int?] = []
    for i in 0..<n {
        if i == arr.count {
            newArr.append(nil)
        } else {
            newArr.append(arr[i])
        }
    }
    return newArr
}

print(firstElements(arr: [1, 2, 3, 4, 5, 6, 7, 8, 9, 0], n: 11))

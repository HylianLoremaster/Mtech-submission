import Cocoa

func volumeDifference(cuboidA: [Int], cuboidB: [Int]) -> Int {
    var volA = cuboidA[0]
    var volB = cuboidB[0]
    var diff = 0
    
    for i in cuboidA.dropFirst() {
        volA *= i
    }
    
    for i in cuboidB.dropFirst() {
        volB *= i
    }
    
    if volA > volB {
        diff = volA - volB
    } else if volB > volA {
        diff = volB - volA
    }
    
    return diff
}

print(volumeDifference(cuboidA: [2, 2, 3], cuboidB: [2, 6, 1]))

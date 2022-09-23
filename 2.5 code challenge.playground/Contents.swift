import Cocoa
import Darwin

func pointDistance(x1: Double, x2: Double, y1: Double, y2: Double) -> Double {
    let bigX = pow((x2 - x1), 2)
    let bigY = pow((y2 - y1), 2)
    let bigNum = bigX + bigY
    let result = bigNum.squareRoot()
    return result
}

print(pointDistance(x1: 1, x2: 2, y1: 1, y2: 2))

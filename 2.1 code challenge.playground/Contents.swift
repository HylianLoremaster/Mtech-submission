import Cocoa
import Foundation

func areaOfCircle(radius: Int) -> Double {
    3.14 * pow(Double(radius), 2)
}

print(areaOfCircle(radius: 1))

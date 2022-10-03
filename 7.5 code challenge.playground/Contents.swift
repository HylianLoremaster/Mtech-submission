import Cocoa

func heron(a: Double, b: Double, c: Double) -> Double {
    let s = (a + b + c) / 2
    let positive = s * (s - a) * (s - b) * (s - c)
    let area = positive.squareRoot()
    return area
}

print(heron(a: 3, b: 4, c: 5))

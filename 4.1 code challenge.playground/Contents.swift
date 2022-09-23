import Cocoa

func stringy(size: Int) -> String {
    var binary = ""
    for num in 1...size {
        if num.isMultiple(of: 2) {
            binary.append("0")
        } else {
            binary.append("1")
        }
    }
    return binary
}

print(stringy(size: 5))

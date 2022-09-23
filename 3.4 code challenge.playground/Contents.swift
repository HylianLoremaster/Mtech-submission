import Cocoa

func rounding(numbers: String) -> String {
    var newNumber: String = ""
    for number in numbers {
        switch number {
        case "0", "1", "2", "3", "4":
            newNumber.append("0")
        case "5", "6", "7", "8", "9":
            newNumber.append("1")
        default:
            newNumber.append("*")
        }
    }
    return newNumber
}

print(rounding(numbers: "fds012345678909876543210fgh"))

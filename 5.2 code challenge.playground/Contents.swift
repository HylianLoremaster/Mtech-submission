import Cocoa

func getGrade(_ s1: Int, _ s2: Int, _ s3: Int) -> String {
    var letterGrade: String
    var avgScore: Int = (s1 + s2 + s3) / 3
    switch avgScore {
    case 0..<60:
        letterGrade = "F"
    case 60..<70:
        letterGrade = "D"
    case 70..<80:
        letterGrade = "C"
    case 80..<90:
        letterGrade = "B"
    case 90..<1000:
        letterGrade = "A"
    default:
        letterGrade = "No scores input"
    }
    return letterGrade
}

print(getGrade(59, 57, 53))

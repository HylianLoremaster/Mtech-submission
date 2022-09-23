import Cocoa

func millisecondsFromMidnight(hour h: Int, minutes m: Int, seconds s: Int) -> Int {
    var milliseconds = 0
    milliseconds += 1000 * s
    milliseconds += 1000 * 60 * m
    milliseconds += 1000 * 60 * 60 * h
    return milliseconds
}

print(millisecondsFromMidnight(hour: 0, minutes: 1, seconds: 1))

import Cocoa

func centuryOf(year: Int) -> Int {
    year / 100
}

print(centuryOf(year: 1705))
print(centuryOf(year: 1900))
print(centuryOf(year: 1601))
print(centuryOf(year: 2000))

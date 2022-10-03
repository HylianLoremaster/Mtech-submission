import Cocoa

func sheepWolf(queueOfSheep: [String]) {
    var wolfIndex: Int = 0
    for animal in queueOfSheep {
        if animal.capitalized == "Wolf" {
            break
        }
        wolfIndex += 1
    }
    let wolfQueueSpot = queueOfSheep.endIndex - wolfIndex
    if wolfQueueSpot == 1 {
        print("Pls go away and stop eating my sheep.")
    } else {
        print("Oi! Sheep number \(wolfQueueSpot - 1)! You're about to be eaten by a wolf!")
    }
}

func randomWolf(numberOfElements: Int) -> [String] {
    let wolf = Int.random(in: 1...numberOfElements)
    var array: [String] = []
    for i in 1...numberOfElements {
        if i == wolf {
            array.append("wolf")
        } else {
            array.append("sheep")
        }
    }
    return array
}

sheepWolf(queueOfSheep: randomWolf(numberOfElements: 3))

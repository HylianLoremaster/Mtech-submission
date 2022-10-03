import Cocoa

func indexAdd(nums: [Int], target: Int) -> [Int] {
    var indexes: [Int] = []
    
    for(i, num) in nums.enumerated() {
        indexes.append(i)
        for(j, num2) in nums.enumerated() {
            if(j != i && num + num2 == target) {
                indexes.append(j)
                return indexes
            }
        }
        indexes = []
    }
    return []
}

print(indexAdd(nums: [1, 2, 3, 4, 5, 6, 7, 8, 9], target: 5))

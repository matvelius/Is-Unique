import Foundation

let str = "asfdg"

var unique1 = true

// brute-force O(n^2) time / O(1) space solution
for char1 in str {
    let str2 = str[str.index(after: str.firstIndex(of: char1)!)...]
    for char2 in str2 {
        if char1 == char2 { unique1 = false }
    }
}

print("solution 1: \(unique1)")


// O(nlog(n)) time solution (space complexity depends on sorting algorithm... Swift's IntroSort is O(log(n))
var unique2 = true
var sortedString = str.sorted()

for index in (0..<sortedString.count - 1)  {
  if sortedString[index] == sortedString[index + 1] {
    unique2 = false
  }
}

print("solution 2: \(unique2)")

// O(n) time / O(1) space
func isUnique(str: String) -> Bool {
  let charSetLength = 128
  
  if str.count > charSetLength { return false }
  
  var alphabetArray = [Bool](repeating: false, count: charSetLength)

  for char in str {
    if let charASCIIVal = char.asciiValue {
      if alphabetArray[Int(charASCIIVal)] == true {
        return false
      }
      alphabetArray[Int(charASCIIVal)] = true
    }
  }
  
  return true
}

print("solution 3: \(isUnique(str: str))")

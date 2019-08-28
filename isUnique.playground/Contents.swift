import UIKit

let str = "Helo 3z"

var unique = true

// brute-force O(n^2) solution
for char1 in str {
    let str2 = str[str.index(after: str.firstIndex(of: char1)!)...]
    for char2 in str2 {
        if char1 == char2 { unique = false }
    }
}

print(unique)

//import UIKit

// String Concatenation
var myStr = "Hello," + " World!"

// String append
myStr += "!"

// Looping over a string
for myChar in myStr {
    print(myChar)
}


// String size
myStr.count

// String Interpolation
var x = 7
var math = "\(x)^2 is \(x^2) not \(x * x) because ^ is XOR."

// Checking for equality
let dave = "Dave"
let name = "Dave"
if name == dave {
    print("They are equal")
}




// Finding a String within a String
if let indexFound = name.index(of: "a") {
    print("Fount a at location \(indexFound.encodedOffset)")
}

if let rangeFound = name.range(of: "av") {
    print("Found av from \(rangeFound.lowerBound.encdedOffset) to \(rangeFound.upperBound.encdedOffset)")
}
// Finding a Character within a String





// Substrings
myStr.prefix(2)
myStr.suffix(6)
let startIndex = myStr.index(myStr.startIndex, offsetBy: 1)
let endIndex = myStr.index(myStr.startIndex, offsetBy: 8)

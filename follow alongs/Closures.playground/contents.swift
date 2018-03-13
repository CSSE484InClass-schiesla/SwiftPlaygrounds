var values = [10, 5, 2, 8, 3, 6, 1, 1000]

// Verbose Closure
var numValuesOver5 = values.reduce(0, { (runningTotal: Int, currentValue: Int) -> Int in
    return currentValue > 5 ? runningTotal + 1 : runningTotal
})




// Closure parameter name shorthand and trailing closure
var numValuesOver9 = values.reduce(0) { (runningTotal: Int, currentValue: Int) -> Int in
    return currentValue > 9 ? runningTotal + 1 : runningTotal
}

var numValuesOver9part2 = values.reduce(0) {
    $1 > 9 ? $0 + 1 : $0
}

// A Closure using a closure for a variable
func numValuesOverLimit(_ values: [Int], limit: Int) -> Int {
    return values.reduce(0) {
        return $1 > limit ? $0 + 1 : $0
    }
}

numValuesOverLimit(values, limit: 5)
numValuesOverLimit(values, limit: 9)


// Comparing func and closure syntax
func asAFunc(_ someString: String, _ someNumber: Int) -> String {
  return String(repeating: someString, count: someNumber)
}
let asAClosure = {(_ someString: String, _ someNumber: Int) -> String in
  return String(repeating: someString, count: someNumber)
}
asAFunc("Holy ", 3)
asAClosure("Holy ", 3)

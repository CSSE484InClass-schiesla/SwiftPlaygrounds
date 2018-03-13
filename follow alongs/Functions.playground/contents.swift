// Basic function
func stringRepeater(myStr originalString: String) -> String {
    return "AAA"
}

stringRepeater(myStr: "A")

func stringRepeater2(myStr originalString: String, _ repeatedCount: Int) -> String {
        var repeatedString = ""
        for _ in 0..<repeatedCount {
            repeatedString += originalString
        }
        return repeatedString
}


stringRepeater2(myStr: "A", 5)
stringRepeater2(myStr: "New York ", 2)


//stringRepeater("Ho! ", 3)
//stringRepeater("New York ", 2)




// Returning a tuple (multiple return values)
func stringLetterRepeater(_ originalString: String, _ repeatedCount: Int) -> (String, String) {
    var repeatedString = ""
    for _ in 0..<repeatedCount {
        repeatedString += originalString
    }
    var repeatedLetters = ""
    for letter in originalString {
        repeatedLetters += String(repeating: letter, count: repeatedCount)
    }
    return (repeatedString, repeatedLetters)
}




var collated : String, uncollated : String
(collated, uncollated) = stringLetterRepeater("Ow! ", 4)
collated
uncollated







// Internal/External names plus Optional parameters
//func stringDoubler(_ originalString: String, AlternativeMultiplue repeatedCount: Int) -> String {
//var repeatedString = ""
 //   for _ in 0..<repeatedCount {
 //       repeatedString += originalString
 //   }
  //  return repeatedString
//}





//stringDoubler("Woof! ", alternativeMultiple: 3)
//stringDoubler("Jingle Bells! ")

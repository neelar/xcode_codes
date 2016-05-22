// Lab #1 - Swift 101
// Xiaomei Huang, Rakesh Neela
// May 17, 2016

import UIKit

// Problem 1
var myString = "hello"
var cost = 3.14
let cnt: Int = 2
var shouldWe: Bool = true
let theValue = UInt16(11)
let number = Int("1010",radix:2)

// Problem 2
var newString = "\(myString)  number + \(cost)"


// Problem 3
var beeType: [String] = ["queen","worker", "drone"]
print(beeType[0])
beeType.append("honey")
beeType += ["are","us"]

// Problem 4
for item in beeType {
    print("\(item)")
}

for (index, item) in beeType.enumerate(){
    print("Item \(index) is  \(item)")
}


// Problem 5
var myDict: Dictionary<String,Double> = ["Mark Twain": 8.9, "Nathaniel Hawthorne": 5.1, "John Steinbeck": 2.3, "C.S Lewis": 9.9, "Jon Krakaur": 6.1]

// Problem 6
myDict["John Steinbeck"]
myDict["Erik Larson"] = 9.2
if ( myDict["John Krakaur"] > myDict["Mark Twain"]){
    print("John Krakaur")
}else{
    print("Mark Twain")
}


// Problem 7
for (name, score) in myDict{
    print("\(name): \(score)")
}


// Problem 8
for index in 1...10 {
    print("\(index)")
}


//Problem 9
var k : Int
for k = 10; k >= 1; k -= 1 {
    print("\(k)")
}



// Problem 10
var x = 4
var y = 5
var ans = 0
for _ in 1...y{
    ans += x
}
print(ans)


// Problem 11
let allValues = Array(myDict.values)
var sumValues = 0.0
var m = 0
while( m < allValues.count){
    sumValues = sumValues + allValues[m]
    m = m + 1
}
var dicCounts : Double = Double(myDict.count)
var avgValue = sumValues / dicCounts

// Problem 12
if(avgValue < 5.0){
    print("Low")
}
else if((avgValue >= 5.0) && (avgValue < 7.0)){
    print("Moderate")
}
else{
    print("High")
}


// Problem 13
var count = 0
var strOut : String
switch count {
case 0 :
    strOut = "none"
case 1...3:
    strOut = "a few"
case 4...9:
    strOut = "sereral"
case 10...99:
    strOut = "tens of"
case 100...999:
    strOut = "hundreds of"
case 1000...999999:
    strOut = "thousands of"
default:
    strOut = "millions of"
}


// Problem 14
func verbalizeNumber (nums: Int) -> String {
    switch nums {
    case 0 :
        strOut = "none"
    case 1...3:
        strOut = "a few"
    case 4...9:
        strOut = "sereral"
    case 10...99:
        strOut = "tens of"
    case 100...999:
        strOut = "hundreds of"
    case 1000...999999:
        strOut = "thousands of"
    default:
        strOut = "millions of"
    }
    return strOut
}
print(verbalizeNumber(9898))


// Problem 15
for var index = 1; index <= 100_000_000; index *= 10 {
    print("\(index): " + verbalizeNumber(index))
}


// Problme 16
func verbalizeAndShoutNumber (nums: Int) -> String {
    switch nums {
    case 0 :
        strOut = "none"
    case 1...3:
        strOut = "a few"
    case 4...9:
        strOut = "sereral"
    case 10...99:
        strOut = "tens of"
    case 100...999:
        strOut = "hundreds of"
    case 1000...999999:
        strOut = "thousands of"
    default:
        strOut = "millions of"
    }
    return strOut.uppercaseString
}
verbalizeAndShoutNumber(99)


// Problem 17
func expressNumbersElegantly(max: Int, verbalizerFunction: (Int) -> String) -> String {
    
    var exprs = ""
    var count = 1
    repeat {
        exprs += " \(count) : " + verbalizerFunction(count) + "\n"
        count *= 10
        
    } while (count < max)
    
    return exprs
}
var verbal: (Int) -> String = verbalizeAndShoutNumber
expressNumbersElegantly(1000, verbalizerFunction: verbal)

verbal = verbalizeNumber
expressNumbersElegantly(10000, verbalizerFunction: verbal)



// Problem 18
func expressNumbersVeryElegantly(maxIndex max: Int, verbalize f: (Int) -> String) -> String {
    var exprs = ""
    var count = 1
    repeat {
        exprs += " \(count) : " + f(count) + "\n"
        count *= 10
    } while (count < max)
    return exprs
}

expressNumbersVeryElegantly(maxIndex: 1000, verbalize:verbalizeAndShoutNumber)

expressNumbersVeryElegantly(maxIndex: 10000, verbalize: verbalizeNumber)




// Problem 19
var famousLastWords = ["the cow jumped over the moon.", "three score and four years ago", "lets nuc 'em Joe!", "ah, there is just something about Swift"]

func toUpper (sentence: String) -> String{
    return String(sentence.characters.first!).capitalizedString + String(sentence.characters.dropFirst())
}

famousLastWords.map(toUpper)



// Problem 20


enum StudyState {
    case Curious
    case Frustrated
    case Excited
    case Confidence
}

var myStudyState = StudyState.Curious
switch myStudyState {
case .Curious: print("I'm planing to learn swift and use it to develop my own apps! I'm so \(myStudyState) for it")
case .Frustrated: print("I'm so \(myStudyState) to see my program crash! ")
case .Excited: print("I'm so \(myStudyState) to successfully write my own apps! ")
default:
    print ("The more I learned, the more confidence I have! ")
}





import UIKit

let b = 10
var a = 5

a = b

let (x,y) = (1,2)

// let 2 = z

if a == b {
    print("a and b values are equal")
}

1+2
5-3
2*3
10.0/2.5

"Hello " + "World"

// Euclidean algorithm
// D/d -> D == d*Q+r
9/4 // Quotient (Q)
9%4 // Remainder (r)

9 == 4*2+1

-9/4 // 9 == -2*4 + (-1)

let five = 5
let minusfive = -five
let plusFive = -five

let minusSix = -6
let alsoMinusSix = +minusSix

var number = 5
number += 3 // number = number + 3
number -= 2 // number = number - 2
number *= 3 // number = number * 3
number /= 2 // number = number / 2

1 == 1
1 == 2
1 != 2
2 > 1
2 < 1
2 >= 1
1 >= 1
2 <= 1

let name = "Eduardo Olivas"

if name == "Jonathan Meixueiro" {
    print("Welcome \(name) you're invited to party")
} else {
    print("Be careful, we've got a wild \(name)")
}

// it compares the numbers
(1, "Jonathan Meixueiro") < (2, "Eduardo Olivas")

//it compares strings in the alphabet
(3,"Eduardo Olivas") < (3,"Jonathan Meixueiro")
(3, "Jonathan") < (3,"Eduardo Olivas")
(4,"perro") == (4,"perro")

//Bool only can be compared with equal operator (==)
("perro", false) == ("perro", true)

//Exercise
let myData = (name: "Jonathan Meixueiro", age: 28)
let professorData = (name: "Juan Gomila", age: 33)

myData.age == professorData.age
myData.age > professorData.age
myData.age > professorData.age

/*
 if question {
    answer1
 } else {
    answer2
 }
 */

let contentHeight = 40
var hasImage = true
var rowHeight = 0

/*
if hasImage {
    rowHeight = contentHeight + 50
} else {
    rowHeight = contentHeight + 10
}
*/

rowHeight = contentHeight + (hasImage ? 50 : 10)

// Nil Coalescing
let defaultAge = 18
var userAge : Int?

userAge = 28

var ageToBeUsed = userAge ?? defaultAge
// ageToBeUsed = (userAge != nil ? userAge! : defaultAge)

let defaultColorName = "red"
var userColorName : String?

userColorName = "green"

var colorNameToUse = userColorName ?? defaultColorName

//Exercise Nil Coalescing
let aliasHeroName = "Superman"
var realNameKnown : String?

realNameKnown = "Clark Kent"

var realHeroIdentity = realNameKnown ?? aliasHeroName

//RANGES
//Closed Range
for idx in 1...5 {
    print(idx)
}
//Open Range
for idx in 1..<5 {
    print(idx)
}

let dcHeroes = ["Superman", "Batman", "Flash"]

for i in 0..<dcHeroes.count {
    print("Hero \(i+1) is \(dcHeroes[i])")
}

for hero in dcHeroes[1...] {
    print(hero)
}

for hero in dcHeroes[..<2] {
    print(hero)
}

let range = ...5 // -infinity ... 5
range.contains(7)
range.contains(4)
range.contains(-2)

// Exercise Ranges
var number1 : Int32 = 0
var number2 : Int32 = 1_000_000

//From Start to End
let range1 = number1...number2

print(range1.first!)
    range1.contains(-1)
    range1.contains(0)
    range1.contains(1_000_000)
    range1.contains(1_000_001)
print(range1.last!)

//From Start without Ending
let range2 = number1..<number2

print(range1.first!)
    range2.contains(-1)
    range2.contains(0)
    range2.contains(1_000_000)
    range2.contains(1_000_001)
print(range2.last!)

//Reach Ending without a Beggining
let range3 = ...number2

    range3.contains(-1)
    range3.contains(0)
    range3.contains(1_000_000)
    range3.contains(1_000_001)

//From Start to infinity

let range4 = number1...

    range4.contains(-1)
    range4.contains(0)
    range4.contains(1_000_000)
    range4.contains(1_000_001)

// LOGIC OPERATORS
let allowEntry = false

if !allowEntry {
    print("DENIED ACCESS")
}

let enterCodeDoor = true
let passRetinaScan = true

if enterCodeDoor && passRetinaScan { //AND
    print("Welcom Mr. Stark")
} else {
    print("DENIED ACCESS")
}

let hasMoney = true
let hasInvitation = false

if hasMoney || hasInvitation {
    print("Welcome to the party")
} else {
    print("GET OUT... You're not welcome")
}

if enterCodeDoor && passRetinaScan
    || hasMoney
    || hasInvitation {
    print("You're in")
} else {
    print("You had no access")
}

//Exercise Logic Operators

//iOS developer
var macComputer = true
var knowProgramming = true
let OSRequired = "MacOS"
let langKnown = "Swift"


if macComputer && knowProgramming
    && knowProgramming
    && OSRequired == "MacOS"
    && langKnown == "Swift"{
    print("Congrats, you can already be an iOS Developer")
    
} else if macComputer && knowProgramming
            && knowProgramming
            && OSRequired == "MacOS"
            && langKnown != "Swift" {
            print("You only need to learn Swift to be an iOS Developer")
}
    else {
    print("You are missing out something important to be an iOS developer")
}
    

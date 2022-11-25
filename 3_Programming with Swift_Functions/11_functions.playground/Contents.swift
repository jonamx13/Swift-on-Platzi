import UIKit

func greeting(person: String) -> String {
    let greet = "Bienvenue \(person)!"
    return greet
}

greeting(person: "Jonathan Meixueiro")
greeting(person: "Eduardo Olivas")
greeting(person: "Juan Gomila")

//Input parameters
func sayHelloWorld() -> String {
    return "Hello World"
}

sayHelloWorld()
sayHelloWorld()
sayHelloWorld()


func greeting(person : String, isMale : Bool) -> String {
    if isMale {
        return "Welcome, Mr. \(person)"
    } else {
        return "Welcome, Mrs. \(person)"
    }
}

greeting(person: "Jonathan", isMale: true)
greeting(person: "Ketzalli", isMale: false)

// Exercise
func greeting(person : String, isMale: Bool, age : UInt8) -> String {
    let personTitle : String
    let personAge = age
    
    switch personAge {
    case 0...18 where isMale:
        personTitle = "Boy"
    case 0...18 where isMale == false:
        personTitle = "Miss"
    case 19...UInt8.max where isMale:
        personTitle = "Mr."
    case 19...UInt8.max where isMale == false:
        personTitle = "Ma'am."
    default:
        personTitle = ""
        
    }
    
    return "Welcome \(personTitle) \(person)"
}

greeting(person: "Jonathan", isMale: true, age: 28)
greeting(person: "Ketzalli", isMale: false, age: 28)
greeting(person: "Jonathan", isMale: true, age: 10)
greeting(person: "Ketzalli", isMale: false, age: 10)

//Values: Return, Optionals and Output Parameters
//Void functions
func greet2(person: String) {
    print("Hello \(person)")
}

greet2(person: "Jonathan")
greet2(person: "Eduardo")

//Return functions
func printAndCount(string : String) -> Int {
    print(string)
    return string.count
}

func printWithoutCounting(string: String) {
    let _ = printAndCount(string: string) //Underscore when we won't be using a variable for anything else
}

printAndCount(string: "Hello World") // Returns count
printWithoutCounting(string: "Hello World") // It doesn't return anything (void function)

func minMax(array: [Int]) -> (min: Int, max: Int)? {
    if array.isEmpty { return nil }
    
    var currentMin = array[0]
    var currentMax = array[0]
    
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}

let rndArray = [9,2,5,87,3,2,76,8,11,-3,-90]
let bounds = minMax(array: rndArray)

print("The min value is \(bounds!.min) and max value is \(bounds!.max)")
minMax(array: []) // returns nil

//Param tags
func someFunction(f1 firstParamName: Int, f2 secondParamName: Int = 6) {
    //firstParamName is a type Int variable
    //secondParamName is a type Int variable
    print(firstParamName + secondParamName)
}

someFunction(f1: 1, f2: 5)
someFunction(f1: 10)

//Empty tag
func greeting(_ person: String, from hometown: String) -> String {
    return "Hello, a pleasure that you visit us from \(hometown)"
}

greeting("Jonathan Meixueiro", from: "Chihuahua")

//Variadic Params :: it receives and indefinite num of parameters
func mean(_ numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}

func anotherMean(_ numbers: [Double]) -> Double {
    var total: Double = 0
    
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}
let arrayNum: [Double] = [1,5,6,7]
let a = 10.0
let b = 20
let c = 30.0

mean(a,Double(b),c,arrayNum[3])
anotherMean(arrayNum)
anotherMean([1,5,6,7])
mean(1.0,2,3,4,5)
mean(1.5, 1.4)
mean(3, 5.5, 9, 32.4)
//Exercise
//Geometric mean
func geometricMean(_ numbers: Double...) -> Double {
    var total: Double = 1
    var exp = Double(numbers.count)
    
    //Calculate total number and build array
    for number in numbers {
        total *= number
    }
    return pow(total, 1/(Double(exp)))
}

print(geometricMean(100,140,200))

//inout parameters
var x = 5
func addOne(to number: inout Int) -> Void {
    number += 1
    print("Value of number is now \(number)")
}

addOne(to: &x)
addOne(to: &x)


func swapTwoInts(_ a: inout Int, _ b: inout Int) {
    let tempA = a
    a = b
    b = tempA
}

//& means its a pointer, so its a referenced value not a copy
var someInt = 8
var anotherInt = 2
print("someInt equals to \(someInt), and anotherInt equals to \(anotherInt)")
swapTwoInts(&someInt, &anotherInt)
print("someInt equals to \(someInt), and anotherInt equals to \(anotherInt)")

//Function types
func addTwoInts(a: Int, b: Int) -> Int {
    return a+b
}
// (Int, Int) -> Int

func multiplyTwoInts(a: Int, b: Int) -> Int {
    return a*b
}
// (Int, Int) -> Int

func printHW() {
    print("Hello world")
}
// () -> Void

var mathFunction: (Int, Int) -> Int = addTwoInts
mathFunction(4,5)

func printMathResult(_ mathFunc: (Int, Int) -> Int, _ a: Int, _ b: Int ) {
    print("Result is: \(mathFunc(a,b))")
}

printMathResult(multiplyTwoInts(a:b:), 4, 9)

func stepForwardOut(_ input: Int) -> Int {
    return input + 1
}

func stepBackwardOut(_ input: Int) -> Int{
    return input - 1
}

stepForwardOut(5)
stepBackwardOut(5)

func chooseStepFunctionOut(backward: Bool) -> (Int) -> Int {
    return backward ? stepBackwardOut : stepForwardOut
}


func countDown(_ value: inout Int) {
    var moveNearerZero = chooseStepFunctionOut(backward: value > 0)
    while value != 0 {
        print("\(value)...")
        value = moveNearerZero(value)
    }
    print("Zero!!!")
}

var value = -7
countDown(&value)
print(value)

// Nested functions
func countDownNest(_ value: Int) {
    func chooseStep(backward: Bool) -> (Int) -> Int {
        func stepForward(_ input: Int) -> Int {
            return input + 1
        }

        func stepBackward(_ input: Int) -> Int{
            return input - 1
        }
        
        return backward ? stepBackward : stepForward
    }
    
    var thisValue = value
    var moveNearerZero = chooseStep(backward: thisValue > 0)
    while thisValue != 0 {
        print("\"\(thisValue)\"")
        thisValue = moveNearerZero(thisValue)
    }
    print("Zero!!!")
    
}

countDownNest(9)

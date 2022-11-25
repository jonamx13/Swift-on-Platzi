import UIKit

//1.- Global functions
//2.- Nested functions

let names = ["Kratos", "Atreus", "Laufaye", "Mimir", "Brok", "Sindri", "Freya", "Tyr"]

func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}

var reversedNames = names.sorted(by: backward)
print(reversedNames)

/* MARK: **Closure syntax**
 
 { (params) -> return type in
    // code to execute
    
 }
 */

//First closure iteration
reversedNames = names.sorted(by: { (s1: String, s2: String) -> Bool in return s1 > s2 } )
print(reversedNames)

//Second closure iteration
reversedNames = names.sorted(by: { s1, s2 in return s1 > s2 } )
print(reversedNames)

//Third iteration
reversedNames = names.sorted(by: { s1, s2 in s1 > s2 } )
print(reversedNames)

//Fourth iteration
reversedNames = names.sorted(by: { $0 > $1 } )
print(reversedNames)

//Fifth iteration
reversedNames = names.sorted(by: >)
print(reversedNames)

//Trailing closures

func someFunctionThatTakesAClosure(closure: () -> Void) {
    //Function body here
}

someFunctionThatTakesAClosure(closure: {
    //Closure body here
})

someFunctionThatTakesAClosure {
    //Add closure here
}

reversedNames = names.sorted {$0>$1}

let digitNames = [0: "Cero", 1:"Uno", 2:"Dos", 3:"Tres", 4:"Cuatro",
                  5:"Cinco", 6:"Seis", 7:"Siete", 8:"Ocho", 9:"Nueve"]

let numbers = [-16, 58, 510, -2127, -32, 389]

let numberStrings = numbers.map { (number) -> String in
    let isNegative = number < 0 ? true : false
    
    var number = isNegative ? abs(number) : number
    var output = ""
    
    repeat {
        output = digitNames[number%10]! + output
        number /= 10
    } while number > 0
    return isNegative ? "(-)\(output)" : output
}

//Capturing closures

func makeIncrementer(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    func incrementer() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementer
}

let incrementByTen = makeIncrementer(forIncrement: 10)
incrementByTen()
incrementByTen()
incrementByTen()

let incrementBySeven = makeIncrementer(forIncrement: 7)
incrementBySeven()
incrementBySeven()
incrementBySeven()

incrementByTen()

//Escaping closures

var completionHandlers: [() -> Void] = []

func someFunctionWithEscapingClosures(completionHandler: @escaping () -> Void ) {
    completionHandlers.append(completionHandler)
}

func someFunctionWithNonEscapingClosures(closure: () -> Void) {
    closure()
}

class SomeClass {
    var x = 10
    func doSomething() {
        someFunctionWithEscapingClosures {
            self.x = 100
        }
        someFunctionWithNonEscapingClosures {
            x = 200
        }
    }
}

let instance = SomeClass()
print(instance.x)

instance.doSomething()
print(instance.x)

completionHandlers.count
completionHandlers.first?()
print(instance.x)

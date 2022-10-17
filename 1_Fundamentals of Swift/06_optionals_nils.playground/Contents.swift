import UIKit

let possibleAge: String = "31"
let convertedAge = Int(possibleAge) // Int? Optional Int

var serverResponseCode: Int? = 404
serverResponseCode = nil

var surveyAnswer: String?

surveyAnswer = "42"


if convertedAge != nil {
    print("La edad del usuario no es nula: \(convertedAge!)")
} else {
    print("La edad del usuario es nula")
}

// Optional Binding
if let actualAnswer = surveyAnswer {
    // Reaching this point, surveyAnswer != nil
    print("El string \(surveyAnswer) tiene el valor de \(actualAnswer)")
} else {
    // Reaching this point, surveyAnswer = nil
    print("El string survey \(surveyAnswer) es nil...")
}

//Chained Optional Bindings
if let firstNumber = Int("4"),
    let secondNumber = Int("42"),
    firstNumber < secondNumber && secondNumber<100{
    print("\(firstNumber) < \(secondNumber) < 100")
} else {
    print("Hola")
}

//Implicit Unwrap

let possibleString: String? = "Un string opcional"
let forcedString: String = possibleString!

let assumedString: String! = "Un string unwrapped de forma implicita a partir de un optional"
let implicitString: String = assumedString

if assumedString != nil {
    print(assumedString!)
}

if let definitiveString = assumedString {
    print(definitiveString)
}

print(assumedString)

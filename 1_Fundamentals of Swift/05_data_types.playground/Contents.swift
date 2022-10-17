import UIKit

let orangesAreOrange = true
let foodIsDelicious = false

var isAged : Bool

isAged = false

if isAged { //Solo entramos aquí, si isAged == true
    print("Puedes entrar en la fiesta")
} else { //Solo entramos aquí si isAged == false
    print("No puedes pasar a la fiesta")
}

/*
 var age: Int = 31

if age >= 18 {
    print("Puedes entrar en la fiesta")
}
*/

//TUPLAS
let http404Error = (404, "Página no encontrada")
let (statusCode, statusMessage) = http404Error
print("El código del estado es \(statusCode)")
print("El mensaje del servido es \(statusMessage)")

let (justStatusCode, _) = http404Error
print("El código del estado es \(justStatusCode)")

print("El código del error es \(http404Error.0) y el mensaje es \(http404Error.1)")

let http200Status = (statusCode: 200, description: "OK")
print("El código del estado es \(http200Status.statusCode) y el mensaje es \(http200Status.description)")

//Exercise Tuples

let myself = (name: "Jonathan", age: 28, lastName: "Meixueiro")
let (name, age, lastName) = myself

print("Hello, my name is \(myself.name) \(myself.lastName) and I am \(myself.age) years old")

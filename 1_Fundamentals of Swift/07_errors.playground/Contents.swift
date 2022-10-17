import UIKit

func canThrowError() throws {
    //Here there's code that can throw error
    
}

do {
    try canThrowError()
    // if we reach this point, there's no error
} catch {
    // if we reach this point, there's an error...
}

////////////////////////////////////////////////////////////////

//Mininum requirements to make a sandwich
var cleanDishes : UInt8 // at least 1
var ingredientsAvailable : UInt8 // at least 5
var amIHungy : Bool! // True

enum sandwichTroubles : Error {
    case dirtyDishes
    case ingredientsMissing
    case notHungry
}

//userChoices
cleanDishes = 0
ingredientsAvailable = 4
amIHungy = false


func makeASandwich() throws{
    if cleanDishes < 1 {
        throw sandwichTroubles.dirtyDishes
    }
    if ingredientsAvailable < 5 {
        throw sandwichTroubles.ingredientsMissing
    }
    if amIHungy == false {
        throw sandwichTroubles.notHungry
    }
    
    if cleanDishes >= 1 && ingredientsAvailable >= 5 && amIHungy == true {
        print("Yumm!!! I am eating a sandwich")
    }
        
}

do {
    try makeASandwich()
    // I eat my sandwich
} catch(sandwichTroubles.dirtyDishes) {
    // Do I have clean dishes? -> Wash the dishes
    print("I have to clean at least 1 dish")
    
} catch(sandwichTroubles.ingredientsMissing) {
    // Do I have ingredients? -> Grocery shopping
    print("Let's go to a groceries store")
    
} catch(sandwichTroubles.notHungry) {
    print("I'll eat later, I'm not")
}



// Assertions(only on debug stage) Preconditions(even for build stage)

var age = 5
// age = -1
// assert(age >= 0, "Age cannot be a negative value")
// precondition(age >= 0, "Age cannot be a negative value")
// Here it keeps running

if age > 10 {
    print("You can jump on the roller coaster")
} else if age >= 0 {
    print("You aren't old enough for roller coasters")
} else {
    assertionFailure("Age cannot be a negative value") //Fatal error
}


//Excercise
//UFC Feather weight limits (136–145 lb)

let featherWeightLimits = (136, 145)
let (minWeight, maxWeight) = featherWeightLimits
let unitsWeight : String = "lb"

var fighterWeight: Int16
fighterWeight = 140

//assert(fighterWeight <= featherWeightLimits.1, "Fighter is overweighted and disqualified")
//precondition(fighterWeight <= featherWeightLimits.1, "Fighter is overweighted and disqualified")

if fighterWeight >= featherWeightLimits.0 && fighterWeight <= featherWeightLimits.1 {
    print("Fighter is in range to keep the fighting")
} else if fighterWeight < featherWeightLimits.0 {
    print("Fighter has a limit of two hours to bulk up or the fight is gonna call off")
} else {
    assertionFailure("Fighter is overweighted and disqualified")
}

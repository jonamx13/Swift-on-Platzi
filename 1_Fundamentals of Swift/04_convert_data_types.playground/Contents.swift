import UIKit

let twoThousand: UInt16 = 2_000
let one: UInt8 = 1
// Casting let one to UInt16
let twoThousandAndOne = twoThousand + UInt16(one)

let three = 3
let decimalNumber = 0.14159
let piNum = Double(three) + decimalNumber

//Downcasting // Truncamiento
let integerPi = Int(piNum)

//Type Alias
typealias AudioSample = UInt16

var maxAmplitude = AudioSample.max // UInt16.max

//Using type alias as data typing
var currentAudioSample: AudioSample = 1589

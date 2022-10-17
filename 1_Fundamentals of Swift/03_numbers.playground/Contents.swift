import UIKit

let age : UInt8 = 31

// Unsigned Int8
let minValue8Unsigned = UInt8.min //2^0-1
let maxValue8Unsigned = UInt8.max //2^8-1
// Signed Int8
let minValue8Signed = Int8.min
let maxValue8Signed = Int8.max

//Unsigned Int16
let minValue16Unsigned = UInt16.min
let maxValue16Unsigned = UInt16.max
//Signed Int16
let minValue16Signed = Int16.min
let maxValue16Signed = Int16.max

//Unsigned Int32
let minValue32Unsigned =  UInt32.min
let maxValue32Unsigned = UInt32.max
//Signed Int32
let minValue32Signed = Int32.min
let maxValue32Signed = Int32.max

//Unsigned Int64
let minValue64Unsigned = UInt64.min
let maxValue64Unsigned = UInt64.max
//Signed Int64
let minValue64Signed = Int64.min
let maxValue64Signed = Int64.max

let f1: Float = 3.14159265 // Float only 6 decimals
let d1: Double = 3.14159265 // Float up to 15 decimals

let meaningOfLife = 42 // Int
let pi = 3.14159 // Double
let anotherPi = 3 + 0.14159 // Double

//Literales numericos

let decimalInteger = 17 // 1*10^1 + 7
let binaryInteger = 0b10001 // 1*2^4+0*2^3+0*2^2+0*2^1+1+1*2^0
let octalInteger = 0o21 // 2*8^1+1*8^0
let hexadecimalInteger = 0x11 //1*16^1+1*16^0

let decimalDouble = 12.1875
let exponentialDouble = 1.21875e1
let hexadecimalDouble = 0xC.3p0

let paddedDouble = 000123.456
let someNumber = 00000097.540

//Separador visual de digitos con _
let oneMillion = 1_000_000
let justMoreThanAMillion = 1_000_000.000_000_1

//ERRORES DE TIPO DE DATO
//let cannotBeNegative: UInt8 = -1
//let tooBig: UInt8 = UInt.max + 1

//Exercise Birthday

//Decimal
let decimalDay = 13
let decimalMonth = 7
let decimalYear = 1994

print("My decimal birthday is: \(decimalDay)th","0\(decimalMonth)","\(decimalYear).", separator: "/", terminator: "\n")

//Binary
let binaryDay = 0b01101
let binaryMonth = 0b0111
let binaryYear = 0b0_11111_001010

print("My binary birthday is: \(binaryDay)th","0\(binaryMonth)","\(binaryYear).", separator: "/", terminator: "\n")

//Octal
let octalDay = 0o15
let octalMonth = 0o7
let octalYear = 0o3712

print("My octal birthday is: \(octalDay)th","0\(octalMonth)","\(octalYear).", separator: "/", terminator: "\n")

//Hexadecimal
let hexadecimalDay = 0xD
let hexadecimalMonth = 0x7
let hexadecimalYear = 0x7CA

print("My hexadecimal birthday is: \(binaryDay)th","0\(binaryMonth)","\(binaryYear).", separator: "/", terminator: "\n")

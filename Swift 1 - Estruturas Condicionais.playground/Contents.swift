import UIKit

var greeting = "Hello, playground"

// if - else
var hasHeadache: Bool = false
var humor: String = ""
if hasHeadache {
    humor = "Muito doido"
} else{
    humor = "felizao"
}

let number = 11
if number % 2 == 0 {
    print("Ele é par")
} else {
    print("Ele é impar")
}

var temperature = 27
var climate = ""
if temperature <= 0 {
    climate = "muy fri"
} else if temperature < 26{
    climate = "fri"
} else if temperature < 28 {
    climate = "normal"
} else {
    climate = "calorzao"
}

let letterInsert = "I"
let letter = letterInsert.lowercased()
var letterType = ""
if letter == "a" || letter == "e" || letter == "i" || letter == "o" || letter == "u" {
    letterType = "vogal"
} else {
    letterType = "Consoante"
}


//Switch
switch letter {
case "a","e","i","o","u" :
    letterType = "vogal"
default:
    letterType = "consoante"
}

let speed = 95.0
switch speed{
case 0.0..<20.0:
    print("primeira marcha")
case 20.0..<80:
    print("diferenciado")
case 80.00..<200:
    print("morrer, morreu")
default:
    print("liga o motor ai, moral.")
}


//closed range e half-closed range é um intervalo
// .... (closed range)
// ..< (half-closed range)

let range0_10 = 0...10
let rande0_9 = 0..<10

//
let firstLetter = "e"

switch firstLetter {
case "a"..."f":
    print("Você está no 1° semestre")
case "g"..."l":
    print("Você está no 2° semestre")
case "m"..."r":
    print("Você está no 3° semestre")
default:
    print("Você está no 4° semestre")
}

import UIKit

var greeting = "Hello, playground"
 
//int, float, double, character, string, bool

//Booleans
var isFirtTime: Bool = false
var likesFruits = true

//Int
var age: Int = 25
var newAge = 42

//UInt //Unsigned Int (só aceite numeros inteiros positivos)
var positive: UInt = 39

//Float ->32bit
var dolar: Float = 3.5

//Double -> 64bit
let longNumber: Double = 5.46424166424

//Character
var gender: Character = "M" //"f"
var enter: Character = "\n"

//String
var newGender = "M"
let student = "\"Dr.\" Paulo Muzy"
let firstName = "Bruno"
let lastName = "Silva"
//let fullName = firstName + " " + lastName
let fullName = "\(firstName) \(lastName) - Idade: \(age) anos"
print(fullName)
print("A variavel fullName tem \(fullName.count) caracteres")
print("""
      Olá, espero que esteja gostando do curso.
                Ainda tem muito mais pela frente!
""")

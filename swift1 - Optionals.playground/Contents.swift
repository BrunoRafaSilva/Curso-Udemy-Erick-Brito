import UIKit

var greeting = "Hello, playground"

var rg: Int = 15656
var driverLicense: Int?

//driverLicense = 68594166

//print("A minha carteira de motorista é", driverLicense!) //Desembrulhando o Optional(unwrap) se não tiver valor preenchido, irá dar erro fatal

//Optional binding
if let driverL = driverLicense {
    print("A minha carteira de motorista é:", driverL)
} else {
    print("Não possuo carteira de motorista")
}

let addressNumber = Int("100A")
if let addressNumber = addressNumber {
    print(addressNumber)
}else {
    print("Insira somente números.")
}

//Nil coaliscing operator (Operador de coalescência nula)
let number: String = "578a"
let adressNumber2 = Int(number) ?? 0
print(adressNumber2)

//implicit: unwrapped optionals
var name: String!
name = "Little John"
print(name.count)
if name != nil {
    print(name)
}

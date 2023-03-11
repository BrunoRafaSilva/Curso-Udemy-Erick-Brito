for day in 1...30 {
    print("Estou no dia \(day) de Setembro")
}


let students = [
        "João Fagundes",
        "Felipe Teto",
        "Antonio Nunes",
        "Manoel de Nobrega",
        "Francisco Javier"
]

for student in students {
    print("O aluno \(student) veio na aula de hoje!")
}

let name = "Bruno Rafael Lucena da Silva"
//for letter in name.characters {
//    print(letter)
//}

for letter in name {
    print(letter)
}

for (index,letter) in name.enumerated() {
    print(index, letter)
}

let people = [
    "Paulo": 25,
    "Renata": 18,
    "kleber": 33,
    "Eric": 39,
    "Carol":36
]

for person in people {
    print(person.key, person.value)
}


//WHILE
var life = 10
while life > 0 {
    print("The player is with \(life) lifes")
    life = life - 1
}


import Foundation

var megaSena: [Int] = []
while megaSena.count < 6 {
    let number = Int(arc4random_uniform(60)+1)
    if !megaSena.contains(number){
        megaSena.append(number)
    }
}
print(megaSena.sorted())



var tries = 0
var diceNumber = 0
repeat{
    tries += 1
    diceNumber = Int(arc4random_uniform(6)+1)
} while diceNumber != 6
print("You got 6 after \(tries) attempts!")

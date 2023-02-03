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

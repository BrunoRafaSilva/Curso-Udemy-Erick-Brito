//Funções

/*
func nome(parametro: Tipo) -> TipoDeRetorno {
    Códigos e comandos
    
    
    return TipoDeRetorno
}
*/

func sayHello() {
    print("Hello")
}
sayHello()

func say(message: String) {
    print(message)
}

say(message: "Bom dia!")

func say(message: String, to: String) -> String {
    return message + ", " + to
    //print(message, to)
}

let setence = say(message: "Boa noite", to: "Caroline")
print(setence)

//o underscore define que o nome externo não existe e com isso é possivel utilizar argumentos apenas utilizando o espaço entre as virgulas
func sum(_ a: Int, b: Int) -> Int {
 return a + b
}
print(sum(10, b: 20))


//ao inserir "by" ele vira o o parametro externo e o segundo o interno
func multiply(_ number1: Int, by number2: Int) -> Int{
    return number1 + number2
}

print(multiply(20, by: 20))

//definindo um "range" coleção de números = array.
func sum(_ initialValue: Int, withValues values: Int...) -> Int {
    var result = initialValue
    for value in values {
        result += value
    }
    return result
}

print(sum(2, withValues: 5, 6, 8))


import Foundation

let studentData = "Eric Alves Brito:39"

func getStudentInfo(_ data: String) -> (name: String, age: Int) {
    let info = data.components(separatedBy: ":")
    let studentName = info[0]
    let studentAge = Int(info[1])
    return (studentName, studentAge!)
}

let student = getStudentInfo(studentData)
print(student)
print(student.name)
print(student.age)

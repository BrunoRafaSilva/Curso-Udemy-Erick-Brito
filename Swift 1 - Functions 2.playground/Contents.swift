//Funções 2

//First Class Citizen - Cidadão de Primeira Clase
func sum(_ a: Int, _ b:Int) -> Int {
    return a + b
}

func subtract(_ a: Int, _ b:Int) -> Int {
    return a - b
}

func divide(_ a: Int, _ b:Int) -> Int {
    return a / b
}

func multiply(_ a: Int, _ b:Int) -> Int {
    return a * b
}

//Todas as funções acima tem o mesmo tipo, que é uma operação entre dois inteiros
//Dando um apelido para Int
//typealias Inteiro = Int

typealias Op = (Int,Int) -> Int

func applyOperation(_ a: Int, _ b: Int, operation: Op) -> Int{
    return operation(a, b)
}

let result = applyOperation(10, 20, operation: divide)

func getOperation(_ operation: String) -> Op {
    switch operation {
    case "soma":
        return sum
    case "subtração":
        return subtract
    case "multiplicação":
        return multiply
    default:
        return divide
    }
}

var operation = getOperation("subtração")
operation(30,15)

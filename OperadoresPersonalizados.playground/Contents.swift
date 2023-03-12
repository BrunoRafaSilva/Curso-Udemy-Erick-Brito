import Foundation
//Operadores Personalizados

//Unários -> Operam somentem em 1 operando
//prefix opera do lado esquerdo
//postfix lado direito

//Binários -> Operam em 2 operando
//infix opera no meio


//PREFIX

prefix operator <|
prefix func <| (rhs: [Int]) -> [Int] {
    let result = rhs.map({$0 - 1})
    
    return result
}

let ages = [20,36,7,12,18]
let lastYearAges = <|ages

//POSTFIX
postfix operator ☢︎
postfix func ☢︎ (lhs: Int) -> Int {
    var result = 1
    if lhs < 2 {
        return result
    }
    for i in 2...lhs {
        result *= i
    }
    return result
}

3☢︎
4☢︎

infix operator ---
func --- (lhs: Int, rhs: Int) -> [Int] {
    return Array(rhs...lhs).reversed()
}

30---12


infix operator >-<
func >-< (total: Int, universe: Int) -> [Int] {
    var result: [Int] = []
    while result.count < total {
        let randomNumber = Int(arc4random_uniform(UInt32(universe))+1)
        if !result.contains(randomNumber){
            result.append(randomNumber)
        }
    }
    return result.sorted()
}

print(6>-<60)
print(5>-<50)
print("LotoFacil", 15>-<25)

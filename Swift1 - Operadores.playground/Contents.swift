import UIKit

var greeting = "Hello, playground"


//Operadores Binários

//Operador de Atribuição: =
let gravity = 9.81
var (name, age) = ("Eric", 39)
print(name)
print(age)
var age1 = 45
var age2 = 26

//Airtméticos: Soma (+), Subtração (-), Multiplicação (*), Divisão (/), Módulo (%) <- Resto da divisão
//Não é possivel somar variavel do tipo int com do tipo float
//Operadores operam sobre operadores do mesmo tipo.


//Operadores Compostos: Atribui e opera ao mesmo tempo
age1 += age2
//-=, *=, /=, %=

var products = 125
var lastBuy = 22
products -= lastBuy
print(products)

//Comparação: Fazem comparação entre valores (sempre retornam um Bool)
//Maior que: > // >=, <=, <, ==
let grade1 = 7.5
let grade2 = 9.8
let betterThanFriend = grade1 > grade2

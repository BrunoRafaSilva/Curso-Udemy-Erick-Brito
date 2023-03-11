//Estruturas Struct

let age:Int = 20
let name: String = "Eric"

struct Person {
    var name: String?
    var age: Int = 0
    
    init(name: String) {
        self.name = name
    }
    
    func sayHello(){
        print("Olá!")
    }
    
    mutating func incrementAge() {
        age += 1
    }
}

var newPerson = Person(name: "Eric")
newPerson.age = 39
newPerson.incrementAge()
print(newPerson.age)


//Computed Properties (Propriedades Computadas)

struct Temperature {
    var celsius: Double
    var fahrenheit: Double {
        return celsius * 1.8 + 32
    }
}

var temperature = Temperature(celsius: 25)
temperature.celsius = 30
print(temperature.celsius)
print(temperature.fahrenheit)


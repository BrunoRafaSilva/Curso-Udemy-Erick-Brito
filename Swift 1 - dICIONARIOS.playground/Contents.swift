var states = [
    "AC": "Acre",
    "AL": "Alagoas",
    "AP": "Amapá",
    "AM": "Amazonas",
    "BA": "Bahia",
    "CE": "Ceará",
    "DF": "Distrito Federal",
    "ES": "Espirito Santo",
]

var studentGrade: [String: Double] = [:]

states["GO"] = "Goiaz"

//states["GO"] = "Goiás"
let oldGO = states.updateValue("Goiás", forKey: "GO")
print(oldGO)

let myState = states["AL"]
let myState2 = states["RJ"]

if let state = myState2 {
    print(state)
} else {
    print("Dont't have a state")
}

print(states)
print(states.count)

let keys = Array(states.keys)
print(keys)
let values = Array(states.values)
print(values)

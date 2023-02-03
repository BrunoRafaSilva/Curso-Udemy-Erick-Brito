var names = ["Bruno","Rafael","Nathalia"]
var namesB: [String] = ["Bruno","Rafael","Nathalia"]

var lotteryNumbers: [Int] = []
var phonenumbers: [String]?

var ages = [9,7,12,15,22] //UInt8
var agess: [UInt8] = [25,63,87,96]

var guests = ["Jão","PaulaD", "Alexandre", "Patrícia"]

print(guests.count)

print(guests.isEmpty)

let secondGuest = guests[1]
guests[1] = "Predo"

print(guests)
guests[0...1] = ["Bola","John","Pietro"]
print(guests)
print(guests.first)

if let first = guests.first{
    print(first)
}
if let last = guests.last{
    print(last)
}

guests += ["sandro"]
guests.append("Edina")

guests.insert("Romildo", at: 2)
print(guests)

//guests.removeFirst()
guests.removeLast()
//guests.remove(at: 2)
print(guests)

if guests.contains("John") {
    print("tem sim")
}

//guests.removeAll()

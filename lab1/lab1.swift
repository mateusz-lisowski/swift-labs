import Foundation


print("----------- Strings and Text -----------")

print("\nTask 1")
let x = 60
let y = 90
print("\(x) + \(y) = \(x + y)")

print("\nTask 2")
let pgString = "Gdansk University of Technology"
let pgEmoji = pgString.replacingOccurrences(of: "n", with: "⭐️")
print(pgEmoji)

print("\nTask 3")
let name = "Mateusz Lisowski"
print(String(name.reversed()))

print("----------- Control Flow -----------")

print("\nTask 1")
for _ in 0...9 {
  print("I will pass this course with best mark, because Swift is great!")
}

print("\nTask 2")
let n = 10
for i in 1...n {
  print(i*i)
}

print("\nTask 3")
for _ in 0...n {
  var row = ""
  for _ in 0...n {
    row += "@"
  }
  print(row)
}

print("----------- Arrays -----------")

print("\nTask1")
let numbers = [5, 10, 20, 15, 80, 13]
print(numbers.max()!)

print("\nTask2")
for number in numbers.reversed() {
    print(number, terminator: ", ")
}

print("\nTask3")
let allNumbers = [10, 20, 10, 11, 13, 20, 10, 30]
var uniqueSet = Set<Int>()

for number in allNumbers {
    uniqueSet.insert(number)
}

let uniqueArray = Array(uniqueSet)

print("unique = \(uniqueArray)")

print("----------- Sets -----------")

print("\nTask1")
let number = 10
var divisors = Set<Int>()

for divisor in 1...Int(sqrt(Double(number))) {
    if number % divisor == 0 {
        divisors.insert(divisor)
        divisors.insert(number / divisor)
    }
}

let sortedDivisors = divisors.sorted()
print("divisors = \(sortedDivisors)")

print("----------- Dictionaries -----------")

print("\nTask1")
var flights: [[String: String]] = [
    [
        "flightNumber" : "AA8025",
        "destination" : "Copenhagen"
    ],
    [
        "flightNumber" : "BA1442",
        "destination" : "New York"
    ],
    [
        "flightNumber" : "BD6741",
        "destination" : "Barcelona"
    ]
]

var flightNumbers = [String]()

for flight in flights {
  flightNumbers.append(flight["flightNumber"]!)
}

print("flightNumbers = \(flightNumbers)")

print("\nTask2")
var names = ["Hommer", "Lisa", "Bart"]
var fullName = [[String: String]]()

for name in names {
    fullName.append(["firstName": name, "lastName": "Simpson"])
}

print("fullName = \(fullName)")

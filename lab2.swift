import Foundation


print("\n---------- Functions ----------\n")

print("Task 1")
func minValue(x: Int, y: Int) -> Int {
    if x < y {
      return x
    }
    return y
}

let result1 = minValue(x: 11, y: 5)  
let result2 = minValue(x: -3, y: 8)
let result3 = minValue(x: 20, y: 20)

print("Result 1: \(result1)")
print("Result 2: \(result2)")
print("Result 3: \(result3)")

print("Task 2")
func lastDigit(_ number: Int) -> Int {
    return abs(number) % 10
}

let digit1 = lastDigit(123)
let digit2 = lastDigit(-4569)
let digit3 = lastDigit(9)

print("Last digit of 123: \(digit1)")
print("Last digit of -456: \(digit2)")
print("Last digit of 7: \(digit3)")

print("Task 3")
func divides(_ x: Int, _ y: Int) -> Bool {
    return x % y == 0
}

func countDivisors(_ number: Int) -> Int {
    var count = 0
    for divisor in 1...number {
        if divides(number, divisor) {
            count += 1
        }
    }
    return count
}

func isPrime(_ number: Int) -> Bool {
    return countDivisors(number) == 2
}

let number1 = 7
let number2 = 12

print("\(number1) is prime: \(isPrime(number1))")
print("\(number2) is prime: \(isPrime(number2))")

print("\n---------- Closures ----------\n")

print("Task 1")
func smartBart(_ n: Int, closure: () -> Void) {
    for _ in 1...n {
        closure()
    }
}

let statement = "I will pass this course with the best mark, because Swift is great!"

smartBart(5) {
    print(statement)
}

print("Task 2")
let numbers = [10, 16, 18, 30, 38, 40, 44, 50]
let multiplesOfFour = numbers.filter { $0 % 4 == 0 }
print(multiplesOfFour)

print("Task 3")
let largestNumber = numbers.reduce(nil) { (currentMax, next) in return currentMax != nil ? 
  max(currentMax!, next) : next }
print("Largest number from numbers is: \(largestNumber!)")

print("Task 4")
var strings = ["Gdansk", "University", "of", "Technology"]

let result = strings.reduce("") { (accumulatedString, nextString) in
    return accumulatedString.isEmpty ? nextString : accumulatedString + " " + nextString
}

print(result)

print("Task 5")
let nums = [1, 2, 3, 4, 5, 6]

let sumOfSquaresOfOddNumbers = nums
    .filter { $0 % 2 != 0 }
    .map { $0 * $0 }
    .reduce(0, +)

print("\(nums.filter { $0 % 2 != 0 }.map { "\($0 * $0)" }.joined(separator: " + ")) -> \(sumOfSquaresOfOddNumbers)")

print("\n---------- Tuples ----------\n")

print("Task 1")
func minmax(_ a: Int, _ b: Int) -> (min: Int, max: Int) {
    return (min(a, b), max(a, b))
}

let r = minmax(10, 5)
print("Minimum: \(r.min), Maximum: \(r.max)")

print("Task 2")
var stringsArray = ["gdansk", "university", "gdansk", "university", "university", "of", "technology", "technology", "gdansk", "gdansk"]

var countedStringsDict = [String: Int]()

for string in stringsArray {
    countedStringsDict[string, default: 0] += 1
}

let countedStrings = countedStringsDict.map { (string, count) in
    return (string, count)
}

print(countedStrings)

print("\n---------- Enums ----------\n")
print("Task 1")
enum Day: Int {
    case monday = 1, tuesday, wednesday, thursday, friday, saturday, sunday
    
    func emoji() -> String {
        switch self {
        case .monday:
            return "📅"
        case .tuesday:
            return "🌮"
        case .wednesday:
            return "🐪"
        case .thursday:
            return "🍩"
        case .friday:
            return "🎉"
        case .saturday:
            return "🍻"
        case .sunday:
            return "☀️"
        }
    }
}

let today = Day.friday
print("Today is \(today.emoji())")

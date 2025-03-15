let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0
for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}
print(teamScore)

let scoreDecoration = if teamScore > 10 {
    "🎉"
} else {
    ""
}
print("Score:", teamScore, scoreDecoration)

// Optional or Null variable
var optionalString: String? = "Hello!"
print(optionalString == nil)

var optionalName: String? = "John"
var greeting = "Hello!"
optionalName = nil
if let name = optionalName {
    greeting = "Hello, \(name)!"
}else {
    greeting = "Hello!"
}
print(greeting)

let nickname: String? = nil
let fullName: String = "John Appleseed"
let informalGreeting = "Hi \(nickname ?? fullName)"

if let nickname = nickname {
    print("Hello, \(nickname)!")
}

// Switch case
let vegetable = "red pepper"
switch vegetable {
    case "celery":
        print("Add some raisins and make ants on a log.")
    case "cucumber", "watercress":
        print("That would make a good tea sandwich.")
    case let x where x.hasSuffix("pepper"):
        print("Is it a spicy \(x)?")
    default:
        print("Everything tastes good in soup.")
}

// Dictionaries
let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
var largest = 0
var largestName: String?
for(name,numbers) in interestingNumbers{
    for number in numbers{
        if number > largest{
            largest = number
            largestName = name
        }
    }
}
print("\(largestName ?? "Unknown") - \(largest)")

// while loop
var n = 2
while n < 2 {
    n *= 2
}
print(n)

// repeat-while loop
var m = 2
repeat {
    m *= 2
} while m < 2
print(m)

// ..< - used for range of index
var total = 0
for i in 0..<4 {
    total += i
}
print(total)

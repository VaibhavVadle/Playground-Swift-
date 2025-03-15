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



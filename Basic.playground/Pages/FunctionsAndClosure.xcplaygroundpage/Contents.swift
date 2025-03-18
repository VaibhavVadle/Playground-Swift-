// Declare function
func greet(person: String, day:String) -> String {
    return "Hello, \(person)! Today is \(day)."
}
greet(person: "Alex", day: "Tuesday")

// _ used to for no argument label
func greet(_ person: String, on day: String) -> String {
    return "Hello, \(person)! Today is \(day)."
}
greet("Bob", on: "Wednesday")

// Tuple - make compound values & return multiple values from a function
func calculateStatistics(scores:[Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    for score in scores {
        if(score > min) {
            max = score
        } else {
            min  = score
        }
        sum += score
    }
    return (min, max, sum)
}

let statistics = calculateStatistics(scores: [10,20,3,119,49])
print(statistics.min)
print(statistics.max)
print(statistics.sum)
print(statistics.2)

// Nested function
func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}
returnFifteen()

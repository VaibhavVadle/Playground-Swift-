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

// Returning another function - Functions are a first-class type. This means that a function can return another function as its value)
func makeIncrementer () -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}
var increment = makeIncrementer()
increment(7)

// Passing another function in its function argument
func hasAnyMatches(list:[Int],condition:((Int)-> Bool)) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}

func lessThanTen (_ number: Int) -> Bool {
    return number < 10
}

var numbers = [23,34,9,45]
hasAnyMatches(list: numbers, condition: lessThanTen)

// Closures
numbers.map({
    (number: Int) -> Int in
    let result = 3 * number
    return result
})

// Single statement closure
let mappedNumbers = numbers.map({ number in 3 * number })
print(mappedNumbers)

// sorted list
let sortedNumbers = numbers.sorted { $0 > $1 }
print(sortedNumbers)

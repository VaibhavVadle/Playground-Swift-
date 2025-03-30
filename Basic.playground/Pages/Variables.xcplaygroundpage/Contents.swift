var myVariable = 42
myVariable = 50
// Use let to create a constant variable
let myConstant = 42

let implicitInteger = 70
let implicitDouble = 70.0
// Assign a variable type explicitly
let explicitDouble: Double = 70

let label = "The width is "
let width = 94
let widthLabel = label + String(width)
print(widthLabel)

// Include value in string
let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) pieces of fruit."

// Multi line string
let quotation = """
    Even though there's whitespace to the left,
    the actual lines aren't indented.
        Except for this line.
    Double quotes (") can appear without being escaped.

    I still have \(apples + oranges) pieces of fruit.
    """

// Arrays
var fruits = ["apples", "bananas", "oranges"]
fruits[1] = "grape"
print(fruits)

var occupations = ["Alice": "Software Developer", "Bob": "Teacher"]
occupations["Charlie"] = "Student"
print(occupations)

fruits.append("blueberries")
print(fruits)

let emptyArray: [String] = []
let emptyDictionary: [String: Float] = [:]

// String interpolation
print("Sum of 2 & 3 is \(2+3)")

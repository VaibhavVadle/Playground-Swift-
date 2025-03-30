// Close Range - includes 1 and 10
let value = Int.random(in: 1...10)
print(value)

// Excludes 10
let variable1 = Int.random(in: 1 ..< 10);
print(variable1)

let variable2 = Double.random(in: 1 ... 10)
print(variable2)

let variable3 = Float.random(in: 1 ..< 10)
print(variable3)

let variable4 = Bool.random()
print(variable4)

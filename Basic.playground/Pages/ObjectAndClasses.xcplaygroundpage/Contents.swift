class Shape {
    var numberOfSides = 0
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides)"
    }
    let number: Int = 10
    
    func printValue(_ value:String) {
        print(value)
    }
}

var shape = Shape()
shape.numberOfSides = 10
var shapeDescription = shape.simpleDescription()
print(shapeDescription)
shape.printValue("Hello world!")

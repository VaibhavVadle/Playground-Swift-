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

// init variable when an instance is created
class NamedShape {
    var numberOfSides: Int = 0
    var name: String

    init(name: String) {
       self.name = name
    }

    func simpleDescription() -> String {
       return "A shape with \(numberOfSides) sides."
    }
}

var namedShape = NamedShape(name: "Square")

class Square: NamedShape {
    var sideLength: Double
    
    init(sideLength: Double, name:String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }
    
    func area () -> Double {
        return sideLength * sideLength
    }
    
    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)."
    }
}

let test = Square(sideLength: 5.2, name: "my test square")
test.area()
test.simpleDescription()

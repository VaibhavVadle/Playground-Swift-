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

class EquilateralTriangle: NamedShape {
    var sideLength: Double = 0.0


    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }
    
    var perimeter : Double {
        get {
            return sideLength * 3
        }
        set {
            sideLength = newValue / 3
        }
    }

    override func simpleDescription() -> String {
        return "An equilateral triangle with sides of length \(sideLength)."
    }
}
var triangle = EquilateralTriangle(sideLength: 3.1, name: "a triangle")
print(triangle.perimeter)
triangle.perimeter = 9.9
print(triangle.sideLength)

// To compute property before use willSet and for after use didSet
// Below class ensure triangle and square have same sideLength
class TriangleAndSquare {
    var triangle: EquilateralTriangle {
        willSet {
            square.sideLength = newValue.sideLength
        }
        didSet {
            print("Triangle updated -> \(triangle.sideLength)")
        }
    }
    
    var square: Square {
        willSet {
            triangle.sideLength = newValue.sideLength
        }
        didSet {
            print("Square updated -> \(square.sideLength)")
        }
    }
    
    init(size: Double, name: String) {
        square = Square(sideLength: size, name: name)
        triangle = EquilateralTriangle(sideLength: size, name: name)
    }
}

var triangleAndSquare =  TriangleAndSquare(size: 5, name: "Another test shape")
print(triangleAndSquare.square.sideLength)
print(triangleAndSquare.triangle.sideLength)
triangleAndSquare.square = Square(sideLength: 50, name: "New shape")
print(triangleAndSquare.square.sideLength)
print(triangleAndSquare.triangle.sideLength)

// Optional values
let optionalSquare: Square? = Square(sideLength: 2.5, name: "optional square")
let sideLength = optionalSquare?.sideLength


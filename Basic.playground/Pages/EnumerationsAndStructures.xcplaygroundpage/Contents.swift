enum Rank: Int {
    case ace = 1
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king
    
    func description() -> String {
        switch self {
        case .ace:
            return "ace"
        case .jack:
            return "jack"
        case .queen:
            return "queen"
        case .king:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
    func compare(to other: Rank) -> Bool {
        return self.rawValue == other.rawValue
    }

}

let ace = Rank.ace
let aceRawValue = ace.rawValue

// Get enum value 
if let convertedRank = Rank(rawValue: 11) {
    let threeDescription = convertedRank.description()
    print(threeDescription)
}

enum Suit {
    case spades, hearts, diamonds, clubs
    
    func description() -> String {
        switch self {
        case .spades:
            return "spades"
        case .hearts:
            return "hearts"
        case .diamonds:
            return "diamonds"
        case .clubs:
            return "clubs"
        }
    }

    func color() -> String {
        switch self {
        case .spades:
            return "black"
        case .hearts:
            return "red"
        case .diamonds:
            return "red"
        case .clubs:
            return "black"
        }
    }
}
let hearts = Suit.hearts
let heartsColor = hearts.color()

enum ServerResponse {
    case success(String,String)
    case failure(String)
    case loading(Bool)
}
let success  = ServerResponse.success("6:00 am", "8:09 pm")
let failure = ServerResponse.failure("Something went wrong")
let loading = ServerResponse.loading(true)
    
// Experiment by changing switch statement value
switch success {
case let .success(sunrise, sunset):
    print("Sunrise is at \(sunrise) and sunset is at \(sunset)")
case let .failure(errorMessage):
    print("Error: \(errorMessage)")
case let .loading(value):
    print("Loading... \(value)")
}

// Struct - Create a structure. Structures support many of the same behaviors as classes, including methods and initializers
// Differences between structures and classes is that structures are always copied when they’re passed around in your code, but classes are passed by reference.
struct Card {
    var rank: Rank
    var suit: Suit
    
    func description() -> String {
        return "The \(rank.description()) of \(suit.description())"
    }
}

let threeOfSpades = Card(rank: .three, suit: .spades)
print(threeOfSpades.description())

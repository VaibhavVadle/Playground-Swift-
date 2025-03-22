enum Rank: Int {
    case ace
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

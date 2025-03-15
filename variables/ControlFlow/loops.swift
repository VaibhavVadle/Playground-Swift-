let scores = [75, 43, 103, 87, 54]

var teamScore = 0
for score in scores {
    if score > 50 {
        teamScore += 3
    } else
        teamScore += 1
}

print("Team score: \(teamScore)")

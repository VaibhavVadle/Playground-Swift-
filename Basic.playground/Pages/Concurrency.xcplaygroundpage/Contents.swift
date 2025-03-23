// async - Marks to a function that runs asynchronously.
func fetchUserId(from server: String) async -> Int {
    if server == "primary" {
        return 97
    }
    return 501
}

func fetchUserName(from server: String) async -> String {
    let userId = await fetchUserId(from: server)
    if userId == 501 {
        return "John"
    }
    return "Guest"
}

// Use async let to call an asynchronous function, letting it run in parallel with other asynchronous code. When you use the value it returns, write await.
func connectUser(to server: String) async {
    async let userName = fetchUserName(from: server)
    async let userId = fetchUserId(from: server)
    let greeting = await "Hello \(userName), user ID \(userId)"
    print(greeting)
}

// Task to call asynchronous functions from synchronous code, without waiting for them to return.
Task {
    await connectUser(to: "primary")
}

// Task groups to structure concurrent code
Task {
    let userIDs = await withTaskGroup(of: Int.self) { group in
        for server in ["primary", "secondary", "development"] {
            group.addTask {
                return await fetchUserId(from: server)
            }
        }

        var results: [Int] = []
        for await result in group {
            results.append(result)
        }
        return results
    }
    print(userIDs)
}

// Actors
actor ServerConnection {
    var server: String = "primary"
    private var activeUsers: [Int] = []
    func connect() async -> Int {
        let userId = await fetchUserId(from: server)
        activeUsers.append(userId)
        return userId
    }
}

let server = ServerConnection()

Task {
    let userId = await server.connect()
}

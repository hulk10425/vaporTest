import Vapor


extension Droplet {
    func setupRoutes() throws {
        get("hello") { req in
            var json = JSON()
            try json.set("hello", "world")
            return json
        }

        get("plaintext") { req in
            return "Hello, world!"
        }

        // response to requests to /info domain
        // with a description of the request
        get("info") { req in
            return req.description
        }
        
        get("test") { req in
            
            print("123")
            return "this is test"
        }

        get("description") { req in return req.description }
        
        try resource("posts", PostController.self)
    }
}

extension Droplet {
    
    
}

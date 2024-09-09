// hash table is like a dictionary because both are key-value data structure, but unlike dictionary, the keys in hash table is computed based on values. the keys for hash table are generated through a function during runtime therefore there is no need to store the keys. so it is more efficent in terms of space complexity than ordinary dicts. in addition, the keys are tied to values therefore, there values have fixed keys.

var dict = Dictionary<String, String>()

dict["texas"] = "austin"
dict["california"]  = "log angels"
dict["new york"]  = "albany"

// hash table node

class HashNode{
    let firstName: String!
    let lastName: String!
    let next: HashNode!
    
    init(firstName: String! = nil, lastName: String! = nil, next: HashNode! = nil) {
        self.firstName = firstName
        self.lastName = lastName
        self.next = next
    }
}

class HashTable {
    private var buckets: [HashNode?]

    init(capacity: Int) {
        self.buckets = Array(repeating: nil, count: capacity)
    }
    
    
    func addWord(firstName: String, lastName: String) {
        
        var hashindex: Int!
        var fullName: String!
        
        fullName = firstName + lastName
        hashindex = self.creatHash(fullName)
    }
}

enum BookStatus {
    case available
    case borrowed(by: String, dueIn: Int)
    case reserved(for: String)

    var label: String {
        switch self {
        case .available:
            return "Available"
        case .borrowed(let name, let days):
            return "Borrowed by \(name), due in \(days) days"
        case .reserved(let name):
            return "Reserved for \(name)"
        }
    }
}

struct Book {
    var title: String
    var status: BookStatus = .available
}

class Member {
    var name: String
    var borrowedBooks: [String]

    init(name: String, borrowedBooks: [String] = []) {
        self.name = name
        self.borrowedBooks = borrowedBooks
    }
}

// Copying a struct
var book1 = Book(title: "Swift Basics")
var book2 = book1

book2.status = .borrowed(by: "Arun", dueIn: 5)

print("Book 1:", book1.title, "-", book1.status.label)
print("Book 2:", book2.title, "-", book2.status.label)

// Sharing a class object
let member1 = Member(name: "Priya")
let member2 = member1

member2.name = "Divya"

print("Member 1:", member1.name)
print("Member 2:", member2.name)

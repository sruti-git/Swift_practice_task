struct Counter {
    var value = 0

    mutating func increment() {
        value += 1
    }
}

class Box {
    var value = 0

    func increment() {
        value += 1
    }
}

// Structure
var c = Counter()
c.increment()
print("Counter:", c.value)

// Class
let b = Box()
b.increment()
print("Box:", b.value)

// Two constants referring to the same object
let b1 = Box()
let b2 = b1

b2.value = 10

print("b1 value:", b1.value)
print("b2 value:", b2.value)
print("Same object:", b1 === b2)

import Foundation

enum Shape {
    case circle(radius: Double)
    case rectangle(width: Double, height: Double)
    case triangle(base: Double, height: Double)

    var area: Double {
        switch self {
        case .circle(let radius):
            return Double.pi * radius * radius
        case .rectangle(let width, let height):
            return width * height
        case .triangle(let base, let height):
            return 0.5 * base * height
        }
    }
}

// Structure for Rectangle
struct Rectangle {
    var width: Double
    var height: Double

    var perimeter: Double {
        return 2 * (width + height)
    }

    mutating func scale(by factor: Double) {
        width *= factor
        height *= factor
    }
}

// Calculate shape areas
let circle = Shape.circle(radius: 3)
let rectangle = Shape.rectangle(width: 4, height: 5)
let triangle = Shape.triangle(base: 6, height: 4)

print("Circle Area:", circle.area)
print("Rectangle Area:", rectangle.area)
print("Triangle Area:", triangle.area)

// Scale a copy
var rect1 = Rectangle(width: 4, height: 5)
var rect2 = rect1

rect2.scale(by: 2)

print("Original Width:", rect1.width)
print("Original Height:", rect1.height)
print("Original Perimeter:", rect1.perimeter)

print("Copy Width:", rect2.width)
print("Copy Height:", rect2.height)
print("Copy Perimeter:", rect2.perimeter)

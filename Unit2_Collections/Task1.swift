var cart = ["Laptop", "Mouse", "Keyboard"]

print("Initial Cart:", cart)

// Add a product
cart.append("Headphones")

// Insert a product at index 1
cart.insert("Monitor", at: 1)

// Remove a product at index 2
cart.remove(at: 2)

print("Final Shopping Cart:", cart)
print("Total Items:", cart.count)

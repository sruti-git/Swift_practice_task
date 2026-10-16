let itemPrice = 450.0
let quantity = 3

// Calculate subtotal
let subtotal = itemPrice * Double(quantity)

// Coupon condition
let hasCoupon = true

// Calculate discount
let discount = (hasCoupon && subtotal > 1000) ? subtotal * 0.10 : 0.0

// Calculate GST on discounted amount
let discountedAmount = subtotal - discount
let gst = discountedAmount * 0.18

// Calculate total bill
let total = discountedAmount + gst

// Split bill between 4 people
let share = total / 4.0

print("Subtotal:", subtotal)
print("Discount:", discount)
print("GST:", gst)
print("Total Bill:", total)
print("Each Person's Share:", share)

// Divide ₹1234 into hundreds and remainder
let amount = 1234
let hundreds = amount / 100
let remainder = amount % 100

print("Hundreds:", hundreds)
print("Remainder:", remainder)

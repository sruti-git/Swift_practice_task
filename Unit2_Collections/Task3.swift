var students: [String] = []

// Add four student names
students.append("Arun")
students.append("Priya")
students.append("Kavin")
students.append("Divya")

print("Student List:", students)

// Remove the student at index 1
students.remove(at: 1)

print("Final Student List:", students)
print("Total Students:", students.count)

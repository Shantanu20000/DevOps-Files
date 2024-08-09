# Function to perform basic arithmetic operations
def arithmetic_operations(a, b):
    addition = a + b
    subtraction = a - b
    multiplication = a * b
    division = a / b if b != 0 else "undefined (division by zero)"
    return addition, subtraction, multiplication, division

# Take input from the user
try:
    num1 = float(input("Enter the first number: "))
    num2 = float(input("Enter the second number: "))

    # Perform operations
    add, subtract, multiply, divide = arithmetic_operations(num1, num2)

    # Print results
    print(f"Addition: {num1} + {num2} = {add}")
    print(f"Subtraction: {num1} - {num2} = {subtract}")
    print(f"Multiplication: {num1} * {num2} = {multiply}")
    print(f"Division: {num1} / {num2} = {divide}")

except ValueError:
    print("Invalid input. Please enter numeric values.")


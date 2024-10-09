from calculator.operations import add, subtract, multiply, divide

def main():
    print("Welcome to My Demo Calculator App!")
    
    try:
        num1 = float(input("Enter first number: "))
        num2 = float(input("Enter second number: "))
    except ValueError:
        print("Invalid input! Please enter numeric values.")
        return  # Exit if inputs are invalid
    
    operation = input("Choose operation (+, -, *, /): ")
    
    try:
        if operation == "+":
            result = operations.add(num1, num2)
        elif operation == "-":
            result = operations.subtract(num1, num2)
        elif operation == "*":
            result = operations.multiply(num1, num2)
        elif operation == "/":
            result = operations.divide(num1, num2)
        else:
            print("Invalid operation!")
            return  # Exit if operation is invalid
        
        # Print the result formatted to two decimal places
        print(f"Result: {result:.2f}")

    except ValueError as e:
        print(e)  # This will handle division by zero or other ValueErrors

if __name__ == "__main__":
    main()

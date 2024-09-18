from calculator import operations

def main():
    print("Welcome to My Demo Calculator App!")
    num1 = float(input("Enter first number: "))
    num2 = float(input("Enter second number: "))
    
    operation = input("Choose operation (+, -, *, /): ")
    
    if operation == "+":
        result = operations.add(num1, num2)
    elif operation == "-":
        result = operations.subtract(num1, num2)
    elif operation == "*":
        result = operations.multiply(num1, num2)
    elif operation == "/":
        result = operations.divide(num1, num2)
    else:
        result = "Invalid operation!"
    
    print(f"Result: {result}")

if __name__ == "__main__":
    main()

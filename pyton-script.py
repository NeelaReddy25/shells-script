# Take input for A and B from the user
A = int(input("Enter the first number (A): "))
B = int(input("Enter the second number (B): "))

# Check if B is zero, as division by zero is not allowed
if B == 0:
    print("Division by zero is not allowed. Please enter a non-zero value for B.")
else:
    # Check if A is divisible by B
    if A % B == 0:
        print(f"{A} is divisible by {B}.")
    else:
        print(f"{A} is not divisible by {B}.")
    
    # Check if A is not divisible by B
    if A % B != 0:
        print(f"Also, {A} is not divisible by {B}.")
    else:
        print(f"Also, {A} is divisible by {B}.")

#write a program to perform addition of two number using and return the value

def sum(num1,num2):
    return num1+num2

num1=int(input("Enter a first number: "))
num2=int(input("Enter a Second number: "))
result=sum(num1,num2)

print(f"Addition of {num1} and {num2} is {result}")

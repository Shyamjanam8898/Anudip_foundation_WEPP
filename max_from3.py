#write a function to find largest of 3 number
num1=int(input("Enter 1st numbers: "))
num2=int(input("Enter 2nd numbers: "))
num3=int(input("Enter 3rd numbers: "))
def highest(num1,num2,num3):
    return max(num1,num2,num3)
print(f'largest from {num1}, {num2} and {num3} is ',highest(num1,num2,num3))

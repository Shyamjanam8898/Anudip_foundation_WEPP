#write a program to calculate factorial of number using while loop
#ex 5!=5x4x3x2x1

num=int(input("Enter a number for Factorial: "))
fact=1
while num>=1:
    fact=fact*num
    num-=1
print("factorial =",fact)

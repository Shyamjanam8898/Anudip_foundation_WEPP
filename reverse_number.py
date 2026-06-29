#write a program to print the reverse of number
#ex 1234 reverse=4321
"""b=4321
a=4321%10
print(a)
reverse=0
reverse=reverse*10+a
print(reverse)
print(b//10)"""

num=int(input("Enter a number: "))
rev=0
digit=0
while num>=1:
    digit=num%10
    rev=rev*10+digit
    num//=10

print("reverse= ",rev)

'''write a program to print pattern
*****
****
***
**
*
'''
"""
Solution 1
num=int(input("Enter a number: "))
for i in range(num,0,-1):
    print(i*"*")
"""
"""
#solution 2
num=int(input("Enter a number: "))
for i in range(num,0,-1):
    for j in range(i):
        print("*",end=" ")
    print()
"""
#solution 3
num=int(input("Enter a number: "))
while(num>0):
    print(num*"*")
    num-=1

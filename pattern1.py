'''write a program to print pattern
*
**
***
****
*****
'''
"""
num=int(input("Enter a rows for pattern: "))

for i in range(1,num+1):
    for j in range(i):
        print("*",end=" ")
    print()
"""


num=int(input("Enter a rows for pattern: "))
for i in range(num+1):
    print(i*"*")

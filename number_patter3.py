'''write a program to print pattern
4 4 4 4
3 3 3
2 2
1
'''

num=int(input("Enter a number: "))
for i in range(num,0,-1):
    for j in range(i):
        print(i,end=" ")
    print()

'''write a program to print pattern
1
2 3
4 5 6
7 8 9 10
'''
row=int(input("Enter a number: "))
num=1
for i in range(row+1):
    for j in range(i):
        print(num,end=" ")
        num+=1
    print()

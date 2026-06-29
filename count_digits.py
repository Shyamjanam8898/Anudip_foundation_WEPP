#write a program to count the digit in number
#ex 12345=5

num=int(input("Enter a number: "))
count=0

while num>0:
    count=count+1
    num=num//10

print("Total digits are: ",count)

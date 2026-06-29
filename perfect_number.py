#write a program to check number is perfect or not
#ex 28=1+2+4+7+14=28

num=int(input("Enter a number: "))
div=0

for i in range(1,num):
    if(num % i == 0):
        div=div+i

if div==num:
    print("perfect number")
else:
    print("not a perfect number")

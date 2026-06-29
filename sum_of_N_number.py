# write a program to perform summation of first N natural number (take value of N from user)

num=int(input("Enter a value of N: "))
sum=0
for i in range(1,num+1):
    sum=sum+i
print(sum)

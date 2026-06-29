#write a program to check whether the number is prime or not

num=int(input("Enter a number: "))
if num>1:
    for i in range(2,num):
        if(num%i==0):
            print("Not a Prime Number")
            break
    else:
        print("prime number")
else:
    print("Number not prime")

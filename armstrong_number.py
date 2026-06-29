#write a program to check whether the number is armstrong number or not
#ex 153=1^3+5^3+3^3=1+125+27=153
#ex 12=1^3+2^3=1+8=9

num=int(input("Enter a number: "))
temp=num
arm=0
while temp>=1:
    digit=temp%10
    arm=arm+(digit*digit*digit)
    temp//=10

if num==arm:
    print("Armstrong number")
else:
    print("Not a Armstrong number")

#Write Python function  to calculate factorial of number.
def fact(num):          # creating the recursive function
    if num==0 or num==1:
        return 1
    return num*fact(num-1)
number=int(input("Enter a number: ")) #taking input from user

print(f"Factorial of {number} is: ",fact(number)) #calling function and printin output

"""
Output:
Enter a number: 9
Factorial of 9 is:  362880
"""

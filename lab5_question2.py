#Using input function take two number and then swap the number

num1=int(input("Enter a First number: ")) #First number is taken from user
num2=int(input("Enter a Second number: "))#Second number is taken from user
#print both number
print("befor swaping: ",num1,num2) 
#swap numbers
num1,num2=num2,num1
#print swaped number
print("After swaping: ",num1,num2)

"""
Output

Enter a First number: 12
Enter a Second number: 32
befor swaping:  12 32
After swaping:  32 12
"""

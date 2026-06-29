#Using input() function take one number from the user and using ternary operators check whether the number is even or odd

num=int(input("Enter a number: ")) #take input from user
check="Even" if num%2==0 else "ODD"  #check comndition using ternary opereator
print(check) #print result of operation

"""
Output

Enter a number: 12
Even

Enter a number: 35
ODD
"""

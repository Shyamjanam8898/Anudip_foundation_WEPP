#  Write a program to accept the element from user and check whether the element is exist in a list or not
list1=[1,2,3,4,5,6,7]
user=int(input("Enter a number: "))

if user in list1:
    print(f"{user} is a member of list")
else:
    print(f"{user} is not a member of list")

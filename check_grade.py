# write a program to display student result in grade
# a=above 80, b=60 to 80, c=50 to 60, d=45 to 50, e=35 to 45, f = below 35

marks=int(input("Enter a marks of Student: "))

if(marks <= 35):
    print("F")
elif(marks > 35 and marks <= 45):
    print("E")
elif(marks > 45 and marks <= 50):
    print("D")
elif(marks > 50 and marks <= 60):
    print("C")
elif(marks > 60 and marks <= 80):
    print("B")
else:
    print("A")

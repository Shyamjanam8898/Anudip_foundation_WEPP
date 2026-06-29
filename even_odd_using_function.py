#write a function to check number is even or odd

def even_or_odd(num):
    if num%2==0:
        print(f"{num} is Even number")
    else:
        print(f"{num} is Odd number")

number=int(input("Enter a number: "))
even_or_odd(number)
        

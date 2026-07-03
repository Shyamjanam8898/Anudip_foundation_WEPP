#Write a program to find the largest number from the list
"""
list1=[45,21,32,14,25]
list1.sort()
print(list1[-1])


2nd method
"""
numbers = list(map(int, input("Enter numbers separated by spaces: ").split()))

largest=numbers[0]

for i in numbers:
    if i>largest:
        largest=i

print(largest)

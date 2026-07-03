#Write a program to find 2nd largest element
numbers = list(map(int, input("Enter numbers separated by spaces: ").split()))

largest=numbers[0]

for i in numbers:
    if i>largest:
        second_largest=largest
        largest=i

print(second_largest)

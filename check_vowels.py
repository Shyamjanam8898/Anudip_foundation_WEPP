#write a program to accept the alphabet from user and check whether it is vowel or consonets

"""alpha=input("Enter a Alphabet: ")

vowels = ['a','e','i','o','u']
if(alpha.lower() in vowels):
    print(f"{alpha} is vowels")
else:
    print(f"{alpha} is Consonents")"""


"""alpha=input("Enter a Alphabet: ")
if alpha == 'a' or alpha =='e' or alpha =='i' or alpha =='o' or alpha =='u':
    print(f"{alpha} is vowels")
else:
    print(f"{alpha} is Consonents")"""

alpha=input("Enter a Alphabet: ")
if alpha in "aeiou":
    print(f"{alpha} is vowels")
else:
    print(f"{alpha} is Consonents")

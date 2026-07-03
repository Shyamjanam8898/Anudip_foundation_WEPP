#Write a program to find even and odd number from the list

list1=[1,2,3,4,5,6,7]
even_list=[]
odd_list=[]
for i in list1:
    if i%2==0:
        even_list.append(i)
    else:
        odd_list.append(i)
print(even_list)
print(odd_list)

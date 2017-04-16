input_string = raw_input('Enter the string: ')
vowels=['a','e','i','o','u','A','E','I','O','U']
count=0
for s in input_string:
    if s not in vowels:
        count=count+1
print(count)


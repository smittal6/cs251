input_string = raw_input('Enter the string: ')
vowels=['a','e','i','o','u','A','E','I','O','U',' ','.','!']
output_string=""
for s in input_string:
    if s not in vowels:
        output_string=output_string+s+"o"+s
    else:
        output_string=output_string+s
# print(count)
print "Input:",input_string
print "Output:",output_string


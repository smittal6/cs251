import re
import sys
input_string = raw_input('Enter the string: ')
repeat_cons = raw_input('Repetitions of consonants: ')
repeat_vowel = raw_input('Repetitions of vowels: ')
mid_vowel = raw_input('Vowel to be placed in between repetition of consonants: ')
if re.match("[aeiouAEIOU]",mid_vowel):
    print "Valid Input. Proceeding ahead."
else:
    print "Aborting. Enter Valid Input."
    sys.exit(0)
output_string=""
for s in input_string:
    if re.match("[^aeiouAEIOU0-9!()\. ]",s):
        i=0
        repeat_string=s+mid_vowel
        for i in range(1,eval(repeat_cons)):
            output_string=output_string+repeat_string
        output_string=output_string+s
    else:
        i=0
        for i in range(1,eval(repeat_vowel)+1):
            output_string=output_string+s
print "Input:",input_string
print "Output:",output_string


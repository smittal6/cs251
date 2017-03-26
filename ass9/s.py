import random
import string
i = 1
foo = ['ug','pg']
hos=['boys','girls','married']
sdept = ['cse','ee','mse','me','bsbe','mth','eco','ime','ce','ae','cc','media','iwd','hc','doaa','dosa','sports','business','ncl','lhc']
rel = ["father","son","daughter","mother","servant"]
def random_string(length):
   return ''.join(random.choice(string.ascii_lowercase) for i in range(length))
#max_length = 5
#print(random_string(random.randint(1, max_length)))


'''while(i < 51):
	name = ''.join(random_string(random.randint(1, 40)))
	job = 'student'
	ugorpg = random.choice(foo)
	hostel = random.choice(hos)
	dep = random.choice(sdept)
	s = str(i) + ',' + name + ',' + job + ',' + dep + ',' + hostel + ',' + ugorpg
	i=i+1
	print(s)
'''
'''
i = 101
while(i < 151):
        name = ''.join(random_string(random.randint(1, 40)))
        job = 'staff'
        ugorpg = ''
        hostel = ''
        dep = random.choice(sdept)
        s = str(i) + ',' + name + ',' + job + ',' + dep + ',' + hostel + ',' + ugorpg
        i=i+1
        print(s)
  '''
'''for j in sdept:
	print(j + ',')
'''
'''
while(i<21):
	s = input()
	name = ''.join(random_string(random.randint(1, 40)))
	rela = 'marrage partner'
	print(s + name + ',' + rela)
	i=i+1
i = 51
while(i<151):
	s = input()
	k = random.randint(1,4)
	for j in range(1,k,1):
		if(j==1):
			name = ''.join(random_string(random.randint(1, 40)))
			rela = 'marrage partner'
			print(s + name + ',' + rela)
		else:
			name = ''.join(random_string(random.randint(1, 40)))
			rela = random.choice(rel)
			print(s + name + ',' + rela)
	i = i + 1
'''

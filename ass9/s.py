import random
import string
i = 1
foo = ['ug','pg']
hos=['boys1','boys2','boys3','boys4','boys5','girls1','girls2','girls3','girls4','married']
sdept = ['cse','ee','mse','me','bsbe','mth','eco','ime','ce','ae','cc','media','iwd','hc','ncl','lhc']
rel = ["father","son","daughter","mother","servant"]

def random_string(length):
    return ''.join(random.choice(string.ascii_lowercase) for i in range(length))

##for faculty the range is 1 to 50
while(i < 51):
    name = ''.join(random_string(random.randint(1, 20)))
    facorstaff = 'fac'
    #ugorpg = random.choice(foo)
    #hostel = random.choice(hos)
    address=''.join(random_string(random.randint(1,20)))
    dep = random.choice(sdept)
    s = name+','+str(i)+','+address+','+','+dep+','+facorstaff
    i=i+1
    print(s)

while(i < 101):
    name = ''.join(random_string(random.randint(1, 20)))
    facorstaff = 'staff'
    #ugorpg = random.choice(foo)
    #hostel = random.choice(hos)
    address=''.join(random_string(random.randint(1,20)))
    dep = random.choice(sdept)
    s = name+','+str(i)+','+address+','+','+dep+','+facorstaff
    i=i+1
    print(s)



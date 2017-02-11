
print('Loading the data into the Environment')
load("data.txt")

#now calculating the means.
table=array(dim=c(4,4))
table[1,1]="-"
table[2,1]="Data1"
table[3,1]="Data2"
table[4,1]="Data3"
table[1,2]="Mean"
table[2,2]=mean(data1)
table[3,2]=mean(data2)
table[4,2]=mean(data3)
table[1,3]="Standard Deviations"
table[2,3]=sd(data1)
table[3,3]=sd(data2)
table[4,3]=sd(data3)
table[1,4]="Median"
table[2,4]=median(data1)
table[3,4]=median(data2)
table[4,4]=median(data3)
table
quantile(data1)
quantile(data2)
quantile(data3)
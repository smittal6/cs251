setwd("~/Desktop/coding/cs251/ass5/")
#print('Loading the data into the Environment')
load("data.txt")

data=data.frame(first=data1,second=data2,third=data3)

#now calculating the means.
table=array(dim=c(4,4))
table[1,1]="-"
table[2,1]="Data1"
table[3,1]="Data2"
table[4,1]="Data3"
table[1,2]="Mean"
table[2,2]=mean(data$first)
table[3,2]=mean(data$second)
table[4,2]=mean(data$third)
table[1,3]="Standard Deviations"
table[2,3]=sd(data$first)
table[3,3]=sd(data$second)
table[4,3]=sd(data$third)
table[1,4]="Median"
table[2,4]=median(data$first)
table[3,4]=median(data$second)
table[4,4]=median(data$third)
print(table)
#aggregate(data$first,by=list(data[,1]),FUN="mean")
print('Quantiles for data1')
print(quantile(data1))
cat('\n')
print('Quantiles for data2')
print(quantile(data2))
cat('\n')
print('Quantile for data3')
print(quantile(data3))

par(mfrow=c(1,3))
hist(data$first)
hist(data$second)
hist(data$third)

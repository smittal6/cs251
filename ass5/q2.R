setwd("~/Desktop/coding/cs251/ass5/")
complete_data=read.csv("leaves.csv")
#complete_data
complete1_data=complete_data[c(1,2,3,4)]
result1=aggregate(complete1_data,by=list(complete_data$Species),FUN="mean")

contingency1=table(complete_data$Good, complete_data$Species)
png(filename="chart1.png")
bp=barplot(contingency1,main="Frequency for Species according to Goodness",xlab="Species",ylab = "Frequecies",col = c("green","blue","orange"),ylim=c(0,70))
legend("topleft",c("Good","Medium","Bad"),cex=0.9,fill=c("green","blue","orange"))
text(bp,colSums(contingency1[c(2,3),]),contingency1[c(1),],pos=3)
text(bp,0.5,contingency1[c(2),],pos=3)
text(bp,contingency1[c(2),]+0.2,contingency1[c(3),],pos=3)
dev.off()

##Building the detailed contingency table
temp_data=complete_data[c(1,2,3,4)]
##now printing the mean values according to Goodness class
contingency_table1=aggregate(temp_data,by=list(complete_data$Good),FUN="mean")
###The second table, according to goodness value and the species class
contingency_table2=aggregate(temp_data,by=list(complete_data$Good,complete_data$Species),FUN="mean")

print(result1)
print(contingency1)
cat("\n")
print(contingency_table1)
cat('\n')
print(contingency_table2)
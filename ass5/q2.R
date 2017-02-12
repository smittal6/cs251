setwd("~/Desktop/coding/cs251/ass5/")
complete_data=read.csv("leaves.csv")
#complete_data
complete1_data=complete_data[c(1,2,3,4)]
result1=aggregate(complete1_data,by=list(complete_data$Species),FUN="mean")
#now let us extract the data according to species.
#Sepal.Length, Sepal.Width, Petal.Length, Petal.Width, Species, Good
#First for setosa
#setosa_data=complete_data[complete_data$Species=="setosa",]
#smeansl=mean(setosa_data[,"Sepal.Length"])
#smeansw=mean(setosa_data[,"Sepal.Width"])
#smeanpl=mean(setosa_data[,"Petal.Length"])
#smeanpw=mean(setosa_data[,"Petal.Width"])

#Now, for versicolor
#ve_data=complete_data[complete_data$Species=="versicolor",]
#vemeansl=mean(ve_data[,"Sepal.Length"])
#vemeansw=mean(ve_data[,"Sepal.Width"])
#vemeanpl=mean(ve_data[,"Petal.Length"])
#vemeanpw=mean(ve_data[,"Petal.Width"])

#for virginica
#vi_data=complete_data[complete_data$Species=="virginica",]
#vi_data=vi_data[c(1,2,3,4,5)]
#vimeansl=mean(vi_data[,"Sepal.Length"])
#vimeansw=mean(vi_data[,"Sepal.Width"])
#vimeanpl=mean(vi_data[,"Petal.Length"])
#vimeanpw=mean(vi_data[,"Petal.Width"])
##
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

result1
contingency1
contingency_table1
contingency_table2
df1=read.csv("file1.csv",header=FALSE)
df2=read.csv("file2.csv",header=FALSE)
df3=read.csv("file3.csv",header=FALSE)
df4=read.csv("file4.csv",header=FALSE)
df5=read.csv("file5.csv",header=FALSE)
df6=read.csv("file6.csv",header=FALSE)
df7=read.csv("file7.csv",header=FALSE)
df8=read.csv("file8.csv",header=FALSE)
df9=read.csv("file9.csv",header=FALSE)
df10=read.csv("file10.csv",header=FALSE)
#Now let us vertically join the distributions, rbind will come handy
df=rbind(df1,df2,df3,df4,df5,df6,df7,df8,df9,df10)
#now we have 1000 values, of two distributions
dist1=df$V1 #The distribution 1
dist2=df$V2 #Second distribution
breaks=seq(0,1,by=0.25)
dist1.cut = cut(dist1, breaks, right=FALSE)
dist2.cut = cut(dist2, breaks, right=FALSE)
dist1.freq=table(dist1.cut)
dist2.freq=table(dist2.cut)
#Let us now obtain the actual values, as stored in the separations
l1=split(dist1, cut(dist1, c(0, 0.25, 0.50, 0.75, 1.00), include.lowest=TRUE,right=FALSE))
l2=split(dist2, cut(dist2, c(0, 0.25, 0.50, 0.75, 1.00), include.lowest=TRUE,right=FALSE))

#now let us calculate the standard deviations
#sd1 is for the values in first interval, sd2 for values in second etc
sd1=c(sd(l1[[1]])*dist1.freq[[1]],sd(l2[[1]])*dist2.freq[[1]])
sd2=c(sd(l1[[2]])*dist1.freq[[2]],sd(l2[[2]])*dist2.freq[[2]])
sd3=c(sd(l1[[3]])*dist1.freq[[3]],sd(l2[[3]])*dist2.freq[[3]])
sd4=c(sd(l1[[4]])*dist1.freq[[4]],sd(l2[[4]])*dist2.freq[[4]])
##Now I have all the required values. Let us put this shit together.

freq=rbind(dist1.freq,dist2.freq)
freq=cbind(freq,sd1,sd2,sd3,sd4)
sink("table1.txt")
freq
sink()
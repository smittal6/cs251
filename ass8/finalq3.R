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
#Now let us horizontally join the distributions, cbind will come handy
df=rbind(df1,df2,df3,df4,df5,df6,df7,df8,df9,df10)
#now we have 100 values in a row, so essentially 4 columns will form a set
#where first two will form group 1 and last 2 will form group 2
#so now let us write a loop for generating 5 raw data files.
breaks=c(-0.5,0.34,0.66,1)
n1=df[1:500,1]
r1=df[1:500,2]
n2=df[501:1000,1]
r2=df[501:1000,2]
n1.cut = cut(n1, breaks, right=FALSE)
r1.cut = cut(r1, breaks, right=FALSE)
n1.freq = table(n1.cut)
r1.freq = table(r1.cut)
#for second group
n2.cut = cut(n2, breaks, right=FALSE)
r2.cut = cut(r2, breaks, right=FALSE)
n2.freq = table(n2.cut)
r2.freq = table(r2.cut)
#tabledist1,tabledist2
dist1_table=matrix(nrow = 10,ncol = 3)
dist2_table=matrix(nrow = 10,ncol = 3)
for(i in c(0,1,2,3,4,5,6,7,8,9)){
  l=100*i+1
  r=100*(i+1)
  distribution1=df[l:r,1]
  distribution2=df[l:r,2]
  freq_dist1=table(cut(distribution1,breaks,right = FALSE))
  freq_dist2=table(cut(distribution2,breaks,right=FALSE))
  dist1_table[i+1,]=freq_dist1
  dist2_table[i+1,]=freq_dist2
}

#dist1_table All normals
#dist2_table uniform

##Making the first file from the data values
vector2=c(mean(dist1_table[1:5,1]),mean(dist1_table[1:5,2]),mean(dist1_table[1:5,3]))
vector3=c(mean(dist2_table[1:5,1]),mean(dist2_table[1:5,2]),mean(dist2_table[1:5,3]))
sd11=c(sd(dist1_table[1:5,1]),sd(dist1_table[1:5,2]),sd(dist1_table[1:5,3]))
sd21=c(sd(dist2_table[1:5,1]),sd(dist2_table[1:5,2]),sd(dist2_table[1:5,3]))
res1=cbind(vector2,vector3,sd11,sd21)
sink(file=paste("f",1,".txt",sep=""))
print(res1)
sink()

##Constructing the second file
vector2=c(mean(dist1_table[6:10,1]),mean(dist1_table[6:10,2]),mean(dist1_table[6:10,3]))
vector3=c(mean(dist2_table[6:10,1]),mean(dist2_table[6:10,2]),mean(dist2_table[6:10,3]))
sd11=c(sd(dist1_table[6:10,1]),sd(dist1_table[6:10,2]),sd(dist1_table[6:10,3]))
sd21=c(sd(dist2_table[6:10,1]),sd(dist2_table[6:10,2]),sd(dist2_table[6:10,3]))
res1=cbind(vector2,vector3,sd11,sd21)
sink(file=paste("f",2,".txt",sep=""))
print(res1)
sink()
#st(n2, breaks, include.lowest=TRUE,right=FALSE))
#l22=split(r2, cut(r2, breaks, include.lowest=TRUE,right=FALSE))
#sd12=c(sd(l12[[1]])*n2.freq[[1]],sd(l12[[2]])*n2.freq[[2]],sd(l12[[3]])*n2.freq[[3]])
#sd22=c(sd(l22[[1]])*r2.freq[[1]],sd(l22[[2]])*r2.freq[[2]],sd(l22[[3]])*r2.freq[[3]])
#use of cbind explained
#res2=cbind(n2.freq,r2.freq,sd12,sd22)
##sink(file=paste("f",i+2,".txt",sep=""))
#print(res2)
#sink()

#dt(n2, breaks, include.lowest=TRUE,right=FALSE))
#l22=split(r2, cut(r2, breaks, include.lowest=TRUE,right=FALSE))
#sd12=c(sd(l12[[1]])*n2.freq[[1]],sd(l12[[2]])*n2.freq[[2]],sd(l12[[3]])*n2.freq[[3]])
#sd22=c(sd(l22[[1]])*r2.freq[[1]],sd(l22[[2]])*r2.freq[[2]],sd(l22[[3]])*r2.freq[[3]])
#use of cbind explained
#res2=cbind(n2.freq,r2.freq,sd12,sd22)
##sink(file=paste("f",i+2,".txt",sep=""))
#print(res2)
#sink()


#sd11=c(sd(l11[[1]])*n1.freq[[1]],sd(l11[[2]])*n1.freq[[2]],sd(l11[[3]])*n1.freq[[3]])
#sd21=c(sd(l21[[1]])*r1.freq[[1]],sd(l21[[2]])*r1.freq[[2]],sd(l21[[3]])*r1.freq[[3]])
#because now we want the intervals to be on x axis, so we use cbind


#l12=split(n2, cut(n2, breaks, include.lowest=TRUE,right=FALSE))
#l22=split(r2, cut(r2, breaks, include.lowest=TRUE,right=FALSE))
#sd12=c(sd(l12[[1]])*n2.freq[[1]],sd(l12[[2]])*n2.freq[[2]],sd(l12[[3]])*n2.freq[[3]])
#sd22=c(sd(l22[[1]])*r2.freq[[1]],sd(l22[[2]])*r2.freq[[2]],sd(l22[[3]])*r2.freq[[3]])
#use of cbind explained
#res2=cbind(n2.freq,r2.freq,sd12,sd22)
##sink(file=paste("f",i+2,".txt",sep=""))
#print(res2)
#sink()


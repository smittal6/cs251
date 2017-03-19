###
## NOTE: This script is back up script
###
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
df=cbind(df1,df2,df3,df4,df5,df6,df7,df8,df9,df10)
#now we have 100 values in a row, so essentially 4 columns will form a set
#where first two will form group 1 and last 2 will form group 2
#so now let us write a loop for generating 5 raw data files.
breaks=c(0,0.34,0.66,1)
for(i in c(0,4,8,12,16)){
  n1=df[,i+1]
  r1=df[,i+2]
  n2=df[,i+3]
  r2=df[,i+4]
  n1.cut = cut(n1, breaks, right=FALSE)
  r1.cut = cut(r1, breaks, right=FALSE)
  n1.freq = table(n1.cut)
  r1.freq = table(r1.cut)
  l11=split(n1, cut(n1, breaks, include.lowest=TRUE,right=FALSE))
  l21=split(r1, cut(r1, breaks, include.lowest=TRUE,right=FALSE))
  sd11=c(sd(l11[[1]])*n1.freq[[1]],sd(l11[[2]])*n1.freq[[2]],sd(l11[[3]])*n1.freq[[3]])
  sd21=c(sd(l21[[1]])*r1.freq[[1]],sd(l21[[2]])*r1.freq[[2]],sd(l21[[3]])*r1.freq[[3]])
  #because now we want the intervals to be on x axis, so we use cbind
  res1=cbind(n1.freq,r1.freq,sd11,sd21)
  sink(file=paste("f",i+1,".txt",sep=""))
  print(res1)
  sink()
  
  n2.cut = cut(n2, breaks, right=FALSE)
  r2.cut = cut(r2, breaks, right=FALSE)
  n2.freq = table(n2.cut)
  r2.freq = table(r2.cut)
  l12=split(n2, cut(n2, breaks, include.lowest=TRUE,right=FALSE))
  l22=split(r2, cut(r2, breaks, include.lowest=TRUE,right=FALSE))
  sd12=c(sd(l12[[1]])*n2.freq[[1]],sd(l12[[2]])*n2.freq[[2]],sd(l12[[3]])*n2.freq[[3]])
  sd22=c(sd(l22[[1]])*r2.freq[[1]],sd(l22[[2]])*r2.freq[[2]],sd(l22[[3]])*r2.freq[[3]])
  #use of cbind explained
  res2=cbind(n2.freq,r2.freq,sd12,sd22)
  sink(file=paste("f",i+2,".txt",sep=""))
  print(res2)
  sink()
}


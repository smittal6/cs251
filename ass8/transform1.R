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
breaks=c(-1,0.25,0.5,0.75,1)
###now let us make the table of frequencies.
dist1_table=matrix(nrow = 10,ncol = 4)
dist2_table=matrix(nrow = 10,ncol = 4)
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
vector1=c(mean(dist1_table[1:10,1]),mean(dist1_table[1:10,2]),mean(dist1_table[1:10,3]),mean(dist1_table[1:10,4]))
vector2=c(mean(dist2_table[1:10,1]),mean(dist2_table[1:10,2]),mean(dist2_table[1:10,3]),mean(dist2_table[1:10,4]))
sd11=c(sd(dist1_table[1:10,1]),sd(dist1_table[1:10,2]),sd(dist1_table[1:10,3]),sd(dist1_table[1:10,4]))
sd21=c(sd(dist2_table[1:10,1]),sd(dist2_table[1:10,2]),sd(dist2_table[1:10,3]),sd(dist2_table[1:10,4]))
Normal=c(vector1,sd11)
Uniform=c(vector2,sd21)
#final table, with one row having all info about Normal distributions
#second row having info about uniform distributions
res1=rbind(Normal,Uniform)
sink("table1.txt")
print(res1)
sink()


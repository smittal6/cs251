base_dir="~/Desktop/coding/cs251/ass8/"
for(i in 1:10){
  n=rnorm(100,0.5,0.15);
  r=runif(100,0.0,1.0);
  res = cbind(n,r) 
  write.csv(res,file=paste("file",i,".txt",sep=""),append=FALSE,sep=",",eol="\n",row.names=FALSE,col.names=FALSE);
}

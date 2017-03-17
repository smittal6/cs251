base_dir="~/Desktop/coding/cs251/ass8/"
for(i in 1:10){
  f=file(paste("~/Desktop/coding/cs251/ass8/uni",i,".txt",sep=""),'w');
  #normal=rnorm(100,0.5,0.15)
  u = runif(100,0.0,1.0)
  a=cbind(u)
  cat(a,file=f)
}

library(SimCm)
rdistn<-function(x,p,n)
{  z<-c(1:n)
for (j in 1:n)
{

  y=rdist(x,p)
  z[j]=y
}
return(z)
}

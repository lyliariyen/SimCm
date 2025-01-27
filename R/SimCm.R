#' Simulation d'une chaine de markov 
#' export
#' @param y vecteur numerique représentant les etats
#' @param mu vecteur numerique représentant la distribution initial 
#' @param p matrice de transition
#' @param n nombre naturel représentant le nombre d'etapes 
SimCmd<-function(y,mu,p,n)
{
  x<-c(rep(0,n+1))
  t<-c(seq(0:n))
  x[1]<-rdist(y,mu)
  for(i in 1:n){
    x[i+1]<-rdist(y,p[x[i],])
  }
  plot(t,x,pch=8,xlim=c(0,n),ylim=c(0,length(mu)+1),col=3);
  return(x)
}
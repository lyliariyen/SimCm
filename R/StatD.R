#' les statistiques descriptives d'une loi discrete 
#' export
#' @param x numeric vector representing the values of the random variable
#' @param p numeric vector representing the probabilities
#' @param n natural number
StatD<-function(x, p,n)
{
  barplot( rdistn(x ,p ,n ) , main = " diagramme en batons", col = rep(c("palegreen3","mistyrose1","lightcoral","blueviolet"),times=10) )
  
  data.frame( mean = mean(rdistn(x ,p ,n )), var = var(rdistn(x ,p ,n )), min = min(rdistn(x ,p ,n )) , max = max(rdistn(x ,p ,n )))
}
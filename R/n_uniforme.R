#' @title Alocação uniforme
#'
#' @name  n_uniforme
#'
#' @description Alocação uniforme
#'
#' @export
n_uniforme <- function(dados, e, z){
  
  v <- (e/z)^2
  
  aux <- 0
  for (i in 1:nrow(dados)){
    
    w <- dados[i,1]/sum(dados[,1])
    
    aux <- aux + (w^2* dados[i,3])/ v
  }
  return(aux)
}
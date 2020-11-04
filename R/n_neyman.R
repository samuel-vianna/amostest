#' @title Calcula o tamanho da amostra de acordo com neyman
#'
#' @name n_neyman
#'
#' @description Calcula o tamanho da amostra de acordo com neyman
#'
#'
#' @export
n_neyman <- function(dados, e, z){
  
  v <- (e/z)^2
  
  parte1 <- 0
  for (i in 1:nrow(dados)){
    
    aux_p1 <- dados[i,1] * sqrt(dados[i,3])
    
    parte1 <- parte1 + aux_p1
    
  }
  
  aux <- (parte1)^2 / (sum(dados[,1])^2 * v)
  
  return(aux)
}
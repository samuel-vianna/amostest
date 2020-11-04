#' @title Alocação otima - custos
#'
#' @name n_custo
#'
#' @description Alocação otima - custos
#'
#' @export
n_custo <- function(dados, e, z){
  
  
  v <- (e/z)^2
  
  parte1 <- 0
  parte2 <- 0
  for (i in 1:nrow(dados)){
    
    aux_p1 <- dados[i,1] * sqrt(dados[i,3]) * sqrt(dados[i,4])
    
    aux_p2 <- ( dados[i,1] * sqrt(dados[i,3]) ) / sqrt(dados[i,4])
    
    parte1 <- parte1 + aux_p1
    
    parte2 <- parte2 + aux_p2
  }
  
  aux <- (parte1 * parte2)/ (sum(dados[,1])^2 * v)
  
  return(aux)
  
}
#' @title Calcula o tamanho da amostra total
#'
#' @name n_prop
#'
#' @description Calcula o tamanho da amostra total
#'              Para o método da partilha proporcional
#'
#' @export

n_prop <- function(dados, e, z){
  
  v <- (e/z)^2
  
  parte1 <- 0
  for (i in 1:nrow(dados)){
    
    aux_p1 <- dados[i,1] * dados[i,3]
    
    parte1 <- parte1 + aux_p1
    
  }
  
  aux <- parte1 / (sum(dados[,1]) * v)
  
  return(aux)
}
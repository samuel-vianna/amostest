#' @title Estima a variância da amostra
#'
#' @name var_estrato 
#'
#' @description Estima a variância da amostra
#'
#'
#' @export
var_estrato <- function(dados, n){
  
  aux = 0
  for (i in 1:nrow(dados)){
    w <- dados[i,1]/sum(dados[,1])
    
    aux = aux + w*dados[i,3]
  }
  aux2 = (sum(dados[,1])-n)/(sum(dados[,1])*n) * aux
  return(aux2)
}
#' @title Estima a m�dia da amostra
#'
#' @name media_estrato 
#'
#' @description Estima a m�dia da amostra
#'
#'
#' @export
media_estrato <- function(dados){
  
  aux = 0
  for (i in 1:nrow(dados)){
    w <- dados[i,1]/sum(dados[,1])
    
    aux = aux + w*dados[i,2]
  }
  return(aux)
}

#' @title Estima o tamanho total da popula��o
#'
#' @name total_estrato 
#'
#' @description Estima o tamanho total da popula��o
#'
#'
#' @export

total_estrato <- function(dados){
  
  return(sum(dados[,1])* media_estrato(dados))
}

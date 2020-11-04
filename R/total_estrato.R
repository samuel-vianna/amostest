#' @title Estima o tamanho total da população
#'
#' @name total_estrato 
#'
#' @description Estima o tamanho total da população
#'
#'
#' @export

total_estrato <- function(dados){
  
  return(sum(dados[,1])* media_estrato(dados))
}

#' @title Calcula a variância para o total da amostra
#'
#' @name var_total_estrato 
#'
#' @description Calcula a variância para o total da amostra
#'
#'
#' @export
var_total_estrato <- function(dados,n){
  
  return( (sum(dados[,1]))^2 * var_estrato(dados,n) )
}
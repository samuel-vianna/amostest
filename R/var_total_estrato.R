#' @title Calcula a vari�ncia para o total da amostra
#'
#' @name var_total_estrato 
#'
#' @description Calcula a vari�ncia para o total da amostra
#'
#'
#' @export
var_total_estrato <- function(dados,n){
  
  return( (sum(dados[,1]))^2 * var_estrato(dados,n) )
}